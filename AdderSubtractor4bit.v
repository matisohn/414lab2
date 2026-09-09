`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2026 02:13:26 PM
// Design Name: 
// Module Name: AdderSubtractor4bit
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


module AdderSubtractor4bit(
    input [3:0] A,
    input [3:0] B,
    input E,
    output [3:0] S,
    output Cout
    );
    
    wire b1;
    wire b2;
    wire b3;
    wire b4;
    
    wire One_Two;
    wire Two_Three;
    wire Three_Four;
    wire Four_OF;
    
    assign b1 = B[0] ^ E;
    assign b2 = B[1] ^ E;
    assign b3 = B[2] ^ E;
    assign b4 = B[3] ^ E;

    
    FullAdder FA1( .A(A[0]), .B(b1), .Cin(E), .Sum(S[0]), .Cout(One_Two));
    FullAdder FA2( .A(A[1]), .B(b2), .Cin(One_Two), .Sum(S[1]), .Cout(Two_Three));
    FullAdder FA3( .A(A[2]), .B(b3), .Cin(Two_Three), .Sum(S[2]), .Cout(Three_Four));
    FullAdder FA4( .A(A[3]), .B(b4), .Cin(Three_Four), .Sum(S[3]), .Cout(Four_OF));
    
    assign Cout = Four_OF ^ E;
    
endmodule
