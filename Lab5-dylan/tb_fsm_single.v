`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2026 01:58:17 PM
// Design Name: 
// Module Name: tb_fsm_single
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
// ECE 414 Lab 5 - Testbench for the single-state-variable FSMs
// Runs the handout's A/B sequence through all three encodings at once
// and checks each count_out against the expected row.
`timescale 1ns / 1ps

module tb_fsm_single;

    reg clk = 0;
    reg rst = 1;
    reg data_in_A = 0;
    reg data_in_B = 0;

    wire out_seq, out_gray, out_onehot;

    // Devices under test - all three get the same inputs
    fsm_single_seq    u_seq    (.clk(clk), .rst(rst), .data_in_A(data_in_A), .data_in_B(data_in_B), .count_out(out_seq));
    fsm_single_gray   u_gray   (.clk(clk), .rst(rst), .data_in_A(data_in_A), .data_in_B(data_in_B), .count_out(out_gray));
    fsm_single_onehot u_onehot (.clk(clk), .rst(rst), .data_in_A(data_in_A), .data_in_B(data_in_B), .count_out(out_onehot));

    // 10 ns clock
    always #5 clk = ~clk;

    // Handout sequences (index 0 = first cycle)
    reg [0:12] seqA     = 13'b0110111000110;
    reg [0:12] seqB     = 13'b1110101000111;
    reg [0:12] expected = 13'b0000100001110;

    integer i;
    integer errors = 0;

    initial begin
        // Hold reset for two clock cycles
        @(posedge clk); @(posedge clk);
        @(negedge clk) rst = 0;

        $display(" cyc | A B | seq gray onehot | expected");
        $display("-----+-----+-----------------+---------");

        for (i = 0; i < 13; i = i + 1) begin
            // Change inputs on the falling edge so they are stable at the rising edge
            @(negedge clk);
            data_in_A = seqA[i];
            data_in_B = seqB[i];

            // Let the FSM clock in this cycle's inputs, then sample the output
            @(posedge clk);
            #1;

            $display(" %2d  | %b %b |  %b    %b     %b    |    %b",
                     i+1, data_in_A, data_in_B, out_seq, out_gray, out_onehot, expected[i]);

            if (out_seq    !== expected[i]) begin errors = errors + 1; $display("   ^ MISMATCH: sequential");   end
            if (out_gray   !== expected[i]) begin errors = errors + 1; $display("   ^ MISMATCH: gray");         end
            if (out_onehot !== expected[i]) begin errors = errors + 1; $display("   ^ MISMATCH: one-hot");      end
        end

        if (errors == 0)
            $display("\nPASS - all three encodings match the expected count_out");
        else
            $display("\nFAIL - %0d mismatches", errors);

        $finish;
    end

endmodule

module tb_fsm_single(

    );
endmodule
