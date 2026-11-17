`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 11/04/2026 10:56:33 PM
// Design Name:
// Module Name: decoder
// Project Name: ECE 414 Final Project
// Target Devices:
// Tool Versions:
// Description: Instruction decoder (EX stage). Turns the 16-bit IR into the
//              control word used by myCPU.
//
//              Instruction format:
//              [15:12] opcode, [11:8] Rd / Rs(branch), [7:4] Rs / offset, [3:0] Rt
//
//              Control signal polarities (matched to the existing datapath):
//                MB : 1 = Register B,  0 = immediate          (myCPU mux_B_out)
//                MA : 0 = Register A,  1 = PC + 1 (JAL only)  (see note in myCPU)
//                MD : 1 = F (FU),      0 = data_from_ram      (myCPU mux_D_out)
//                RW : 0 = write,       1 = no write           (Register_File uses !read_write)
//                MW : 1 = write RAM,   0 = no write
//                PL : 1 = load PC from Branch_Control (branch / jump instr.)
//
//              Branch_Control codes {JB, BC, Z, MA}:
//                BIZ : JB=0 BC=0 MA=0  -> BrA if Z
//                BNZ : JB=0 BC=1 MA=0  -> BrA if !Z
//                JR  : JB=1 BC=0 MA=0  -> Rsa
//                JAL : JB=1 BC=0 MA=1  -> BrA
//                JMP : JB=1 BC=1 MA=0  -> BrA
//
// Dependencies:
//
// Revision:
// Revision 0.02 - Full ISA decode
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module Instruction_Decoder (
    input      [15:0] instruction,   // [15:12] opcode, [11:8] DR, [7:4] SA, [3:0] SB

    output reg [3:0] DA,             // destination register address
    output reg [3:0] AA,             // A source register address
    output reg [3:0] BA,             // B source register address
    output reg       MB,             // mux B select
    output reg [2:0] FS,             // function select
    output reg       MD,             // mux D select
    output reg       RW,             // register write (active low)
    output reg       MW,             // memory write
    output reg       PL,             // PC load
    output reg       JB,             // jump/branch select
    output reg       BC,             // branch condition
    output reg       MA,             // mux A select (1 = PC + 1 for JAL)
    output reg       EOE             // end of execution

);

    wire [3:0] opcode = instruction[15:12];

    always @(*) begin
        // defaults: do nothing (no register write, no memory write, no PC load)
        DA  <= instruction[11:8];
        AA  <= instruction[7:4];
        BA  <= instruction[3:0];
        MB  <= 1'b1;                 // Register B
        MA  <= 1'b0;                 // Register A
        FS  <= 3'b000;
        MD  <= 1'b1;                 // F
        RW  <= 1'b1;                 // no write
        MW  <= 1'b0;
        PL  <= 1'b0;
        JB  <= 1'b0;
        BC  <= 1'b0;
        EOE <= 1'b0;

        case (opcode)
            // ---------------- ALU: ADD SUB AND OR XOR (Rd = Rs op Rt)
            4'b0000, 4'b0001, 4'b0010, 4'b0011, 4'b0100: begin
                FS <= instruction[14:12];   // 000 ADD, 001 SUB, 010 AND, 011 OR, 100 XOR
                RW <= 1'b0;
            end

            // ---------------- NOT: Rd = ~Rs
            4'b0101: begin
                BA <= 4'b0000;
                FS <= 3'b101;
                RW <= 1'b0;
            end

            // ---------------- SLA / SRA: Rd = Rs << 1 / Rs >> 1
            // Function_Unit shifts B_in, so Rs is sent through the B port
            4'b0110, 4'b0111: begin
                AA <= 4'b0000;
                BA <= instruction[7:4];
                FS <= instruction[14:12];   // 110 SLA, 111 SRA
                RW <= 1'b0;
            end

            // ---------------- LI: Rd = R0 + immediate
            4'b1000: begin
                AA <= 4'b0000;
                MB <= 1'b0;                 // immediate
                FS <= 3'b000;
                RW <= 1'b0;
            end

            // ---------------- LW: Rd = Mem[Rs[5:0]]
            4'b1001: begin
                BA <= 4'b0000;
                MD <= 1'b0;                 // data_from_ram
                RW <= 1'b0;
            end

            // ---------------- SW: Mem[Rs[5:0]] = Rt
            4'b1010: begin
                MW <= 1'b1;
            end

            // ---------------- BIZ / BNZ: F = Rs + R0 -> Z
            4'b1011, 4'b1100: begin
                AA <= instruction[11:8];    // Rs
                BA <= 4'b0000;              // R0 = 0
                FS <= 3'b000;
                PL <= 1'b1;
                JB <= 1'b0;
                BC <= instruction[12] ? 1'b0 : 1'b1;   // 1011 BIZ -> 0, 1100 BNZ -> 1
            end

            // ---------------- JAL: Rd = PC + 1, PC = PC + 1 + offset
            4'b1101: begin
                MA <= 1'b1;                 // PC + 1
                BA <= 4'b0000;              // F = (PC + 1) + R0
                FS <= 3'b000;
                RW <= 1'b0;
                PL <= 1'b1;
                JB <= 1'b1;
                BC <= 1'b0;
            end

            // ---------------- JMP: PC = PC + 1 + offset
            4'b1110: begin
                PL <= 1'b1;
                JB <= 1'b1;
                BC <= 1'b1;
            end

            // ---------------- JR (11:8 = 0000) / EOE (11:8 = 1111)
            4'b1111: begin
                if (instruction[11:8] == 4'b1111) begin
                    EOE <= 1'b1;            // end of execution
                end
                else begin
                    AA <= instruction[7:4]; // Rs -> Rsa
                    PL <= 1'b1;
                    JB <= 1'b1;
                    BC <= 1'b0;
                end
            end

            default: begin
            end
        endcase
    end

endmodule
