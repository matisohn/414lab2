`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2026 09:30:29 AM
// Design Name: 
// Module Name: tb_decoder4to16
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


module tb_decoder4to16(
    );
    
    reg [3:0] in;
    wire [15:0] out;
    
    decoder4to16 uut(.in(in), .out(out));
    
    integer k = 0;
    
    initial begin 
        in = 0;
        #10;
        
        for (k=0; k<16; k=k+1) begin
            in = k;
            #10;
        end 
    end
        
endmodule
