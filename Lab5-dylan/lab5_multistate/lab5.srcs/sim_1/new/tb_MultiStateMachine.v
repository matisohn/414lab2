`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2026 10:34:46 AM
// Design Name: 
// Module Name: tb_MultiStateMachine
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


module tb_MultiStateMachine(
    );
    
    reg clk;
    reg reset;
    reg A;
    reg B;
    wire count_out;
    
    MultiStateMachineGray uut(.clk(clk), .reset(reset), .data_in_A(A),
                          .data_in_B(B), .count_out(count_out));
                      
    initial begin 
        clk = 0;
        reset = 0;
        A = 0;
        B = 0;
        #10;
        
        clk =~clk;
        A = 0;
        B = 1;
        #10
        
        clk=~clk;
        #10
        
        clk =~clk;
        A = 1;
        B = 1;
        #10        
   
        clk=~clk;
        #10
        
        clk =~clk;
        A = 1;
        B = 1;
        #10
        
        clk=~clk;
        #10       
        
        clk =~clk;
        A = 0;
        B = 0;
        #10
        
        clk=~clk;
        #10       
        
        clk =~clk;
        A = 1;
        B = 1;
        #10     
        
        clk=~clk;
        #10
        
        clk =~clk;
        A = 1;
        B = 0;
        #10
        
        clk=~clk;
        #10       
        
        clk =~clk;
        A = 1;
        B = 1;
        #10
        
        clk=~clk;
        #10        
        
        clk =~clk;
        A = 0;
        B = 0;
        #10
        
        clk=~clk;
        #10       
        
        clk =~clk;
        A = 0;
        B = 0;
        #10
        
        clk=~clk;
        #10        
        
        clk =~clk;
        A = 0;
        B = 0;
        #10
        
        clk=~clk;
        #10        
        
        clk =~clk;
        A = 1;
        B = 1;
        #10                        

        clk=~clk;
        #10

        clk =~clk;
        A = 1;
        B = 1;
        #10

        clk=~clk;
        #10
                
        clk =~clk;
        A = 0;
        B = 1;
         
    end
    
endmodule
