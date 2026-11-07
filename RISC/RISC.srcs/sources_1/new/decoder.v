`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2026 10:56:33 PM
// Design Name: 
// Module Name: decoder
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


module instruction_decoder (
    input             clk,
    input      [15:0] instruction,   // [15:9] opcode, [8:6] DR, [5:3] SA, [2:0] SB

    output reg [2:0] DA,             // destination register address
    output reg [2:0] AA,             // A source register address
    output reg [2:0] BA,             // B source register address
    output reg       MB,             // mux B select
    output reg [3:0] FS,             // function select
    output reg       MD,             // mux D select
    output reg       RW,             // register write
    output reg       MW,             // memory write
    output reg       PL,             // PC load
    output reg       JB,             // jump/branch select
    output reg       BC              // branch condition
);

    always @(posedge clk) begin
        // Direct connections from the instruction fields
        DA <= instruction[8:6];      // DR
        AA <= instruction[5:3];      // SA
        BA <= instruction[2:0];      // SB
        FS <= instruction[12:9];
        MB <= instruction[15];
        MD <= instruction[13];
        JB <= instruction[13];
        BC <= instruction[9];

        RW <= ~instruction[14];
        MW <= ~instruction[15] & instruction[14];
        PL <=  instruction[15] & instruction[14];
    end

endmodule
