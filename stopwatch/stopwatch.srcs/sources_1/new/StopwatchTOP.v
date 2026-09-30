`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2026 12:16:04 PM
// Design Name: 
// Module Name: StopwatchTOP
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


module StopwatchTOP(
    input board_clk,
    input on_switch,
    input blink_switch,
    input reset,
    output [7:0] sev_seg_leds,
    output [3:0] led_enable,
    output [3:0] led_disable

    );
    
    
    // Instantiation of the clock generator from IP Core Generator
    wire clk_5MHz;
// Instantiation of the clock generator from IP Core Generator
	ip_clock_div_top clk_5M(				// generated core to obtain a slower clk of 5MHz from onboard 100 MHz oscillator.
	   .clk_in1(board_clk),      	// we assign the external 100 MHz clock to clk_main
	   .clk_out1(clk_5MHz));    	// we assign the generated 5 MHz clock to clk_slw

    wire msCLK, secCLK, minCLK;
    // 10 HZ clock comes out (ms)
    get_clk ms_get_clk(
                        .clk_slw(clk_5MHz),
                        .reset(reset), 
                        .stop(1'b0), 
                        .limit(250000), 
                        .clk_out(msCLK));
                        
    //  1 HZ clock comes out (s)
    get_clk #(3) sec_get_clk(
                    .clk_slw(msCLK),
                    .reset(reset), 
                    .stop(1'b0), 
                    .limit(5), 
                    .clk_out(secCLK));
                    
    // 1/10 HZ clock comes out    
    get_clk #(3) sec2_get_clk(
                    .clk_slw(secCLK),
                    .reset(reset), 
                    .stop(1'b0), 
                    .limit(5), 
                    .clk_out(tenSecCLK));
    
    // 1/60 HZ clock comes out (min)     
    get_clk #(5) min_get_clk(
                .clk_slw(secCLK),
                .reset(reset), 
                .stop(1'b0), 
                .limit(30), 
                .clk_out(minCLK));

    
    // GET DIGITS 
    wire [3:0] msDigit, secDigit1, secDigit10s, minDigit;
    wire tenthsSec;
    get_digit ms_digit(
                .clk(msCLK),
                .rst(reset),
                .digit(msDigit),
                .carry());
    
    get_digit sec_digit1(
            .clk(secCLK),
            .rst(reset),
            .digit(secDigit1),
            .carry());

    get_digit #(6) sec_digit2(
            .clk(tenSecCLK),
            .rst(reset),
            .digit(secDigit2),
            .carry());
            
    get_digit min_digit(
            .clk(minCLK),
            .rst(reset),
            .digit(minDigit),
            .carry());
            
    // DISPLAY
    sev_seg_with_clk_top display(
            .num_1(msDigit),
            .num_2(secDigit1),
            .num_3(secDigit2),
            .num_4(minDigit),
            .clk_main(clk_5MHz),
            .reset(reset),
            .sev_seg_leds(sev_seg_leds),
            .led_disable(led_disable),
            .led_enable(led_enable)
    );
    
endmodule
