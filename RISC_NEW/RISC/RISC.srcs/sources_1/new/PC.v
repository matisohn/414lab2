`timescale 1ns / 1ps
// Program Counter
// fetch: PC = PC + 1
// branch/jmp/jal: PC = PC + 1 + offset (PC already has the +1 from fetch)
// jr: PC = Rs
// halt (EOE): PC = PC

module PC(
    input clk,
    input reset,
    input Z_in,
    input BC_in,
    input JB_in,
    input MA_in,
    input PL_in,
    input [15:0] PC_plus_one,
    input [15:0] BrA_in,
    input [15:0] Rsa_in,
    output reg [5:0] pc_out
);

reg [15:0] block;
wire [3:0] BrCode = {JB_in, BC_in, Z_in, MA_in};
wire [2:0] JuCode = {JB_in, BC_in, MA_in};

//Branch control Behavioral logic
always @(*) 
begin
    //if (PL_in == 1'b0 | BrCode == 4'b0000 | BrCode == 4'b0110) block <= PC_plus_one;
    if (BrCode == 4'b0010 | BrCode == 4'b0100 | JuCode == 3'b101 | JuCode == 3'b110) block <= BrA_in;
    else if (JuCode == 3'b100) block <= Rsa_in;
    else block <= PC_plus_one;
end

always @(posedge clk) // Acts as PC register
begin
    if (reset) pc_out <= 0;
    else pc_out <= block[5:0]; // outputs PC address and cuts first 6 bits out of inputs
end

endmodule