// ECE 414 Lab 5 - Single state variable, GRAY encoding
// count_out = 1 when data_in_A == data_in_B for 4 consecutive clock cycles
`timescale 1ns / 1ps

module fsm_single_gray (
    input  wire clk,
    input  wire rst,          // active-high reset
    input  wire data_in_A,
    input  wire data_in_B,
    output wire count_out
);

    // Gray code: only one bit changes between neighboring states
    localparam S0 = 3'b000,
               S1 = 3'b001,
               S2 = 3'b011,
               S3 = 3'b010,
               S4 = 3'b110;

    (* fsm_encoding = "user" *)
    reg [2:0] state;

    wire eq = (data_in_A == data_in_B);

    always @(posedge clk or posedge rst) begin
        if (rst)
            state <= S0;
        else if (!eq)
            state <= S0;
        else begin
            case (state)
                S0:      state <= S1;
                S1:      state <= S2;
                S2:      state <= S3;
                S3:      state <= S4;
                S4:      state <= S4;
                default: state <= S0;
            endcase
        end
    end

    assign count_out = (state == S4);

    // Mealy alternative:
    // assign count_out = eq && ((state == S3) || (state == S4));

endmodule