`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2026 12:54:17 PM
// Design Name: 
// Module Name: tb_halfadder
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


module tb_halfadder();

    reg A;
    reg B;
    
    wire Sum;
    wire Cout;
    
    HalfAdder uut( .A(A), .B(B), .Sum(Sum), .Cout(Cout));
    
    initial begin
    A = 0;
    B = 0; 
    #100;
    
    A = 1'b0;
    B = 1'b0;
    #100;
    
    A = 1'b0;
    B = 1'b1;
    #100;
       
    A = 1'b1;
    B = 1'b0;
    #100;
    
    A = 1'b1;
    B = 1'b1;
    #100;
    end
endmodule
