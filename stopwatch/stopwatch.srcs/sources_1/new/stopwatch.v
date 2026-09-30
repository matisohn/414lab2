`timescale 1ns / 1ps
// ECE 414 Lab 3 - Stopwatch
// display format: M.SS.T  (max 9.59.9 then goes back to 0)
// CPU_RESET = clear, BTNC = start/pause, SW0 = blink mode
//
// get_clk makes the slow clocks. clk_out flips every (limit+1) clocks,
// so the output period is 2*(limit+1) clocks of the 100MHz clock
//   refresh: 2*(249,999+1)    = 500,000     clocks = 5ms
//   tenths : 2*(4,999,999+1)  = 10,000,000  clocks = 0.1s
//   blink  : 2*(49,999,999+1) = 100,000,000 clocks = 1s

module stopwatch #(
    parameter REFRESH_LIM = 249_999,
    parameter TENTH_LIM = 4_999_999,
    parameter BLINK_LIM = 49_999_999,
    parameter DB_MAX = 1_000_000       // 10ms debounce
)(
    input clk,
    input clr_n,
    input btn_start,
    input sw_blink,
    output reg [7:0] an,
    output reg [6:0] seg,
    output reg dp
);

    // reset - clears right away but releases on clock edge
    reg [1:0] rst_ff;
    always @(posedge clk or negedge clr_n) begin
        if (!clr_n)
            rst_ff <= 2'b11;
        else
            rst_ff <= {rst_ff[0], 1'b0};
    end
    wire rst = rst_ff[1];

    // start/pause button
    wire btn_clean;
    debouncer #(DB_MAX) db (clk, rst, btn_start, btn_clean);

    reg btn_prev;
    reg running;
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            btn_prev <= 0;
            running <= 0;
        end
        else begin
            btn_prev <= btn_clean;
            if (btn_clean && !btn_prev)
                running <= ~running;
        end
    end

    // sync the switch
    reg sw1, sw2;
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            sw1 <= 0;
            sw2 <= 0;
        end
        else begin
            sw1 <= sw_blink;
            sw2 <= sw1;
        end
    end

    // slow clocks
    // tenth clock is stopped when paused so it doesnt lose time
    wire clk_5ms, clk_10hz, clk_1hz;

    get_clk #(18) refresh_clk (clk, rst, 1'b0,     REFRESH_LIM[17:0], clk_5ms);
    get_clk #(23) tenth_clk   (clk, rst, ~running, TENTH_LIM[22:0],   clk_10hz);
    get_clk #(26) blink_clk   (clk, rst, 1'b0,     BLINK_LIM[25:0],   clk_1hz);

    // find the rising edges of the slow clocks so everything else can
    // stay on the 100MHz clock (only one clock domain = no CDC problems)
    reg clk_10hz_prev, clk_5ms_prev;
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            clk_10hz_prev <= 1;
            clk_5ms_prev <= 1;
        end
        else begin
            clk_10hz_prev <= clk_10hz;
            clk_5ms_prev <= clk_5ms;
        end
    end

    wire tick_10hz = clk_10hz & ~clk_10hz_prev;  // 1 clock pulse every 0.1s
    wire tick_5ms = clk_5ms & ~clk_5ms_prev;     // 1 clock pulse every 5ms

    // digit counters, count up once every 0.1s
    wire [3:0] tenth, sec1, sec10, min;
    wire c1, c2, c3, c4;

    digit_counter #(9) d0 (clk, rst, tick_10hz, tenth, c1);
    digit_counter #(9) d1 (clk, rst, c1,        sec1,  c2);
    digit_counter #(5) d2 (clk, rst, c2,        sec10, c3);
    digit_counter #(9) d3 (clk, rst, c3,        min,   c4);

    // blink when paused and switch is on (clk_1hz is the 1Hz square wave)
    wire blank = sw2 & ~running & clk_1hz;

    // display multiplexing, move to next digit every 5ms
    reg [1:0] sel;
    always @(posedge clk or posedge rst) begin
        if (rst)
            sel <= 0;
        else if (tick_5ms)
            sel <= sel + 1;
    end

    reg [3:0] cur_digit;
    reg cur_dp;
    always @(*) begin
        case (sel)
            2'd0: begin cur_digit = tenth; cur_dp = 0; end
            2'd1: begin cur_digit = sec1;  cur_dp = 1; end
            2'd2: begin cur_digit = sec10; cur_dp = 0; end
            2'd3: begin cur_digit = min;   cur_dp = 1; end
        endcase
    end

    wire [6:0] seg_out;
    seg_decoder dec (cur_digit, seg_out);

    // everything is active low on the board
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            an <= 8'b11111111;
            seg <= 7'b1111111;
            dp <= 1;
        end
        else begin
            if (blank)
                an <= 8'b11111111;
            else
                an <= {4'b1111, ~(4'b0001 << sel)};
            seg <= seg_out;
            dp <= ~cur_dp;
        end
    end

endmodule


// clock divider from Diego
module get_clk #(parameter NBIT = 18) (
    input clk_slw,
    input reset,
    input stop,
    input [NBIT-1:0] limit,
    output reg clk_out
);
    reg [NBIT-1:0] clk_counter;

    always @(posedge clk_slw) begin
        if (reset) begin
            clk_counter <= 0;
            clk_out <= 1;
        end
        else if (stop) begin
            clk_counter <= clk_counter;
            clk_out <= clk_out;
        end
        else if (clk_counter == limit) begin
            clk_counter <= 0;
            clk_out <= ~clk_out;
        end
        else begin
            clk_counter <= clk_counter + 1;
            clk_out <= clk_out;
        end
    end
endmodule


// counts 0 to MAX, carry goes high when it rolls over
module digit_counter #(parameter MAX = 9) (
    input clk,
    input rst,
    input en,
    output reg [3:0] q,
    output carry
);
    assign carry = en && (q == MAX);

    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 0;
        else if (en) begin
            if (q == MAX)
                q <= 0;
            else
                q <= q + 1;
        end
    end
endmodule


// button debouncer
module debouncer #(parameter MAX = 1_000_000) (
    input clk,
    input rst,
    input btn,
    output reg out
);
    reg b1, b2;
    reg [31:0] count;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            b1 <= 0;
            b2 <= 0;
            count <= 0;
            out <= 0;
        end
        else begin
            b1 <= btn;
            b2 <= b1;
            if (b2 == out)
                count <= 0;
            else if (count == MAX - 1) begin
                out <= b2;
                count <= 0;
            end
            else
                count <= count + 1;
        end
    end
endmodule


// bcd to 7 seg, active low, gfedcba
module seg_decoder (
    input [3:0] bcd,
    output reg [6:0] seg
);
    always @(*) begin
        case (bcd)
            0: seg = 7'b1000000;
            1: seg = 7'b1111001;
            2: seg = 7'b0100100;
            3: seg = 7'b0110000;
            4: seg = 7'b0011001;
            5: seg = 7'b0010010;
            6: seg = 7'b0000010;
            7: seg = 7'b1111000;
            8: seg = 7'b0000000;
            9: seg = 7'b0010000;
            default: seg = 7'b1111111;
        endcase
    end
endmodule
