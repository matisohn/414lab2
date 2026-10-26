`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2026 01:53:57 PM
// Design Name: 
// Module Name: fsm_single_seq
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
// ECE 414 Lab 5 - Single state variable, SEQUENTIAL (binary) encoding
// count_out = 1 when data_in_A == data_in_B for 4 consecutive clock cycles
`timescale 1ns / 1ps

module fsm_single_seq (
    input  wire clk,
    input  wire rst,          // active-high reset
    input  wire data_in_A,
    input  wire data_in_B,
    output wire count_out
);

    // State encoding (S0..S4 = number of consecutive matches)
    localparam S0 = 3'b000,
               S1 = 3'b001,
               S2 = 3'b010,
               S3 = 3'b011,
               S4 = 3'b100;

    (* fsm_encoding = "user" *)   // keep XST from re-encoding
    reg [2:0] state;

    wire eq = (data_in_A == data_in_B);

    // Single state variable: next-state logic lives inside the clocked block
    always @(posedge clk or posedge rst) begin
        if (rst)
            state <= S0;
        else if (!eq)
            state <= S0;                 // any mismatch resets the count
        else begin
            case (state)
                S0:      state <= S1;
                S1:      state <= S2;
                S2:      state <= S3;
                S3:      state <= S4;
                S4:      state <= S4;    // saturate: stay while inputs keep matching
                default: state <= S0;
            endcase
        end
    end

    // Moore output (one cycle after the 4th match)
    assign count_out = (state == S4);

    // Mealy alternative - matches the handout's timing exactly:
    // assign count_out = eq && ((state == S3) || (state == S4));

endmodule

module fsm_single_seq(

    );
endmodule
