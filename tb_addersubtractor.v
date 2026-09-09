`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2026 13:26:17 PM
// Design Name: 
// Module Name: tb_addersubtractor4Bit
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


module tb_addersubtractor4Bit();

    reg [3:0] A;
    reg [3:0] B; 
    reg Cin;
    reg E;
    wire [3:0] Sum;
    wire Cout;

    AdderSubtractor4bit uut( .A(A), .B(B), .Cout(Cout), .S(Sum), .E(E) );
    
    initial begin
    A = 4'b0000;
    B = 4'b0000;
    E = 1'b0;
    #100;
    
    A = 4'b0001;
    B = 4'b0000;
    E = 1'b0;
    #100;
    
    A = 4'b1010;
    B = 4'b0101;
    E = 1'b0;
    #100;
    
    A = 4'b1111;
    B = 4'b0111;
    E = 1'b0;
    #100;
    
    A = 4'b1000;
    B = 4'b0001;
    E = 1'b1;
    #100;
    
    A = 4'b0000;
    B = 4'b0001;
    E = 1'b1;
    #100;
    
    A = 4'b0011;
    B = 4'b0001;
    E = 1'b0;
    #100;    
    
    end
endmodule
