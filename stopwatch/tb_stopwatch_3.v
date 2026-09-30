`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// ECE 414 Lab 3 - Stopwatch testbench (step 1a / 1b)
//
// DUT     : stopwatch (stopwatch.v)  - clk, clr_n, btn_start, sw_blink -> an, seg, dp
// Purpose : exercise every input combination (clear, start/pause, blink switch)
//           and self-check the results. Prints PASS/FAIL for each test.
//
// The real design divides 100 MHz down to 10 Hz / 1 Hz / 200 Hz, which would take
// billions of clock cycles to simulate. The DUT parameters are overridden here so
// the same logic runs on a scaled time base (100 MHz clock is kept as-is):
//
//      signal         real board              in this sim
//      ------------   ---------------------   ------------------------
//      refresh tick   every 5 ms  (500,000)   every 10 clocks  (100 ns)
//      1/10 s tick    every 0.1 s (10 M)      every 20 clocks  (200 ns)
//      blink square   1 Hz        (100 M)     period 100 clocks (1 us)
//      debounce       10 ms       (1 M)       8 clocks
//
// So "1 tenth of a second" = 200 ns of sim time, and a full 9.59.9 -> 0.00.0
// rollover happens at about 1.2 ms of sim time.
// Run with: run all   (the testbench calls $finish itself)
//////////////////////////////////////////////////////////////////////////////////

module tb_stopwatch;

    // ---------------- scaled DUT parameters ----------------
    localparam REFRESH_LIM = 4;     // tick every 2*(4+1)  = 10 clocks
    localparam TENTH_LIM   = 9;     // tick every 2*(9+1)  = 20 clocks
    localparam BLINK_LIM   = 49;    // period     2*(49+1) = 100 clocks
    localparam DB_MAX      = 8;     // debounce: 8 stable clocks

    localparam CLK_PER     = 10;                    // 100 MHz
    localparam TENTH_CLKS  = 2*(TENTH_LIM+1);       // clocks per 0.1 s
    localparam REFR_CLKS   = 2*(REFRESH_LIM+1);     // clocks per digit refresh
    localparam BLINK_CLKS  = 2*(BLINK_LIM+1);       // clocks per blink period

    // ---------------- DUT I/O ----------------
    reg        clk = 0;
    reg        clr_n = 1;
    reg        btn_start = 0;
    reg        sw_blink = 0;
    wire [7:0] an;
    wire [6:0] seg;
    wire       dp;

    stopwatch #(
        .REFRESH_LIM(REFRESH_LIM),
        .TENTH_LIM  (TENTH_LIM),
        .BLINK_LIM  (BLINK_LIM),
        .DB_MAX     (DB_MAX)
    ) uut (
        .clk      (clk),
        .clr_n    (clr_n),
        .btn_start(btn_start),
        .sw_blink (sw_blink),
        .an       (an),
        .seg      (seg),
        .dp       (dp)
    );

    always #(CLK_PER/2) clk = ~clk;

    // ---------------- handy views for the waveform window ----------------
    // Add these to the wave window: they show the time as M.SS.T
    wire [3:0] t_min   = uut.min;
    wire [3:0] t_sec10 = uut.sec10;
    wire [3:0] t_sec1  = uut.sec1;
    wire [3:0] t_tenth = uut.tenth;
    wire       running = uut.running;
    wire       blanked = (an == 8'hFF);
    wire [15:0] time_bcd = {t_min, t_sec10, t_sec1, t_tenth};   // view in hex: 0x9599 = 9.59.9

    integer errors = 0;
    integer test_no = 0;

    // ---------------- helpers ----------------
    task check;
        input cond;
        input [8*64-1:0] msg;
        begin
            if (cond)
                $display("  [PASS] %0s", msg);
            else begin
                $display("  [FAIL] %0s   (t=%0t, time=%0d.%0d%0d.%0d, an=%b seg=%b)",
                         msg, $time, t_min, t_sec10, t_sec1, t_tenth, an, seg);
                errors = errors + 1;
            end
        end
    endtask

    task header;
        input [8*64-1:0] name;
        begin
            test_no = test_no + 1;
            $display("");
            $display("---- Test %0d: %0s  (t=%0t)", test_no, name, $time);
        end
    endtask

    task wait_clks;
        input integer n;
        begin
            repeat (n) @(posedge clk);
        end
    endtask

    task wait_tenths;
        input integer n;
        begin
            wait_clks(n * TENTH_CLKS);
        end
    endtask

    // time as a single number of tenths: M*600 + S10*100 + S1*10 + T
    function integer tenths_now;
        input dummy;
        begin
            tenths_now = t_min*600 + t_sec10*100 + t_sec1*10 + t_tenth;
        end
    endfunction

    // realistic button press: bounces on press and release, held long enough
    task press_button;
        begin
            @(negedge clk);
            btn_start = 1; #(2*CLK_PER);
            btn_start = 0; #(1*CLK_PER);        // bounce
            btn_start = 1; #(1*CLK_PER);
            btn_start = 0; #(2*CLK_PER);        // bounce
            btn_start = 1; #((DB_MAX+6)*CLK_PER);   // stable press
            btn_start = 0; #(1*CLK_PER);
            btn_start = 1; #(1*CLK_PER);        // release bounce
            btn_start = 0; #((DB_MAX+6)*CLK_PER);   // stable release
        end
    endtask

    // asynchronous clear pulse, deliberately not aligned to the clock
    task pulse_clear;
        begin
            @(posedge clk); #3;
            clr_n = 0;
            #1;
            check(an == 8'hFF && seg == 7'h7F && dp == 1'b1,
                  "outputs blanked asynchronously (1 ns after clr_n fell, no clock edge)");
            check(tenths_now(0) == 0, "counters cleared asynchronously");
            #(5*CLK_PER + 4);
            clr_n = 1;
            wait_clks(4);   // reset release is synchronized (2 FFs)
        end
    endtask

    // count clocks where the whole display is blank over a window
    task count_blank;
        input  integer window;
        output integer nblank;
        integer i;
        begin
            nblank = 0;
            for (i = 0; i < window; i = i + 1) begin
                @(negedge clk);
                if (an == 8'hFF) nblank = nblank + 1;
            end
        end
    endtask

    // ---------------- display scoreboard (runs all the time) ----------------
    // Checks the multiplexed outputs every clock: exactly one of an[3:0] low,
    // an[7:4] always off, seg matches the digit selected, dp on the right digits.
    // Outputs are registered, so compare against values the DUT saw before the edge.
    function [6:0] seg_of;
        input [3:0] d;
        begin
            case (d)
                0: seg_of = 7'b1000000;  1: seg_of = 7'b1111001;
                2: seg_of = 7'b0100100;  3: seg_of = 7'b0110000;
                4: seg_of = 7'b0011001;  5: seg_of = 7'b0010010;
                6: seg_of = 7'b0000010;  7: seg_of = 7'b1111000;
                8: seg_of = 7'b0000000;  9: seg_of = 7'b0010000;
                default: seg_of = 7'b1111111;
            endcase
        end
    endfunction

    reg [1:0] sel_d;
    reg [3:0] dig_d [0:3];
    reg       blank_d, rst_d;
    reg       scoreboard_on = 0;
    integer   mux_errors = 0;
    integer   pos_seen [0:3];
    integer   k;
    initial for (k = 0; k < 4; k = k + 1) pos_seen[k] = 0;

    always @(posedge clk) begin
        sel_d    <= uut.sel;
        dig_d[0] <= uut.tenth;
        dig_d[1] <= uut.sec1;
        dig_d[2] <= uut.sec10;
        dig_d[3] <= uut.min;
        blank_d  <= uut.blank;
        rst_d    <= uut.rst;
    end

    always @(negedge clk) begin
        if (scoreboard_on && !rst_d && !uut.rst) begin
            if (an[7:4] != 4'hF) begin
                mux_errors = mux_errors + 1;
                if (mux_errors < 5) $display("  [MUX] unused digits an[7:4] turned on at t=%0t", $time);
            end
            if (blank_d) begin
                if (an[3:0] != 4'hF) begin
                    mux_errors = mux_errors + 1;
                    if (mux_errors < 5) $display("  [MUX] display should be blank at t=%0t", $time);
                end
            end
            else begin
                if (an[3:0] != ~(4'b0001 << sel_d)) begin
                    mux_errors = mux_errors + 1;
                    if (mux_errors < 5) $display("  [MUX] wrong anode %b for sel=%0d at t=%0t", an[3:0], sel_d, $time);
                end
                if (seg != seg_of(dig_d[sel_d])) begin
                    mux_errors = mux_errors + 1;
                    if (mux_errors < 5) $display("  [MUX] seg=%b but digit %0d shows %0d at t=%0t", seg, sel_d, dig_d[sel_d], $time);
                end
                // decimal point after minutes (pos 3) and after seconds (pos 1): M.SS.T
                if (dp != ~(sel_d == 2'd1 || sel_d == 2'd3)) begin
                    mux_errors = mux_errors + 1;
                    if (mux_errors < 5) $display("  [MUX] dp wrong on digit %0d at t=%0t", sel_d, $time);
                end
                pos_seen[sel_d] = pos_seen[sel_d] + 1;
            end
        end
    end

    // ---------------- main test sequence ----------------
    integer t_hold, t0, t1, nb, i, per, cnt;
    reg [3:0] an_prev;
    integer run_i, sw_i;

    initial begin
        $timeformat(-9, 0, " ns", 0);
        $display("==============================================================");
        $display(" ECE 414 Lab 3 stopwatch testbench");
        $display("   1 tenth = %0d clocks, refresh = %0d clocks, blink period = %0d clocks",
                 TENTH_CLKS, REFR_CLKS, BLINK_CLKS);
        $display("==============================================================");

        // ---------------------------------------------------------------
        header("Power-up with clear held (clr_n = 0)");
        clr_n = 0; btn_start = 0; sw_blink = 0;
        wait_clks(10);
        check(an == 8'hFF, "all anodes off during clear");
        check(tenths_now(0) == 0 && !running, "time = 0.00.0 and stopped");
        clr_n = 1;
        wait_clks(5);
        scoreboard_on = 1;

        // ---------------------------------------------------------------
        header("Idle after clear: stays at 0.00.0 until start is pressed");
        wait_tenths(5);
        check(tenths_now(0) == 0 && !running, "no counting without start");

        // ---------------------------------------------------------------
        header("Button glitch shorter than debounce time is ignored");
        @(negedge clk); btn_start = 1; #((DB_MAX-3)*CLK_PER); btn_start = 0;
        wait_clks(DB_MAX*3);
        check(!running, "short glitch did not start the stopwatch");

        // ---------------------------------------------------------------
        header("Start (bouncy press) - counts 1/10 s accurately");
        press_button;
        check(running, "press toggled to RUN (bounces filtered, only one toggle)");
        t0 = tenths_now(0);
        wait_tenths(25);
        t1 = tenths_now(0);
        check((t1 - t0) == 25, "exactly 25 tenths counted in 25 tenth-periods");
        $display("         time now %0d.%0d%0d.%0d", t_min, t_sec10, t_sec1, t_tenth);

        // ---------------------------------------------------------------
        header("Pause - time freezes");
        press_button;
        check(!running, "press toggled to PAUSE");
        t0 = tenths_now(0);
        wait_tenths(15);
        check(tenths_now(0) == t0, "time held while paused");

        // ---------------------------------------------------------------
        header("Resume - continues from the held value, no lost time");
        press_button;
        check(running, "press toggled back to RUN");
        t0 = tenths_now(0);
        wait_tenths(12);
        check(tenths_now(0) - t0 == 12, "resumed and counted 12 more tenths");

        // ---------------------------------------------------------------
        header("Seconds -> tens of seconds -> minutes carries");
        wait (t_sec1 == 9 && t_tenth == 9);
        @(posedge uut.tick_10hz); @(posedge clk); @(negedge clk);
        check(t_tenth == 0 && t_sec1 == 0, "x.x9.9 -> x.x0.0 carries into tens of seconds");
        wait (t_sec10 == 5 && t_sec1 == 9 && t_tenth == 9);
        t0 = t_min;
        @(posedge uut.tick_10hz); @(posedge clk); @(negedge clk);
        check(t_sec10 == 0 && t_sec1 == 0 && t_tenth == 0 && t_min == t0 + 1,
              "x.59.9 -> (x+1).00.0 (seconds roll at 60)");

        // ---------------------------------------------------------------
        header("Rollover 9.59.9 -> 0.00.0");
        wait (t_min == 9 && t_sec10 == 5 && t_sec1 == 9 && t_tenth == 9);
        check(1'b1, "reached 9.59.9");
        @(posedge uut.tick_10hz); @(posedge clk); @(negedge clk);
        check(tenths_now(0) == 0, "rolled over to 0.00.0");
        check(running, "keeps running after rollover");
        wait_tenths(3);

        // ---------------------------------------------------------------
        header("Asynchronous clear while running");
        pulse_clear;
        check(!running, "clear stops the stopwatch");
        wait_tenths(3);
        check(tenths_now(0) == 0, "stays at 0.00.0 after clear");

        // ---------------------------------------------------------------
        header("Start pressed while clear is held is ignored");
        clr_n = 0;
        press_button;
        check(!running && tenths_now(0) == 0, "no start while clr_n = 0");
        clr_n = 1;
        wait_clks(4);

        // ---------------------------------------------------------------
        header("Blink switch ON while RUNNING - no blinking");
        sw_blink = 1;
        press_button;                         // start
        count_blank(3*BLINK_CLKS, nb);
        check(nb == 0, "display never blank while running");

        // ---------------------------------------------------------------
        header("Blink switch ON while PAUSED - display blinks at 1 Hz (scaled)");
        press_button;                         // pause
        t_hold = tenths_now(0);
        count_blank(4*BLINK_CLKS, nb);
        $display("         blank for %0d of %0d clocks", nb, 4*BLINK_CLKS);
        check(nb >= 4*BLINK_CLKS/2 - 4 && nb <= 4*BLINK_CLKS/2 + 4,
              "display blank ~50% of the time (square wave)");
        // measure blink period from one blank-start to the next
        wait (an != 8'hFF); wait (an == 8'hFF); t0 = $time;
        wait (an != 8'hFF); wait (an == 8'hFF); t1 = $time;
        per = (t1 - t0) / CLK_PER;
        $display("         blink period = %0d clocks (expect %0d)", per, BLINK_CLKS);
        check(per == BLINK_CLKS, "blink period correct (1 Hz on the board)");
        check(tenths_now(0) == t_hold && !running, "time still held while blinking");

        // ---------------------------------------------------------------
        header("Blink switch OFF while PAUSED - steady display");
        sw_blink = 0;
        wait_clks(4);
        count_blank(3*BLINK_CLKS, nb);
        check(nb == 0, "no blinking with switch off");

        // ---------------------------------------------------------------
        header("Clear while PAUSED with blink ON");
        sw_blink = 1;
        wait_clks(BLINK_CLKS);
        pulse_clear;
        check(!running && tenths_now(0) == 0, "cleared to 0.00.0, stopped");
        sw_blink = 0;

        // ---------------------------------------------------------------
        header("Display refresh rate (5 ms per digit on the board)");
        press_button;
        wait (an[3:0] == 4'b1110);
        @(negedge clk);
        an_prev = an[3:0]; per = 0; cnt = 0; i = 0;
        while (i < 4) begin
            @(negedge clk);
            per = per + 1;
            if (an[3:0] != an_prev) begin
                $display("         an = %b -> %b after %0d clocks", an_prev, an[3:0], per);
                if (per == REFR_CLKS) cnt = cnt + 1;
                an_prev = an[3:0]; per = 0; i = i + 1;
            end
        end
        check(cnt == 4, "each digit enabled for exactly one refresh period");

        // ---------------------------------------------------------------
        header("Exhaustive input combinations: clr_n x run/pause x sw_blink");
        // For every combination we check: counting?  blinking?  cleared?
        for (run_i = 0; run_i < 2; run_i = run_i + 1)
        for (sw_i = 0; sw_i < 2; sw_i = sw_i + 1) begin
            // put the stopwatch in the wanted run state from a clean start
            pulse_clear;
            if (run_i) press_button; else begin press_button; wait_tenths(4); press_button; end
            sw_blink = sw_i;
            wait_clks(4);

            // clr_n = 1
            t0 = tenths_now(0);
            count_blank(2*BLINK_CLKS, nb);
            t1 = tenths_now(0);
            $display("  clr_n=1 run=%0d blink=%0d : advanced %0d tenths, blank %0d clocks",
                     run_i, sw_i, t1-t0, nb);
            check(run_i ? (t1 > t0) : (t1 == t0),        "  counting matches run state");
            check((run_i == 0 && sw_i == 1) ? (nb > 0) : (nb == 0), "  blinking only when paused + switch on");

            // clr_n = 0 (held)
            @(negedge clk); clr_n = 0;
            count_blank(BLINK_CLKS, nb);
            $display("  clr_n=0 run=%0d blink=%0d : time %0d, blank %0d clocks",
                     run_i, sw_i, tenths_now(0), nb);
            check(tenths_now(0) == 0 && !running && nb == BLINK_CLKS, "  held in clear: 0, stopped, display off");
            clr_n = 1;
            wait_clks(4);
        end
        sw_blink = 0;

        // ---------------------------------------------------------------
        header("Display multiplexing scoreboard (checked every clock)");
        $display("         digit positions shown: tenth=%0d sec1=%0d sec10=%0d min=%0d clocks",
                 pos_seen[0], pos_seen[1], pos_seen[2], pos_seen[3]);
        check(mux_errors == 0, "anodes, segments and decimal points always correct");
        check(pos_seen[0] > 0 && pos_seen[1] > 0 && pos_seen[2] > 0 && pos_seen[3] > 0,
              "all four digits were displayed");

        // ---------------------------------------------------------------
        $display("");
        $display("==============================================================");
        if (errors == 0) $display(" ALL TESTS PASSED  (%0d tests, sim time %0t)", test_no, $time);
        else             $display(" %0d CHECK(S) FAILED", errors);
        $display("==============================================================");
        $finish;
    end

    // safety net in case something hangs in a wait()
    initial begin
        #5_000_000;
        $display("TIMEOUT - simulation ran too long");
        $finish;
    end

endmodule