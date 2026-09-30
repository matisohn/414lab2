`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2026 10:10:47 AM
// Design Name: 
// Module Name: tb_mux4to1
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


module tb_mux4to1();
    // inputs
    reg [3:0] In;
    reg [1:0] S;
    
    wire Out;
    
    mux4to1 uut(
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
        
    In = 2'b10;
    S = 0;
    #100;
        
    In = 2'b11;
    S = 0;
    #100;
    
 
    
    
    
    
    
    
    
    In = 4'b0000;
    S = 1;
    #100;
    
    In = 4'b0001;
    S = 1;
    #100;
        
    In = 4'b0010;
    S = 2;
    #100;
        
    In = 4'b0111;
    S = 2;
    #100;
    
    In = 4'b1010;
    S = 3;
    #100;
        
    In = 4'b1111;
    S = 3;
    #100;
    
    
    end
endmodule