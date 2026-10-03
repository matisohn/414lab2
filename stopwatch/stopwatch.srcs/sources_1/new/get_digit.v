`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2026 05:02:22 PM
// Design Name: 
// Module Name: get_digit
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


module get_digit (
    input clk,
    input rst,
    input [NBIT-1:0] limit,
    output reg [3:0] digit
    );
    
    parameter NBIT = 9;
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            digit <= 4'b0000;
        end else begin
            if (digit == limit)begin
                digit <= 4'b0000;
            end else begin  
                digit <= digit + 1'b1;
            end
        end
    end
endmodule
