`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2026 10:48:32 AM
// Design Name: 
// Module Name: Function_Unit
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


module Function_Unit(
    input [15:0] A_in,
    input [15:0] B_in,
    input [3:0] FS,
    output reg [15:0] F,
    output reg V,
    output reg C,
    output reg N,
    output reg Z
    );
    
    reg [17:0] tempOut = 1'd0;
    
    always@(*) begin
        case(FS) 
            4'b0000: tempOut <= A_in;
            4'b0001: tempOut <= A_in + 1'b1;
            4'b0010: tempOut <= A_in + B_in;
            4'b0101: tempOut <= A_in - B_in;
            4'b0110: tempOut <= A_in - 1;
            4'b1000: tempOut <= A_in & B_in;
            4'b1001: tempOut <= A_in | B_in;
            4'b1010: tempOut <= A_in ^ B_in;
            4'b1011: tempOut <= ~A_in;
            4'b1100: tempOut <= B_in;
            4'b1101: tempOut <= B_in >> 1;
            4'b1110: tempOut <= B_in << 1;
            default: tempOut <= 16'b0000000000000000;        
        endcase
        
        if(tempOut < 1'd0) N <= 1;
        if(tempOut == 1'd0) Z <= 1;
        C <= tempOut[16];
        //overflow implementation Z <= ...
        F <= tempOut[15:0];
    end

    
endmodule
