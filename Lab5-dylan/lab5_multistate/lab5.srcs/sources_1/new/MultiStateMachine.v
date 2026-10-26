`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2026 10:17:20 AM
// Design Name: 
// Module Name: MultiStateMachine
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


module MultiStateMachine(
    input clk,
    input reset,
    input data_in_A,
    input data_in_B,
    output reg count_out
    );
    
    localparam IDLE = 4'b0000,
               STATE_1 = 4'b0001,
               STATE_2 = 4'b0010,
               STATE_3 = 4'b0100,
               STATE_4 = 4'b1000;
               
    reg [3:0] present_state;
    reg [3:0] next_state;
    
    always@(posedge clk) begin
        if (reset) present_state <= IDLE;
        else present_state <= next_state;
    end
    
    always@(*) begin
        next_state = present_state;
        case(present_state) 
            IDLE    : next_state = (data_in_A == data_in_B) ? STATE_1 : IDLE;
            STATE_1 : next_state = (data_in_A == data_in_B) ? STATE_2 : IDLE;
            STATE_2 : next_state = (data_in_A == data_in_B) ? STATE_3 : IDLE;
            STATE_3 : next_state = (data_in_A == data_in_B) ? STATE_4 : IDLE;
            STATE_4 : next_state = (data_in_A == data_in_B) ? STATE_4 : IDLE;
            default : next_state = IDLE;
        endcase
   end
   
   always@(posedge clk) begin
       if (next_state == STATE_4) count_out <= 1;
       else count_out <= 0;
   end
        
endmodule
