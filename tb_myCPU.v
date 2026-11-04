`timescale 1ns / 1ps
// tests the PC inside the cpu with branches and jumps
// rom here acts like the block memory rom (1 clock delay)

module tb_myCPU;

reg clk, reset;
reg [15:0] rom [0:63];
reg [15:0] rom_data;
wire [5:0] address_to_rom;
wire enable_to_rom, enable_ram_read;
integer k;

myCPU uut(.data_from_rom(rom_data), .reset(reset), .clk(clk), .data_from_ram(16'd0),
          .address_to_rom(address_to_rom), .enable_to_rom(enable_to_rom),
          .write_enable_to_ram(), .address_to_ram(), .read_enable_to_ram(),
          .data_to_ram(), .enable_ram_read(enable_ram_read));

always #5 clk = ~clk;

always @(posedge clk)
    if (enable_to_rom)
        rom_data <= rom[address_to_rom];

initial begin
    for (k = 0; k < 64; k = k + 1)
        rom[k] = 16'hFF00;
    rom[0]  = 16'h8103;  // LI  R1, 3
    rom[1]  = 16'h8200;  // LI  R2, 0
    rom[2]  = 16'h8301;  // LI  R3, 1
    rom[3]  = 16'h0221;  // ADD R2, R2, R1   <- loop
    rom[4]  = 16'h1113;  // SUB R1, R1, R3
    rom[5]  = 16'hC1FD;  // BNZ R1, -3       go back to 3
    rom[6]  = 16'hD401;  // JAL R4, +1       R4 = 7, skip 7
    rom[7]  = 16'h85FF;  // LI  R5, -1       skipped
    rom[8]  = 16'h8605;  // LI  R6, 5
    rom[9]  = 16'hB701;  // BIZ R7, +1       R7 = 0 so skip 10
    rom[10] = 16'h85FF;  // LI  R5, -1       skipped
    rom[11] = 16'h880E;  // LI  R8, 14
    rom[12] = 16'hF080;  // JR  R8           go to 14
    rom[13] = 16'h85FF;  // LI  R5, -1       skipped
    rom[14] = 16'hB601;  // BIZ R6, +1       R6 = 5 so no branch
    rom[15] = 16'h8909;  // LI  R9, 9
    rom[16] = 16'hE001;  // JMP +1           skip 17
    rom[17] = 16'h85FF;  // LI  R5, -1       skipped
    rom[18] = 16'hFF00;  // EOE

    clk = 0; reset = 1; rom_data = 0;
    #20 reset = 0;

    wait (enable_ram_read);
    #40;
    $display("R2 = %d (should be 6)", uut.R[2]);
    $display("R4 = %d (should be 7)", uut.R[4]);
    $display("R5 = %d (should be 0)", uut.R[5]);
    $display("R6 = %d (should be 5)", uut.R[6]);
    $display("R9 = %d (should be 9)", uut.R[9]);
    $display("PC = %d (should stop at 19)", address_to_rom);
    $finish;
end

endmodule