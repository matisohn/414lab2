//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2026 12:47:47 PM
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(
    input A,
    input B,
    input Cin,
    output Cout,
    output Sum
    );
    
    wire s1; //partial sum out of first half adder
    wire c1; //carry out of first half adder
    wire c2; //carry out of second half adder
    
    HalfAdder ha0 (.A(A), .B(B), .Cout(c1), .Sum(s1));
    HalfAdder ha1 (.A(s1), .B(Cin), .Cout(c2), .Sum(Sum));
    
    or (Cout, c1, c2);
    
endmodule
