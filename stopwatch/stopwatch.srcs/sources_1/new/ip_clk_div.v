`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2026 04:00:51 PM
// Design Name: 
// Module Name: ip_clk_div
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


module ip_clk_div(
    input wire clk_in1,
    input wire rst,
    output reg clk_out1
    );
    
    reg [3:0] count;

    always @(posedge clk_in1) begin
        if (rst) begin
            count   <= 4'd0;
            clk_out1 <= 1'b0;
        end else if (count == 4'd9) begin
            count   <= 4'd0;
            clk_out1 <= ~clk_out1;
        end else begin
            count <= count + 1'b1;
        end
    end
    
endmodule
