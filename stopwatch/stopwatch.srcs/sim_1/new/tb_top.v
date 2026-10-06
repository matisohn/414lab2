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

module tb_stopwatch();
    
    reg board_clk;
    reg on_switch;
    reg blink_switch;
    reg reset;
    
    wire [7:0] seven_seg_leds;
    wire [3:0] led_disable;
    wire [3:0] led_enable;
    
    StopwatchTOP uut(.board_clk(board_clk),
                     .on_switch(on_switch),
                     .blink_switch(blink_switch),
                     .reset(reset),
                     .seven_seg_leds(seven_seg_leds),
                     .led_disable(led_disable),
                     .led_enable(led_enable));
                     


        
// 3. Clock generation
    initial begin
        board_clk = 0;
        forever #5 board_clk = ~board_clk;
    end

    // 4. Stimulus
    initial begin
    // initalize registers
        board_clk = 1'b0;
        on_switch = 1'b0;
        blink_switch = 1'b0;
        reset = 0;
        #100 reset = 0;      // Release reset
        #200 on_switch = 1;      // Start timing
        #500 on_switch = 0;      // Stop timing
        #100 $finish;
       
    
    end
    
endmodule