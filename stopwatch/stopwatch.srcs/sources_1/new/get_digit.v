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


module get_digit #(parameter MAX = 9) (
    input clk,
    input rst,
    output reg [3:0] digit,
    output reg carry
    );
    
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            digit <= 0;
            carry <= 0;
        end else begin
            if (digit == MAX)begin
                digit <= 0;
                carry <= 1;
            end else begin  
                digit <= digit + 1;
                carry <= 0;
            end
        end
    end
endmodule
