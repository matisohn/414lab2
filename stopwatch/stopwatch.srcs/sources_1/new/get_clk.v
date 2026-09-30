`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2026 01:34:39 PM
// Design Name: 
// Module Name: get_clk
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


module get_clk #(parameter NBIT = 18)(
    input clk_slw,
    input reset,
    input stop,
    input [NBIT-1:0] limit,
    output reg clk_out
    );
    reg [NBIT-1:0] clk_counter;
    
    always @(posedge clk_slw) begin   
        if (reset) begin
            clk_counter <= 0;
            clk_out <= 1;
        end
        else if (stop) begin
            clk_counter <= clk_counter;
            clk_out <= clk_out;
        end
        else if (clk_counter == limit) begin
            clk_counter <= 0;
            clk_out <= ~clk_out;
        end
        else begin
            clk_counter <= clk_counter + 1;
            clk_out <= clk_out;
        end
    end
endmodule
    

