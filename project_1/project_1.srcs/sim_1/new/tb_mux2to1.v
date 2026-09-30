`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2026 01:16:51 PM
// Design Name: 
// Module Name: tb_mux2to1
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


module tb_mux2to1();
    // inputs
    reg [1:0] In;
    reg S;
    
    wire Out;
    
    mux2to1 uut(
        .In(In),
        .S(S),
        .Out(Out)
    );
    
    initial begin
    In = 0;
    S = 0;
    # 100;
    
    In = 2'b00;
    S = 0;
    #100;
    
    In = 2'b01;
    S = 0;
    #100;
    
    In = 2;
    S = 0;
    #100;
    
    In = 3;
    S = 0;
    #100;
    
    end
endmodule
