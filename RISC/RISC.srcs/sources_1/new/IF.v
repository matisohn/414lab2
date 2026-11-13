`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2026 08:54:09 PM
// Design Name: 
// Module Name: IF
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


module IF(
    input Z_in,
    input JB_in,
    input BC_in,
    input MA_in,
    input [15:0] PC_plus_one_in,
    input [15:0] BrA_in,
    input [15:0] Rsa,
    output enable_to_rom,
    output [5:0] address_to_rom,
    output [5:0] PC_plus_one_out,
    input clk,
    input reset
    );
endmodule
