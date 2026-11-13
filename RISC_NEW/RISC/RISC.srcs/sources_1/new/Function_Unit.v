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
    input [2:0] FS,
    output reg [15:0] F,
    output reg Z
    );
    
    reg [15:0] tempOut = 1'd0;
    
    always@(*) begin
        case(FS) 
            3'b000: tempOut <= A_in + B_in;
            3'b001: tempOut <= A_in - B_in;
            3'b010: tempOut <= A_in & B_in;
            3'b011: tempOut <= A_in | B_in;
            3'b100: tempOut <= A_in ^ B_in;
            3'b101: tempOut <= ~A_in;
            3'b110: tempOut <= B_in << 1;
            3'b111: tempOut <= B_in >> 1;
            default: tempOut <= 16'b0000000000000000;        
        endcase
        
        if(tempOut == 1'd0) Z <= 1;
        //overflow implementation Z <= ...
        F <= tempOut[15:0];
    end

    
endmodule
