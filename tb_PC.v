`timescale 1ns / 1ps

module tb_PC;

reg clk, reset, halt, inc, branch, jr;
reg [7:0] offset;
reg [15:0] rs;
wire [5:0] pc_out;

PC uut(.clk(clk), .reset(reset), .halt(halt), .inc(inc), .branch(branch),
       .jr(jr), .offset(offset), .rs(rs), .pc_out(pc_out));

always #5 clk = ~clk;

initial begin
    clk = 0; reset = 1; halt = 0; inc = 0; branch = 0; jr = 0;
    offset = 0; rs = 0;
    #10 reset = 0;

    // fetch 3 times, PC should go 1 2 3
    inc = 1;
    #30 inc = 0;
    $display("after 3 fetches PC = %d (should be 3)", pc_out);

    // branch +5 -> 8
    branch = 1; offset = 8'h05;
    #10 branch = 0;
    $display("branch +5  PC = %d (should be 8)", pc_out);

    // branch -3 -> 5
    branch = 1; offset = 8'hFD;
    #10 branch = 0;
    $display("branch -3  PC = %d (should be 5)", pc_out);

    // jr to rs = 42
    jr = 1; rs = 16'd42;
    #10 jr = 0;
    $display("jr R=42    PC = %d (should be 42)", pc_out);

    // halt, inc should do nothing
    halt = 1; inc = 1;
    #20 inc = 0; halt = 0;
    $display("halt       PC = %d (should be 42)", pc_out);

    // reset
    reset = 1;
    #10 reset = 0;
    $display("reset      PC = %d (should be 0)", pc_out);

    $finish;
end

endmodule