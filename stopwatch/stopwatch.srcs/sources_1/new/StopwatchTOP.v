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
    wire msCLK;
    wire secCLK;
    wire tenSecCLK;
    wire minCLK;
    
    wire [3:0] msDigit;
    wire [3:0] secDigit1;
    wire [3:0] secDigit2;
    wire [3:0] minDigit;

// Instantiation of the clock generator from IP Core Generator
	ip_clock_div_top clk_5M(				// generated core to obtain a slower clk of 5MHz from onboard 100 MHz oscillator.
	   .clk_in1(board_clk),      	// we assign the external 100 MHz clock to clk_main
	   .clk_out1(clk_5MHz));    	// we assign the generated 5 MHz clock to clk_slw


    // 10 HZ clock comes out (ms)
    get_clk ms_get_clk(
                        .clk_slw(clk_5MHz),
                        .reset(reset), 
                        .stop(on_switch), 
                        .limit(18'd250000), 
                        .clk_out(msCLK));
    get_digit #(4) ms_digit(
                        .clk(msCLK),
                        .rst(reset),
                        .digit(msDigit),
                        .limit(9));    //  1 HZ clock comes out (s)
                        
                        
    get_clk #(3) sec_get_clk(
                    .clk_slw(msCLK),
                    .reset(reset), 
                    .stop(on_switch), 
                    .limit(3'd5), 
                    .clk_out(secCLK));
    get_digit #(4) sec_digit1(
                    .clk(secCLK),
                    .rst(reset),
                    .digit(secDigit1),
                    .limit(9));  
                                      
    // 1/10 HZ clock comes out    
    get_clk #(3) sec2_get_clk(
                    .clk_slw(secCLK),
                    .reset(reset), 
                    .stop(on_switch), 
                    .limit(3'd5), 
                    .clk_out(tenSecCLK));
    get_digit #(3) sec_digit2(
                    .clk(tenSecCLK),
                    .rst(reset),
                    .digit(secDigit2),
                    .limit(3'd5));
                    
    // 1/60 HZ clock comes out (min)     
    get_clk #(2) min_get_clk(
                    .clk_slw(tenSecCLK),
                    .reset(reset), 
                    .stop(on_switch), 
                    .limit(2'd3), 
                .clk_out(minCLK));
    get_digit #(4) min_digit(
                    .clk(minCLK),
                    .rst(reset),
                    .digit(minDigit),
                    .limit(9));    
    // GET DIGITS 

    
    
            


            
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
