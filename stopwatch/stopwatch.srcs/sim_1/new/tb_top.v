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


    // ---------------- DUT I/O ----------------
    reg        clk = 0;
    reg        clr_n = 1;
    reg        btn_start = 0;
    reg        sw_blink = 0;
    wire [7:0] an;
    wire [6:0] seg;
    wire       dp;

    stopwatch  uut (
        .clk      (clk),
        .clr_n    (clr_n),
        .btn_start(btn_start),
        .sw_blink (sw_blink),
        .an       (an),
        .seg      (seg),
        .dp       (dp)
    );
    
    
endmodule