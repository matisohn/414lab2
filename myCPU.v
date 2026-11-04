`timescale 1ns / 1ps
// ECE 414 final project - 16 bit RISC CPU
// every instruction takes 2 cycles: fetch then execute

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

parameter FETCH = 2'b00, EXECUTE = 2'b01, DONE = 2'b10;
reg [1:0] state;

reg [15:0] R [0:15];   // 16 registers
integer i;

// instruction fields (rom data is ready in the execute cycle)
wire [3:0] opcode = data_from_rom[15:12];
wire [3:0] rd     = data_from_rom[11:8];
wire [3:0] rs     = data_from_rom[7:4];
wire [3:0] rt     = data_from_rom[3:0];
wire [7:0] imm    = data_from_rom[7:0];

// end of execution is hFFxx, jr is hF0xx
wire eoe = (opcode == 4'b1111) && (rd == 4'b1111);
wire jr  = (opcode == 4'b1111) && (rd == 4'b0000);

// ---------- PC control ----------
wire pc_inc, pc_branch, pc_jr, pc_halt;
wire [5:0] pc;
wire rd_zero = (R[rd] == 0);   // BIZ/BNZ check the reg in [11:8]

assign pc_inc    = (state == FETCH);
assign pc_branch = (state == EXECUTE) && ((opcode == 4'b1011 && rd_zero)  ||  // BIZ
                                          (opcode == 4'b1100 && !rd_zero) ||  // BNZ
                                          (opcode == 4'b1101) ||              // JAL
                                          (opcode == 4'b1110));               // JMP
assign pc_jr     = (state == EXECUTE) && jr;
assign pc_halt   = (state == DONE) || ((state == EXECUTE) && eoe);

PC pc_unit(.clk(clk), .reset(reset), .halt(pc_halt), .inc(pc_inc),
           .branch(pc_branch), .jr(pc_jr), .offset(imm), .rs(R[rs]),
           .pc_out(pc));

// ---------- rom ----------
assign address_to_rom = pc;
assign enable_to_rom  = (state == FETCH);

// ---------- ram (todo: LW and SW) ----------
assign write_enable_to_ram = 0;
assign read_enable_to_ram  = 0;
assign address_to_ram      = 0;
assign data_to_ram         = 0;

assign enable_ram_read = (state == DONE);

// ---------- state machine + register writes ----------
always @(posedge clk)
begin
    if (reset) begin
        state <= FETCH;
        for (i = 0; i < 16; i = i + 1)
            R[i] <= 0;
    end
    else begin
        case (state)
        FETCH: state <= EXECUTE;

        EXECUTE: begin
            if (eoe)
                state <= DONE;
            else
                state <= FETCH;

            case (opcode)
            4'b0000: R[rd] <= R[rs] + R[rt];              // ADD
            4'b0001: R[rd] <= R[rs] - R[rt];              // SUB
            4'b1000: R[rd] <= {{8{imm[7]}}, imm};         // LI
            4'b1101: R[rd] <= {10'b0, pc};                // JAL, pc is already PC+1
            // todo: AND OR XOR NOT SLA SRA LW
            endcase
        end

        DONE: state <= DONE;
        default: state <= FETCH;
        endcase
    end
end

endmodule