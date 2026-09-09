`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2026 13:26:17 PM
// Design Name: 
// Module Name: tb_fulladder
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


module tb_fulladder();

    reg A;
    reg B; 
    reg Cin;
    
    wire Sum;
    wire Cout;

    FullAdder uut( .A(A), .B(B), .Cin(Cin), .Cout(Cout), .Sum(Sum) );
    
    initial begin
    A = 1'b0;
    B = 1'b0;
    Cin = 1'b0;
    #100;
    
    A = 1'b0;
    B = 1'b0;
    Cin = 1'b1;
    #100;
    
    A= 1'b0;
    B = 1'b1;
    Cin = 1'b0;
    #100;
    
    A= 1'b0;
    B = 1'b1;
    Cin = 1'b1;
    #100;
    
    A= 1'b1;
    B = 1'b0;
    Cin = 1'b0;
    #100;
    
    A= 1'b1;
    B = 1'b0;
    Cin = 1'b1;
    #100;
    
    A= 1'b1;
    B = 1'b1;
    Cin = 1'b0;
    #100;
    
    A= 1'b1;
    B = 1'b1;
    Cin = 1'b1;
    #100;
    
    end
endmodule
