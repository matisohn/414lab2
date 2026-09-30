`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2026 02:10:36 PM
// Design Name: 
// Module Name: mux2to1_df
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


module mux2to1_df(In, S, Out);

    input [1:0] In;
    input S;
    output Out;
    
    assign Out = (~S & In[0]) | (S & In[1]);    
endmodule
