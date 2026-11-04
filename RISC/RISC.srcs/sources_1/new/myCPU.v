`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2026 12:44:48 PM
// Design Name: 
// Module Name: myCPU
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


module myCPU(
    input [15:0] data_from_rom,
    input reset,
    input clk,
    input [15:0] data_from_ram,
    output [5:0] address_to_rom,
    output enable_to_rom,
    output write_enable_to_ram,
    output [5:0] address_to_ram,
    output read_enable_to_ram,
    output [15:0] data_to_ram,
    output enable_ram_read
    );
endmodule
