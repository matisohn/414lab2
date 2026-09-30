`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2026 02:10:01 PM
// Design Name: 
// Module Name: mux4to1
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


module mux4to1(
    input [3:0] In,
    input [1:0] S,
    output Out
    );
    
    wire m1Out, m0Out;
    
    mux2to1 m0({In[1],In[0]}, S[0], m0Out);
    
    mux2to1 m1({In[3], In[2]}, S[0], m1Out);
    
    mux2to1_df m2(.S(S[1]), .In({m1Out,m0Out}), .Out(Out));


    
    
endmodule
