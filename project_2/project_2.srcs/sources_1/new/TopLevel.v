`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2026 01:20:28 PM
// Design Name: 
// Module Name: TopLevel
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


module TopLevel(
    input [3:0] A,
    input [3:0] B,
    input E,
    input Clk,
    input rst,
    output [7:0] sev_seg_leds,
    output [4:0] led_disable,
    output [1:0] led_enable,
    output OF,
    output reg sign
    );
    
    wire [3:0] Sum;
    

    AdderSubtractor4bit AS(.A(A), .B(B), .E(E), .S(Sum), .Cout(OF));
    
    sev_seg_with_clk_top Seg(.num_1(A), .num_2(B), .num_3(Sum), .clk_main(Clk), .reset(rst), 
                             .sev_seg_leds(sev_seg_leds), .led_disable(led_disable), .led_enable(led_enable));
    always @ (posedge Clk)
    begin
        if (Sum[3] == 1)
            sign = 1;
        else
            sign = 0;
    end   
endmodule
