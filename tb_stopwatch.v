`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2026 01:46:15 PM
// Design Name: 
// Module Name: tb_stopwatch
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

// testbench for lab 3 stopwatch
// using small divider values so the sim doesnt take forever
// (1 tenth = 20 clocks, digit refresh = 2 clocks, blink half period = 50 clocks)

module tb_stopwatch;

    reg clk = 0;
    reg clr_n = 0;
    reg btn_start = 0;
    reg sw_blink = 0;
    wire [7:0] an;
    wire [6:0] seg;
    wire dp;

    stopwatch #(
        .REFRESH_LIM(0),
        .TENTH_LIM(9),
        .BLINK_LIM(49),
        .DB_MAX(4)
    ) uut (
        .clk(clk),
        .clr_n(clr_n),
        .btn_start(btn_start),
        .sw_blink(sw_blink),
        .an(an),
        .seg(seg),
        .dp(dp)
    );

    always #5 clk = ~clk;  // 100MHz

    wire [15:0] time_val = {uut.min, uut.sec10, uut.sec1, uut.tenth};

    integer errors = 0;
    integer blanks;
    integer i;
    reg [15:0] saved;

    // press and release the start button
    task press;
        begin
            btn_start = 1;
            repeat (10) @(posedge clk);
            btn_start = 0;
            repeat (10) @(posedge clk);
        end
    endtask

    // count how many clocks the display is off
    task count_blanks;
        begin
            blanks = 0;
            for (i = 0; i < 200; i = i + 1) begin
                @(negedge clk);
                if (an == 8'hFF)
                    blanks = blanks + 1;
            end
        end
    endtask

    task check(input ok, input [8*40-1:0] msg);
        begin
            if (ok)
                $display("%0d ns  PASS  %0s   time = %h", $time, msg, time_val);
            else begin
                $display("%0d ns  FAIL  %0s   time = %h", $time, msg, time_val);
                errors = errors + 1;
            end
        end
    endtask

    initial begin
        // test 1: clear at start
        #103 clr_n = 1;
        repeat (20) @(posedge clk);
        check(time_val == 16'h0000, "reset to 0.00.0");

        // test 2: should not count before start is pressed
        repeat (200) @(posedge clk);
        check(time_val == 16'h0000, "no count before start");

        // test 3: start, let it run, then pause
        press;
        repeat (740) @(posedge clk);
        check(time_val != 16'h0000, "counting after start");
        press;
        saved = time_val;
        repeat (400) @(posedge clk);
        check(time_val == saved, "stays same when paused");

        // test 4: blink on while paused -> should blink
        sw_blink = 1;
        count_blanks;
        check(blanks > 50 && blanks < 150, "blinks when paused");

        // test 5: blink on but running -> should not blink
        press;
        count_blanks;
        check(blanks == 0, "no blink when running");

        // test 6: blink off and paused -> no blink
        sw_blink = 0;
        press;
        count_blanks;
        check(blanks == 0, "no blink with switch off");

        // test 7: run until 9.59.9 and check it goes back to 0
        press;
        wait (time_val == 16'h9599);
        check(1, "got to 9.59.9");
        wait (time_val == 16'h0000);
        check(1, "rolled over to 0.00.0");
        repeat (300) @(posedge clk);
        check(time_val != 16'h0000, "still counting after rollover");

        // test 8: clear while running, should clear right away (async)
        @(posedge clk);
        #2 clr_n = 0;
        #1 check(time_val == 16'h0000 && uut.running == 0, "async clear while running");
        repeat (5) @(posedge clk);
        #3 clr_n = 1;
        repeat (200) @(posedge clk);
        check(time_val == 16'h0000, "stopped after clear");

        // test 9: clear while paused and blinking
        press;
        repeat (240) @(posedge clk);
        press;
        sw_blink = 1;
        repeat (100) @(posedge clk);
        #3 clr_n = 0;
        repeat (5) @(posedge clk);
        #3 clr_n = 1;
        count_blanks;
        check(time_val == 16'h0000 && blanks > 0, "clear while paused/blinking");

        // test 10: clear while running with blink on
        press;
        repeat (240) @(posedge clk);
        @(posedge clk);
        #2 clr_n = 0;
        #1 check(time_val == 16'h0000 && uut.running == 0, "async clear while running, blink on");
        repeat (5) @(posedge clk);
        #3 clr_n = 1;

        $display("done - %0d errors", errors);
        $finish;
    end

endmodule

