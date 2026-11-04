`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2026 02:00:55 PM
// Design Name: 
// Module Name: Register_File
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


module Register_File(
    input clk,
    input [15:0] data_path,
    input read_write,
    input [3:0] D_address,
    input [3:0] A_address,
    input [3:0] B_address,
    output [15:0] A_out,
    output [15:0] B_out
    );
    
    reg [15:0] registers [0:15];
          
    assign A_out = (A_address == 4'd0) ? 16'b0 : registers[A_address];
    assign B_out = (B_address == 4'd0) ? 16'b0 : registers[B_address];
    
    always@(posedge clk) begin
         if(!read_write && (D_address != 4'd0)) begin
            registers[D_address] <= data_path;
         end
    end
endmodule
