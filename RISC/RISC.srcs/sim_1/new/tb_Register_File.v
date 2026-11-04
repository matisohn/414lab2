`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2026 10:27:16 AM
// Design Name: 
// Module Name: tb_Register_File
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


module tb_Register_File();

    reg clk;
    reg [15:0] data_path;
    reg read_write;
    reg [3:0] D_address;
    reg [3:0] A_address;
    reg [3:0] B_address;
    wire [15:0] A_out;
    wire [15:0] B_out;
    
    Register_File uut(clk, data_path, read_write, D_address, A_address, B_address, A_out, B_out);

    initial clk = 0;
    always #5 clk = ~clk;  // Toggles every 5 time units (10 time unit period)   
    
    initial begin
        data_path = 0;
        read_write = 1;
        D_address = 0;
        A_address = 0;
        B_address = 0;
        
        #10
        
        A_address = 4'b0000;
        B_address = 4'b0001;
        
        #9
        
        read_write = 1'b0;
        data_path = 4'd1;
        D_address = 4'b0001;
        
        #11
        read_write = 1'b1;
        A_address = 4'b0000;
        B_address = 4'b0001;
        #10
        
        
        
        
    end
endmodule
