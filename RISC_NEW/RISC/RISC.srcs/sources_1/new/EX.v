`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2026 08:57:26 PM
// Design Name: 
// Module Name: EX
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


module EX(
    input clk,
    input reset,
    input [16:0] instruction_in,
    input [5:0] PC_minus_one_in,
    input [15:0] data_from_ram,
    output write_enable_to_ram,
    output read_enable_to_ram,
    output [5:0] address_to_ram_from_cpu,
    output enable_ram_read,
    output [15:0] BrA_out,
    output [15:0] Ras_out,
    output [15:0] PC_minus_one_out,
    output [3:0] branch_control_codes // {JB, BC, Z, MA}
    
    );
endmodule
