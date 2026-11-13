`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2026 06:24:43 PM
// Design Name: 
// Module Name: tb_pc
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


module tb_pc();

    
    reg clk;
    reg reset;
    reg Z_in;
    reg BC_in;
    reg JB_in;
    reg MA_in;
    reg PL_in;
    reg [15:0] PC_plus_one;
    reg [15:0] BrA_in;
    reg [15:0] Rsa_in;
    wire [5:0] pc_out;
    
    
    PC dut (
        .clk(clk), .reset(reset),
        .Z_in(Z_in), .BC_in(BC_in), .JB_in(JB_in), .MA_in(MA_in), .PL_in(PL_in),
        .PC_plus_one(PC_plus_one), .BrA_in(BrA_in), .Rsa_in(Rsa_in),
        .pc_out(pc_out)
    );
    
    initial clk = 0;
       always #5 clk = ~clk;  // Toggles every 5 time units (10 time unit period)   
  
    /*
    initial begin
        reset = 0;
        Z_in = 0;
        BC_in = 0;
        JB_in = 0;
        MA_in = 0;
        PL_in = 0;
        PC_plus_one = 0;
        BrA_in = 0;
        Rsa_in = 0;
        
        #10
        PC_plus_one = 1;
        BrA_in = 1;
        */
        
    integer errors;
    integer checks;
    integer i, j;
    reg [5:0] snapshot;

    localparam SEL_PC1 = 2'd0, SEL_BRA = 2'd1, SEL_RSA = 2'd2;

    // Hand-written truth table (independent of the DUT's coding style)
    function [1:0] exp_sel;
        input [3:0] code; // {JB, BC, Z, MA}
        begin
            case (code)
                4'b0000: exp_sel = SEL_PC1;
                4'b0001: exp_sel = SEL_PC1;
                4'b0010: exp_sel = SEL_BRA;  // BIZ taken
                4'b0011: exp_sel = SEL_PC1;
                4'b0100: exp_sel = SEL_BRA;  // BNZ taken
                4'b0101: exp_sel = SEL_PC1;
                4'b0110: exp_sel = SEL_PC1;  // BNZ not taken
                4'b0111: exp_sel = SEL_PC1;
                4'b1000: exp_sel = SEL_RSA;  // JR, Z=0
                4'b1001: exp_sel = SEL_BRA;  // JMP/JAL, Z=0
                4'b1010: exp_sel = SEL_RSA;  // JR, Z=1
                4'b1011: exp_sel = SEL_BRA;  // JMP/JAL, Z=1
                4'b1100: exp_sel = SEL_BRA;  // JMP/JAL (110), Z=0
                4'b1101: exp_sel = SEL_PC1;  // 111, Z=0
                4'b1110: exp_sel = SEL_BRA;  // JMP/JAL (110), Z=1
                4'b1111: exp_sel = SEL_PC1;  // 111, Z=1
                default: exp_sel = SEL_PC1;
            endcase
        end
    endfunction
    // Compare pc_out against an explicit expected value
    task check_val;
        input [5:0] expected;
        input [8*40-1:0] msg;
        begin
            checks = checks + 1;
            if (pc_out !== expected) begin
                errors = errors + 1;
                $display("FAIL @%0t: %0s | expected %0d (0x%h), got %0d (0x%h)",
                         $time, msg, expected, expected, pc_out, pc_out);
            end
        end
    endtask

    // Drive one cycle on the falling edge, then check after the rising edge
    task drive_check;
        input        jb, bc, z, ma, pl;
        input [15:0] pc1, bra, rsa;
        reg   [5:0]  expected;
        reg   [1:0]  sel;
        begin
            @(negedge clk);
            JB_in = jb; BC_in = bc; Z_in = z; MA_in = ma; PL_in = pl;
            PC_plus_one = pc1; BrA_in = bra; Rsa_in = rsa;
            @(posedge clk); #1;
            sel = exp_sel({jb, bc, z, ma});
            case (sel)
                SEL_BRA: expected = bra[5:0];
                SEL_RSA: expected = rsa[5:0];
                default: expected = pc1[5:0];
            endcase
            checks = checks + 1;
            if (pc_out !== expected) begin
                errors = errors + 1;
                $display("FAIL @%0t: {JB,BC,Z,MA}=%b%b%b%b PL=%b | PC+1=%h BrA=%h Rsa=%h | expected %0d, got %0d (sel=%0s)",
                         $time, jb, bc, z, ma, pl, pc1, bra, rsa, expected, pc_out,
                         (sel == SEL_BRA) ? "BrA" : (sel == SEL_RSA) ? "Rsa" : "PC+1");
            end
        end
    endtask

    // Apply a clean reset for one clock edge, inputs idle
    task do_reset;
        begin
            @(negedge clk);
            reset = 1'b1;
            @(posedge clk); #1;
            check_val(6'd0, "reset");
            @(negedge clk);
            reset = 1'b0;
        end
    endtask

    initial begin
        $dumpfile("tb_pc.vcd");
        $dumpvars(0, tb_pc);

        errors = 0; checks = 0;
        reset = 1'b1;
        {JB_in, BC_in, Z_in, MA_in, PL_in} = 5'b0;
        PC_plus_one = 16'h0; BrA_in = 16'h0; Rsa_in = 16'h0;

        // ---------------------------------------------------------------
        // TEST 1: Power-up reset
        // ---------------------------------------------------------------
        $display("TEST 1: reset");
        repeat (2) @(posedge clk);
        #1 check_val(6'd0, "power-up reset");
        @(negedge clk) reset = 1'b0;

        // ---------------------------------------------------------------
        // TEST 2: Reset has priority over every branch type
        // ---------------------------------------------------------------
        $display("TEST 2: reset priority over branch/jump/JR");
        for (i = 0; i < 16; i = i + 1) begin
            @(negedge clk);
            reset = 1'b1;
            {JB_in, BC_in, Z_in, MA_in} = i[3:0];
            PC_plus_one = 16'h0015; BrA_in = 16'h002A; Rsa_in = 16'h0033;
            @(posedge clk); #1;
            check_val(6'd0, "reset priority");
        end
        @(negedge clk) reset = 1'b0;

        // ---------------------------------------------------------------
        // TEST 3: Exhaustive 16 branch codes x PL_in 0/1, data set A
        //   low-6-bit values all differ (17 / 42 / 21), upper bits non-zero
        // ---------------------------------------------------------------
        $display("TEST 3: exhaustive BrCode sweep, data set A");
        for (j = 0; j < 2; j = j + 1)
            for (i = 0; i < 16; i = i + 1)
                drive_check(i[3], i[2], i[1], i[0], j[0],
                            16'hA011, 16'h5B2A, 16'hC315);

        // ---------------------------------------------------------------
        // TEST 4: Same sweep, data set B (different values, boundaries)
        //   PC+1 = 63, BrA = 0, Rsa = 1
        // ---------------------------------------------------------------
        $display("TEST 4: exhaustive BrCode sweep, data set B");
        for (j = 0; j < 2; j = j + 1)
            for (i = 0; i < 16; i = i + 1)
                drive_check(i[3], i[2], i[1], i[0], j[0],
                            16'hFFFF, 16'h0040, 16'h8001);

        // Data set C: roles rotated so no input is always "the small one"
        $display("TEST 4b: exhaustive BrCode sweep, data set C");
        for (i = 0; i < 16; i = i + 1)
            drive_check(i[3], i[2], i[1], i[0], 1'b0,
                        16'h0001, 16'h003F, 16'h0020);

        // ---------------------------------------------------------------
        // TEST 5: Back-to-back transitions between every pair of codes
        //   (catches any hidden state / latch behaviour in branch logic)
        // ---------------------------------------------------------------
        $display("TEST 5: all code-to-code transitions");
        for (i = 0; i < 16; i = i + 1)
            for (j = 0; j < 16; j = j + 1) begin
                drive_check(i[3], i[2], i[1], i[0], 1'b0, 16'h0111, 16'h0222, 16'h0333);
                drive_check(j[3], j[2], j[1], j[0], 1'b0, 16'h0444, 16'h0585, 16'h06C6);
            end

        // ---------------------------------------------------------------
        // TEST 6: 6-bit truncation / wrap-around
        // ---------------------------------------------------------------
        $display("TEST 6: truncation and wrap");
        drive_check(0,0,0,0, 0, 16'h003F, 16'h0000, 16'h0000); // 63
        drive_check(0,0,0,0, 0, 16'h0040, 16'h0000, 16'h0000); // 64 -> 0
        drive_check(0,0,0,0, 0, 16'h0041, 16'h0000, 16'h0000); // 65 -> 1
        drive_check(0,0,1,0, 0, 16'h0000, 16'hFFFE, 16'h0000); // BIZ taken, -2 -> 62
        drive_check(0,1,0,0, 0, 16'h0000, 16'hFFC0, 16'h0000); // BNZ taken -> 0
        drive_check(1,0,0,0, 0, 16'h0000, 16'h0000, 16'hFFFF); // JR -> 63
        drive_check(1,0,1,0, 0, 16'h0000, 16'h0000, 16'h1240); // JR -> 0
        drive_check(1,0,0,1, 0, 16'h0000, 16'h8000, 16'h0000); // JMP -> 0
        drive_check(1,1,0,0, 0, 16'h0000, 16'h007F, 16'h0000); // JAL -> 63

        // ---------------------------------------------------------------
        // TEST 7: Output is registered (no change between clock edges)
        // ---------------------------------------------------------------
        $display("TEST 7: output only changes on posedge");
        drive_check(0,0,0,0, 0, 16'h0005, 16'h0000, 16'h0000);   // pc_out = 5
        @(negedge clk);
        snapshot = pc_out;
        {JB_in, BC_in, Z_in, MA_in} = 4'b1001;                    // JMP
        BrA_in = 16'h0020;
        #2 check_val(snapshot, "no change after input change");
        #2 check_val(snapshot, "no change before posedge");
        @(posedge clk); #1;
        check_val(6'd32, "JMP applied at posedge");

        // ---------------------------------------------------------------
        // TEST 8: Reset is synchronous (no change until the clock edge)
        // ---------------------------------------------------------------
        $display("TEST 8: synchronous reset");
        drive_check(0,0,0,0, 0, 16'h0019, 16'h0000, 16'h0000);   // pc_out = 25
        @(posedge clk); #2;                                       // just after an edge
        reset = 1'b1;
        #2 check_val(6'd25 + 6'd0, "reset must not act asynchronously");
        // (pc_out held 25 only if the previous cycle re-loaded 25; PC_plus_one still 0x19)
        @(posedge clk); #1;
        check_val(6'd0, "reset applied at next posedge");
        @(negedge clk) reset = 1'b0;

        // ---------------------------------------------------------------
        // TEST 9: Reset in the middle of a taken branch, then recover
        // ---------------------------------------------------------------
        $display("TEST 9: reset mid-branch and recovery");
        drive_check(0,0,1,0, 0, 16'h0001, 16'h0010, 16'h0000);   // BIZ taken -> 16
        @(negedge clk);
        reset = 1'b1; {JB_in, BC_in, Z_in, MA_in} = 4'b0100; BrA_in = 16'h0030;
        @(posedge clk); #1 check_val(6'd0, "reset during BNZ");
        @(negedge clk) reset = 1'b0;
        @(posedge clk); #1 check_val(6'd48, "BNZ taken after reset released");

        // ---------------------------------------------------------------
        // TEST 10: Closed-loop mini program (PC_plus_one = pc_out + 1)
        // ---------------------------------------------------------------
        $display("TEST 10: closed-loop sequencing");
        do_reset;
        // straight-line count 0..63 and wrap back to 0
        for (i = 1; i <= 64; i = i + 1)
            drive_check(0,0,0,0, 0, {10'b0, pc_out} + 16'd1, 16'h0000, 16'h0000);
        check_val(6'd0, "free-run wrap 63 -> 0");
        // advance to 3
        for (i = 0; i < 3; i = i + 1)
            drive_check(0,0,0,0, 0, {10'b0, pc_out} + 16'd1, 16'h0000, 16'h0000);
        // JAL at PC=3: PC = PC+1+offset (offset +10) -> 14; link value (PC+1)=4
        drive_check(1,1,0,0, 0, {10'b0, pc_out} + 16'd1, {10'b0, pc_out} + 16'd1 + 16'd10, 16'h0004);
        check_val(6'd14, "JAL to 14");
        // BIZ not taken (Rs != 0)
        drive_check(0,0,0,0, 0, {10'b0, pc_out} + 16'd1, 16'h0000, 16'h0000);
        check_val(6'd15, "BIZ not taken");
        // BIZ taken, backward offset -5 -> 15+1-5 = 11
        drive_check(0,0,1,0, 0, {10'b0, pc_out} + 16'd1, {10'b0, pc_out} + 16'd1 - 16'd5, 16'h0000);
        check_val(6'd11, "BIZ taken backward");
        // BNZ taken forward +2 -> 11+1+2 = 14
        drive_check(0,1,0,0, 0, {10'b0, pc_out} + 16'd1, {10'b0, pc_out} + 16'd1 + 16'd2, 16'h0000);
        check_val(6'd14, "BNZ taken forward");
        // BNZ not taken (Rs == 0)
        drive_check(0,1,1,0, 0, {10'b0, pc_out} + 16'd1, 16'h0000, 16'h0000);
        check_val(6'd15, "BNZ not taken");
        // JR back to the JAL link address (4)
        drive_check(1,0,0,0, 0, {10'b0, pc_out} + 16'd1, 16'h0000, 16'h0004);
        check_val(6'd4, "JR to link address 4");

        // ---------------------------------------------------------------
        // TEST 11: Randomized regression
        // ---------------------------------------------------------------
        $display("TEST 11: random regression");
        for (i = 0; i < 500; i = i + 1)
            drive_check($random, $random, $random, $random, $random,
                        $random, $random, $random);

        // ---------------------------------------------------------------
        // Summary
        // ---------------------------------------------------------------
        #10;
        $display("--------------------------------------------------");
        if (errors == 0)
            $display("PASS: %0d checks, 0 errors", checks);
        else
            $display("FAIL: %0d errors out of %0d checks", errors, checks);
        $display("--------------------------------------------------");
        $finish;
    end

    // Watchdog
    initial begin
        #2000000;
        $display("TIMEOUT");
        $finish;
    end
        

endmodule
