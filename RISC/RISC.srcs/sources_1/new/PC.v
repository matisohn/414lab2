`timescale 1ns / 1ps
// Program Counter
// fetch: PC = PC + 1
// branch/jmp/jal: PC = PC + 1 + offset (PC already has the +1 from fetch)
// jr: PC = Rs
// halt (EOE): PC = PC

module PC(
    input clk,
    input reset,
    input halt,
    input inc,
    input branch,
    input jr,
    input [7:0] offset,
    input [15:0] rs,
    output reg [5:0] pc_out
);

wire [15:0] se_offset;
assign se_offset = {{8{offset[7]}}, offset};   // sign extend like LI

always @(posedge clk)
begin
    if (reset)
        pc_out <= 0;
    else if (halt)
        pc_out <= pc_out;
    else if (jr)
        pc_out <= rs[5:0];
    else if (branch)
        pc_out <= pc_out + se_offset[5:0];
    else if (inc)
        pc_out <= pc_out + 1;
    else
        pc_out <= pc_out;
end

endmodule