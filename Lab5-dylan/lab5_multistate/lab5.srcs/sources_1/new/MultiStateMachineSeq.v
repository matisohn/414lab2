`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2026 08:42:29 PM
// Design Name: 
// Module Name: MultiStateMachineSeq
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


module MultiStateMachineSeq(
    input clk,
    input reset,
    input data_in_A,
    input data_in_B,
    output reg count_out
    );
    
    localparam IDLE    = 3'b000,
               STATE_1 = 3'b001,
               STATE_2 = 3'b010,
               STATE_3 = 3'b011,
               STATE_4 = 3'b100;
    
    reg [2:0] present_state;
    reg [2:0] next_state;
   
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
