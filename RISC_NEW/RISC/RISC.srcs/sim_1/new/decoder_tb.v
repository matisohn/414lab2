`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 11/17/2026 03:10:00 PM
// Design Name:
// Module Name: decoder_tb
// Project Name: ECE 414 Final Project
// Target Devices:
// Tool Versions:
// Description: Self-checking testbench for Instruction_Decoder.
//              Applies one instruction of every opcode (plus JR / EOE) and
//              compares the control word against the expected values.
//
//              Expected word layout (same order as the decoder ports):
//              {DA[3:0], AA[3:0], BA[3:0], MB, FS[2:0], MD, RW, MW, PL, JB, BC, MA, EOE}
//              x = don't care (not checked)
//
// Dependencies: decoder.v
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module decoder_tb;

    // inputs
    reg  [15:0] instruction;

    // outputs
    wire [3:0] DA, AA, BA;
    wire       MB;
    wire [2:0] FS;
    wire       MD, RW, MW, PL, JB, BC, MA, EOE;

    // packed control word for checking
    wire [25:0] control_word = {DA, AA, BA, MB, FS, MD, RW, MW, PL, JB, BC, MA, EOE};

    integer errors = 0;
    integer tests  = 0;

    Instruction_Decoder uut(.instruction(instruction),
                            .DA(DA),
                            .AA(AA),
                            .BA(BA),
                            .MB(MB),
                            .FS(FS),
                            .MD(MD),
                            .RW(RW),
                            .MW(MW),
                            .PL(PL),
                            .JB(JB),
                            .BC(BC),
                            .MA(MA),
                            .EOE(EOE));

    // apply an instruction and compare (x bits in expected are ignored)
    task check;
        input [15:0]  instr;
        input [25:0]  expected;
        input [8*4:1] name;
        begin
            instruction = instr;
            #10;
            tests = tests + 1;
            if (((control_word ^ expected) & ~expected_x(expected)) !== 26'd0) begin
                errors = errors + 1;
                $display("FAIL %s  instr=%h  got DA=%h AA=%h BA=%h MB=%b FS=%b MD=%b RW=%b MW=%b PL=%b JB=%b BC=%b MA=%b EOE=%b",
                         name, instr, DA, AA, BA, MB, FS, MD, RW, MW, PL, JB, BC, MA, EOE);
            end
            else
                $display("pass %s  instr=%h  DA=%h AA=%h BA=%h MB=%b FS=%b MD=%b RW=%b MW=%b PL=%b JB=%b BC=%b MA=%b EOE=%b",
                         name, instr, DA, AA, BA, MB, FS, MD, RW, MW, PL, JB, BC, MA, EOE);
        end
    endtask

    // mask of bits marked x in the expected word
    function [25:0] expected_x;
        input [25:0] e;
        integer k;
        begin
            for (k = 0; k < 26; k = k + 1)
                expected_x[k] = (e[k] === 1'bx);
        end
    endfunction

    initial begin
        instruction = 16'h0000;
        #10;

        //            instruction    DA     AA     BA     MB    FS      MD    RW    MW    PL    JB    BC    MA    EOE
        // ---------------- ALU (Rd=1, Rs=2, Rt=3)
        check(16'h0123, {4'h1, 4'h2, 4'h3, 1'b1, 3'b000, 1'b1, 1'b0, 1'b0, 1'b0, 1'bx, 1'bx, 1'b0, 1'b0}, "ADD ");
        check(16'h1123, {4'h1, 4'h2, 4'h3, 1'b1, 3'b001, 1'b1, 1'b0, 1'b0, 1'b0, 1'bx, 1'bx, 1'b0, 1'b0}, "SUB ");
        check(16'h2123, {4'h1, 4'h2, 4'h3, 1'b1, 3'b010, 1'b1, 1'b0, 1'b0, 1'b0, 1'bx, 1'bx, 1'b0, 1'b0}, "AND ");
        check(16'h3123, {4'h1, 4'h2, 4'h3, 1'b1, 3'b011, 1'b1, 1'b0, 1'b0, 1'b0, 1'bx, 1'bx, 1'b0, 1'b0}, "OR  ");
        check(16'h4123, {4'h1, 4'h2, 4'h3, 1'b1, 3'b100, 1'b1, 1'b0, 1'b0, 1'b0, 1'bx, 1'bx, 1'b0, 1'b0}, "XOR ");
        check(16'h5120, {4'h1, 4'h2, 4'hx, 1'bx, 3'b101, 1'b1, 1'b0, 1'b0, 1'b0, 1'bx, 1'bx, 1'b0, 1'b0}, "NOT ");
        check(16'h6120, {4'h1, 4'hx, 4'h2, 1'b1, 3'b110, 1'b1, 1'b0, 1'b0, 1'b0, 1'bx, 1'bx, 1'bx, 1'b0}, "SLA ");
        check(16'h7120, {4'h1, 4'hx, 4'h2, 1'b1, 3'b111, 1'b1, 1'b0, 1'b0, 1'b0, 1'bx, 1'bx, 1'bx, 1'b0}, "SRA ");

        // ---------------- Memory (LI Rd=1 imm=0x5A, LW Rd=1 Rs=2, SW Rs=2 Rt=3)
        check(16'h815A, {4'h1, 4'h0, 4'hx, 1'b0, 3'b000, 1'b1, 1'b0, 1'b0, 1'b0, 1'bx, 1'bx, 1'b0, 1'b0}, "LI  ");
        check(16'h9120, {4'h1, 4'h2, 4'hx, 1'bx, 3'bxxx, 1'b0, 1'b0, 1'b0, 1'b0, 1'bx, 1'bx, 1'b0, 1'b0}, "LW  ");
        check(16'hA023, {4'hx, 4'h2, 4'h3, 1'b1, 3'bxxx, 1'bx, 1'b1, 1'b1, 1'b0, 1'bx, 1'bx, 1'b0, 1'b0}, "SW  ");

        // ---------------- Branches (Rs=4, offset=0x05)
        check(16'hB405, {4'hx, 4'h4, 4'h0, 1'b1, 3'b000, 1'bx, 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0}, "BIZ ");
        check(16'hC405, {4'hx, 4'h4, 4'h0, 1'b1, 3'b000, 1'bx, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'b0}, "BNZ ");

        // ---------------- Jumps (JAL Rd=7, JMP, JR Rs=7, EOE)
        check(16'hD705, {4'h7, 4'hx, 4'h0, 1'b1, 3'b000, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1, 1'b0}, "JAL ");
        check(16'hE005, {4'hx, 4'hx, 4'hx, 1'bx, 3'bxxx, 1'bx, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0}, "JMP ");
        check(16'hF070, {4'hx, 4'h7, 4'hx, 1'bx, 3'bxxx, 1'bx, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0}, "JR  ");
        check(16'hFF00, {4'hx, 4'hx, 4'hx, 1'bx, 3'bxxx, 1'bx, 1'b1, 1'b0, 1'b0, 1'bx, 1'bx, 1'bx, 1'b1}, "EOE ");

        // ---------------- R0 as destination still decodes as a write (Register_File ignores it)
        check(16'h0012, {4'h0, 4'h1, 4'h2, 1'b1, 3'b000, 1'b1, 1'b0, 1'b0, 1'b0, 1'bx, 1'bx, 1'b0, 1'b0}, "ADR0");

        $display("--------------------------------------------");
        $display("%0d tests, %0d errors", tests, errors);
        if (errors == 0) $display("ALL TESTS PASSED");
        $finish;
    end

endmodule
