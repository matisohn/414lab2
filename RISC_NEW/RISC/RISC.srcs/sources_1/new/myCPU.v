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
    
    // pipelined registers
    reg [5:0] PC = 6'd0;
    reg [15:0] IR = 16'd0, PC_minus1_reg = 16'd0;
    
    // internal connections
    wire [5:0] PC_plus1, PC_minus1;                                 // program counter wires
    wire [15:0] program_count;                                      // IF
    wire [21:0] control_word;                                       // EX
    wire [7:0] immediate;                                           // EX
    wire [15:0] filled_immediate, A_data_out, B_data_out, F_out;    // EX
    wire [15:0] mux_A_out, mux_B_out, mux_D_out;                    // EX - data path
    wire Z; 
    
    // IF
    assign branch_control_codes = {control_word[1], control_word[0], Z, control_word[8]};   // {JB, BC, Z, MA}
    Branch_Control bc(clk, reset, branch_control_codes, PC_plus_one_in,
                       BrA_in, Rsa_in, program_count);    
    
    assign address_to_rom = PC;
    
    // EX
    Instruction_Decoder id(.instruction(IR),          // control word is broken down as shown below
                           .DA(control_word[21:18]),
                           .AA(control_word[17:14]),
                           .BA(control_word[13:10]),
                           .MB(control_word[9]),
                           .MA(control_word[8]),
                           .FS(control_word[7:5]),
                           .MD(control_word[4]),
                           .RW(control_word[3]),
                           .MW(control_word[2]),
                           .JB(control_word[1]),
                           .BC(control_word[0]));

    Register_File rf(.clk(clk),
                     .data_path(mux_D_out),
                     .read_write(control_word[3]),
                     .D_address(control_word[21:18]),
                     .A_address(control_word[17:14]),
                     .B_address(control_word[13:10]),
                     .A_out(A_data_out),
                     .B_out(B_data_out));
    
    // Zero Fill
    wire [15:0] PC_minus1_zf = {8'd0, PC_minus1};
    wire [15:0] offset_immediate = {8'd0, IR[7:0]};
    
    // Data Path MUXes
    assign mux_A_out = control_word[8] ? A_data_out : PC_minus1_zf;
    assign mux_B_out = control_word[9] ? B_data_out : offset_immediate;
    assign mux_D_out = control_word[4] ? F_out : data_from_ram;

    Function_Unit fu(.A_in(mux_A_out),
                     .B_in(mux_B_out),
                     .FS(control_word[7:5]),
                     .F(F_out),
                     .Z(Z));
     
    
    always @(posedge clk) begin
        if (reset) begin
            PC <= 0;
            IR <= 0;
            PC_minus1_reg <= 0;
        end
            PC <= program_count;
            IR <= data_from_rom;
            PC_minus1_reg <= PC + 1;
    end
    
endmodule
