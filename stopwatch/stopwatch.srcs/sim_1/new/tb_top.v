`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2026 13:26:17 PM
// Design Name: 
// Module Name: tb_top
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


module tb_top();

    input board_clk,
    input on_switch,
    input blink_switch,
    input reset,
    output [7:0] sev_seg_leds,
    output [3:0] led_enable,
    output [3:0] led_disable


    stopwatchTOP uut( .A(A), .B(B), .Cout(Cout), .S(Sum), .E(E) );
    
    initial begin
    A = 4'b0000;
    B = 4'b0000;
    E = 1'b0;
    #100;
    
    A = 4'b0001;
    B = 4'b0000;
    E = 1'b0;
    #100;
    
    A = 4'b1010;
    B = 4'b0101;
    E = 1'b0;
    #100;
    
    A = 4'b1111;
    B = 4'b0111;
    E = 1'b0;
    #100;
    
    A = 4'b1000;
    B = 4'b0001;
    E = 1'b1;
    #100;
    
    A = 4'b0000;
    B = 4'b0001;
    E = 1'b1;
    #100;
    
    A = 4'b0011;
    B = 4'b0001;
    E = 1'b0;
    #100;   
    
    A = 4'b0101;
    B = 4'b0101;
    E = 1'b1;
    #100;
    
    A = 4'b0111;
    B = 4'b1111;
    E = 1'b1;
    #100;  
    
    end
endmodule
