`timescale 1ns / 1ps
// Program Counter
// fetch: PC = PC + 1
// branch/jmp/jal: PC = PC + 1 + offset (PC already has the +1 from fetch)
// jr: PC = Rs
// halt (EOE): PC = PC

module Branch_Control(
    input [3:0] branch_control_codes, // {JB, BC, Z, MA}
    input [15:0] PC_plus_one,
    input [15:0] BrA_in,
    input [15:0] Rsa_in,
    output reg [5:0] pc_out
);

wire [3:0] BrCode = branch_control_codes; // {JB, BC, Z, MA}
wire [2:0] JuCode = {branch_control_codes[3:2], branch_control_codes[0]}; // {JB, BC, MA}

//Branch control Behavioral logic
always @(*) 
begin
    //if (PL_in == 1'b0 | BrCode == 4'b0000 | BrCode == 4'b0110) pc_out <= PC_plus_one;
    if (BrCode == 4'b0010 | BrCode == 4'b0100 | JuCode == 3'b101 | JuCode == 3'b110) pc_out <= BrA_in[5:0];
    else if (JuCode == 3'b100) pc_out <= Rsa_in[5:0];
    else pc_out <= PC_plus_one[5:0];
end


endmodule