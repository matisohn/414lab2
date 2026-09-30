// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
// Date        : Tue Sep 22 19:48:34 2026
// Host        : laptopDeDylan running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/ddebr/Verilog/project_2/project_2.sim/sim_1/impl/func/xsim/tb_addersubtractor4Bit_func_impl.v
// Design      : TopLevel
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "e4a36374" *) 
(* NotValidForBitStream *)
(* \DesignAttr:TELEMETRY_DATA  = "{\n  \"Design Characteristics Data\": {\n    \"Power Summary\": {\n      \"Dynamic Power\": {\n        \"Value\": \"0.029\"\n      },\n      \"Static Power\": {\n        \"Value\": \"0.097\"\n      },\n      \"Total Power\": {\n        \"Value\": \"0.126\"\n      }\n    },\n    \"Timing Summary\": {\n      \"Status\": \"All user specified timing constraints are met.\",\n      \"Timing requirement\": \"10.000000\",\n      \"Total Hold Slack (THS)\": \"0.000000\",\n      \"Total Negative Slack (TNS)\": \"0.000000\",\n      \"Worst Hold Slack (WHS)\": \"0.200869\",\n      \"Worst Negative Slack (WNS)\": \"7.622118\"\n    },\n    \"Utilization Report\": {\n      \"BRAM\": {\n        \"Available\": \"135\",\n        \"Utilization\": \"0\"\n      },\n      \"BUFGCTRL\": {\n        \"Available\": \"32\",\n        \"Utilization\": \"1\"\n      },\n      \"DSP\": {\n        \"Available\": \"240\",\n        \"Utilization\": \"0\"\n      },\n      \"F7MUX\": {\n        \"Available\": \"31700\",\n        \"Utilization\": \"0\"\n      },\n      \"F8MUX\": {\n        \"Available\": \"15850\",\n        \"Utilization\": \"0\"\n      },\n      \"LUT\": {\n        \"Available\": \"63400\",\n        \"Utilization\": \"23\"\n      },\n      \"LUTAsLogic\": {\n        \"Available\": \"63400\",\n        \"Utilization\": \"23\"\n      },\n      \"LUTAsMem\": {\n        \"Available\": \"19000\",\n        \"Utilization\": \"0\"\n      },\n      \"MMCM\": {\n        \"Available\": \"6\",\n        \"Utilization\": \"0\"\n      },\n      \"PLL\": {\n        \"Available\": \"6\",\n        \"Utilization\": \"0\"\n      },\n      \"REG\": {\n        \"Available\": \"126800\",\n        \"Utilization\": \"25\"\n      }\n    }\n  },\n  \"Design Flow Data\": {\n    \"Design Data\": {\n      \"Design Mode\": \"Project flow\",\n      \"Top Methodology\": \"Verilog\"\n    },\n    \"Implementation\": {\n      \"Opt Design\": {\n        \"Run Time\": \"29 seconds\"\n      },\n      \"Place Design\": {\n        \"Run Time\": \"5.746000 seconds\"\n      },\n      \"Route Design\": {\n        \"Run Time\": \"92.607000 seconds\"\n      }\n    },\n    \"Synthesis\": {\n      \"Run Time\": \"98.705002 seconds\"\n    }\n  }\n}" *) 
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module TopLevel
   (A,
    B,
    E,
    Clk,
    rst,
    sev_seg_leds,
    led_disable,
    led_enable,
    OF,
    sign);
  input [3:0]A;
  input [3:0]B;
  input E;
  input Clk;
  input rst;
  output [7:0]sev_seg_leds;
  output [4:0]led_disable;
  output [1:0]led_enable;
  output OF;
  output sign;

  wire [3:0]A;
  wire \AS/Two_Three ;
  wire [3:0]A_IBUF;
  wire [3:0]B;
  wire [3:0]B_IBUF;
  wire Clk;
  wire Clk_IBUF;
  wire Clk_IBUF_BUFG;
  wire E;
  wire E_IBUF;
  wire OF;
  wire OF_OBUF;
  wire [3:3]Sum;
  wire [4:0]led_disable;
  wire [1:0]led_enable;
  wire [1:0]led_enable_OBUF;
  wire rst;
  wire rst_IBUF;
  wire [7:0]sev_seg_leds;
  wire [7:1]sev_seg_leds_OBUF;
  wire sign;
  wire sign_OBUF;

  IBUF \A_IBUF[0]_inst 
       (.I(A[0]),
        .O(A_IBUF[0]));
  IBUF \A_IBUF[1]_inst 
       (.I(A[1]),
        .O(A_IBUF[1]));
  IBUF \A_IBUF[2]_inst 
       (.I(A[2]),
        .O(A_IBUF[2]));
  IBUF \A_IBUF[3]_inst 
       (.I(A[3]),
        .O(A_IBUF[3]));
  IBUF \B_IBUF[0]_inst 
       (.I(B[0]),
        .O(B_IBUF[0]));
  IBUF \B_IBUF[1]_inst 
       (.I(B[1]),
        .O(B_IBUF[1]));
  IBUF \B_IBUF[2]_inst 
       (.I(B[2]),
        .O(B_IBUF[2]));
  IBUF \B_IBUF[3]_inst 
       (.I(B[3]),
        .O(B_IBUF[3]));
  BUFG Clk_IBUF_BUFG_inst
       (.I(Clk_IBUF),
        .O(Clk_IBUF_BUFG));
  IBUF Clk_IBUF_inst
       (.I(Clk),
        .O(Clk_IBUF));
  IBUF E_IBUF_inst
       (.I(E),
        .O(E_IBUF));
  OBUF OF_OBUF_inst
       (.I(OF_OBUF),
        .O(OF));
  LUT6 #(
    .INIT(64'h4211441822184288)) 
    OF_OBUF_inst_i_1
       (.I0(A_IBUF[3]),
        .I1(B_IBUF[3]),
        .I2(A_IBUF[2]),
        .I3(E_IBUF),
        .I4(B_IBUF[2]),
        .I5(\AS/Two_Three ),
        .O(OF_OBUF));
  sev_seg_with_clk_top Seg
       (.AS(rst_IBUF),
        .A_IBUF(A_IBUF),
        .B_IBUF(B_IBUF),
        .Clk(Clk_IBUF_BUFG),
        .E_IBUF(E_IBUF),
        .Q(led_enable_OBUF),
        .Two_Three(\AS/Two_Three ),
        .sev_seg_leds_OBUF(sev_seg_leds_OBUF));
  OBUF \led_disable_OBUF[0]_inst 
       (.I(1'b1),
        .O(led_disable[0]));
  OBUF \led_disable_OBUF[1]_inst 
       (.I(1'b1),
        .O(led_disable[1]));
  OBUF \led_disable_OBUF[2]_inst 
       (.I(1'b1),
        .O(led_disable[2]));
  OBUF \led_disable_OBUF[3]_inst 
       (.I(1'b1),
        .O(led_disable[3]));
  OBUF \led_disable_OBUF[4]_inst 
       (.I(1'b1),
        .O(led_disable[4]));
  OBUF \led_enable_OBUF[0]_inst 
       (.I(led_enable_OBUF[0]),
        .O(led_enable[0]));
  OBUF \led_enable_OBUF[1]_inst 
       (.I(led_enable_OBUF[1]),
        .O(led_enable[1]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  OBUF \sev_seg_leds_OBUF[0]_inst 
       (.I(1'b1),
        .O(sev_seg_leds[0]));
  OBUF \sev_seg_leds_OBUF[1]_inst 
       (.I(sev_seg_leds_OBUF[1]),
        .O(sev_seg_leds[1]));
  OBUF \sev_seg_leds_OBUF[2]_inst 
       (.I(sev_seg_leds_OBUF[2]),
        .O(sev_seg_leds[2]));
  OBUF \sev_seg_leds_OBUF[3]_inst 
       (.I(sev_seg_leds_OBUF[3]),
        .O(sev_seg_leds[3]));
  OBUF \sev_seg_leds_OBUF[4]_inst 
       (.I(sev_seg_leds_OBUF[4]),
        .O(sev_seg_leds[4]));
  OBUF \sev_seg_leds_OBUF[5]_inst 
       (.I(sev_seg_leds_OBUF[5]),
        .O(sev_seg_leds[5]));
  OBUF \sev_seg_leds_OBUF[6]_inst 
       (.I(sev_seg_leds_OBUF[6]),
        .O(sev_seg_leds[6]));
  OBUF \sev_seg_leds_OBUF[7]_inst 
       (.I(sev_seg_leds_OBUF[7]),
        .O(sev_seg_leds[7]));
  OBUF sign_OBUF_inst
       (.I(sign_OBUF),
        .O(sign));
  LUT6 #(
    .INIT(64'h4DB2E817B24D17E8)) 
    sign_i_1
       (.I0(A_IBUF[2]),
        .I1(B_IBUF[2]),
        .I2(\AS/Two_Three ),
        .I3(A_IBUF[3]),
        .I4(E_IBUF),
        .I5(B_IBUF[3]),
        .O(Sum));
  FDRE #(
    .INIT(1'b0)) 
    sign_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Sum),
        .Q(sign_OBUF),
        .R(1'b0));
endmodule

module ip_clk_div
   (I4,
    Clk);
  output I4;
  input Clk;

  wire Clk;
  wire I4;
  wire clk_out1_i_1_n_0;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[3]_i_2_n_0 ;
  wire [3:0]count_reg;

  LUT5 #(
    .INIT(32'hFFF70008)) 
    clk_out1_i_1
       (.I0(count_reg[3]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .I3(count_reg[1]),
        .I4(I4),
        .O(clk_out1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_out1_reg
       (.C(Clk),
        .CE(1'b1),
        .D(clk_out1_i_1_n_0),
        .Q(I4),
        .R(1'b0));
  (* \PinAttr:I0:HOLD_DETOUR  = "191" *) 
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .O(\count[0]_i_1_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "191" *) 
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .O(\count[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \count[3]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[3]),
        .O(\count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_2 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .I3(count_reg[3]),
        .O(\count[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(Clk),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(count_reg[0]),
        .R(\count[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(Clk),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(count_reg[1]),
        .R(\count[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(Clk),
        .CE(1'b1),
        .D(\count[2]_i_1_n_0 ),
        .Q(count_reg[2]),
        .R(\count[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(Clk),
        .CE(1'b1),
        .D(\count[3]_i_2_n_0 ),
        .Q(count_reg[3]),
        .R(\count[3]_i_1_n_0 ));
endmodule

module sev_seg_with_clk
   (sev_seg_leds_OBUF,
    Two_Three,
    Q,
    B_IBUF,
    A_IBUF,
    E_IBUF,
    CLK,
    AS);
  output [6:0]sev_seg_leds_OBUF;
  output Two_Three;
  output [1:0]Q;
  input [3:0]B_IBUF;
  input [3:0]A_IBUF;
  input E_IBUF;
  input CLK;
  input [0:0]AS;

  wire [0:0]AS;
  wire \AS/FA4/s1 ;
  wire \AS/One_Two ;
  wire [3:0]A_IBUF;
  wire [3:0]B_IBUF;
  wire CLK;
  wire E_IBUF;
  wire [1:0]Q;
  wire Two_Three;
  wire \led_enable[0]_i_1_n_0 ;
  wire \led_enable[1]_i_1_n_0 ;
  wire [1:0]sel;
  wire \sel[0]_i_1_n_0 ;
  wire \sel[1]_i_1_n_0 ;
  wire [6:0]sev_seg_leds_OBUF;
  wire \sev_seg_leds_OBUF[7]_inst_i_2_n_0 ;
  wire \sev_seg_leds_OBUF[7]_inst_i_3_n_0 ;
  wire \sev_seg_leds_OBUF[7]_inst_i_4_n_0 ;
  wire \sev_seg_leds_OBUF[7]_inst_i_5_n_0 ;
  wire \sev_seg_leds_OBUF[7]_inst_i_6_n_0 ;
  wire \sev_seg_leds_OBUF[7]_inst_i_7_n_0 ;

  LUT5 #(
    .INIT(32'hF7EA40A2)) 
    OF_OBUF_inst_i_2
       (.I0(E_IBUF),
        .I1(B_IBUF[0]),
        .I2(A_IBUF[0]),
        .I3(B_IBUF[1]),
        .I4(A_IBUF[1]),
        .O(Two_Three));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \led_enable[0]_i_1 
       (.I0(sel[1]),
        .I1(sel[0]),
        .O(\led_enable[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \led_enable[1]_i_1 
       (.I0(sel[1]),
        .I1(sel[0]),
        .O(\led_enable[1]_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \led_enable_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\led_enable[0]_i_1_n_0 ),
        .PRE(AS),
        .Q(Q[0]));
  FDPE #(
    .INIT(1'b1)) 
    \led_enable_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\led_enable[1]_i_1_n_0 ),
        .PRE(AS),
        .Q(Q[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \sel[0]_i_1 
       (.I0(sel[0]),
        .I1(sel[1]),
        .O(\sel[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sel[1]_i_1 
       (.I0(sel[0]),
        .I1(sel[1]),
        .O(\sel[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \sel_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AS),
        .D(\sel[0]_i_1_n_0 ),
        .Q(sel[0]));
  FDCE #(
    .INIT(1'b0)) 
    \sel_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AS),
        .D(\sel[1]_i_1_n_0 ),
        .Q(sel[1]));
  LUT6 #(
    .INIT(64'h00FE0000FE010100)) 
    \sev_seg_leds_OBUF[1]_inst_i_1 
       (.I0(\sev_seg_leds_OBUF[7]_inst_i_2_n_0 ),
        .I1(\sev_seg_leds_OBUF[7]_inst_i_3_n_0 ),
        .I2(\sev_seg_leds_OBUF[7]_inst_i_4_n_0 ),
        .I3(\sev_seg_leds_OBUF[7]_inst_i_6_n_0 ),
        .I4(\sev_seg_leds_OBUF[7]_inst_i_5_n_0 ),
        .I5(\sev_seg_leds_OBUF[7]_inst_i_7_n_0 ),
        .O(sev_seg_leds_OBUF[0]));
  LUT6 #(
    .INIT(64'hFEFE0100FF00FE00)) 
    \sev_seg_leds_OBUF[2]_inst_i_1 
       (.I0(\sev_seg_leds_OBUF[7]_inst_i_2_n_0 ),
        .I1(\sev_seg_leds_OBUF[7]_inst_i_3_n_0 ),
        .I2(\sev_seg_leds_OBUF[7]_inst_i_4_n_0 ),
        .I3(\sev_seg_leds_OBUF[7]_inst_i_6_n_0 ),
        .I4(\sev_seg_leds_OBUF[7]_inst_i_7_n_0 ),
        .I5(\sev_seg_leds_OBUF[7]_inst_i_5_n_0 ),
        .O(sev_seg_leds_OBUF[1]));
  LUT6 #(
    .INIT(64'hFEFE00FE00010000)) 
    \sev_seg_leds_OBUF[3]_inst_i_1 
       (.I0(\sev_seg_leds_OBUF[7]_inst_i_2_n_0 ),
        .I1(\sev_seg_leds_OBUF[7]_inst_i_3_n_0 ),
        .I2(\sev_seg_leds_OBUF[7]_inst_i_4_n_0 ),
        .I3(\sev_seg_leds_OBUF[7]_inst_i_5_n_0 ),
        .I4(\sev_seg_leds_OBUF[7]_inst_i_7_n_0 ),
        .I5(\sev_seg_leds_OBUF[7]_inst_i_6_n_0 ),
        .O(sev_seg_leds_OBUF[2]));
  LUT6 #(
    .INIT(64'hFF0000FE00010100)) 
    \sev_seg_leds_OBUF[4]_inst_i_1 
       (.I0(\sev_seg_leds_OBUF[7]_inst_i_2_n_0 ),
        .I1(\sev_seg_leds_OBUF[7]_inst_i_3_n_0 ),
        .I2(\sev_seg_leds_OBUF[7]_inst_i_4_n_0 ),
        .I3(\sev_seg_leds_OBUF[7]_inst_i_6_n_0 ),
        .I4(\sev_seg_leds_OBUF[7]_inst_i_5_n_0 ),
        .I5(\sev_seg_leds_OBUF[7]_inst_i_7_n_0 ),
        .O(sev_seg_leds_OBUF[3]));
  LUT6 #(
    .INIT(64'h010101FF00010000)) 
    \sev_seg_leds_OBUF[5]_inst_i_1 
       (.I0(\sev_seg_leds_OBUF[7]_inst_i_2_n_0 ),
        .I1(\sev_seg_leds_OBUF[7]_inst_i_3_n_0 ),
        .I2(\sev_seg_leds_OBUF[7]_inst_i_4_n_0 ),
        .I3(\sev_seg_leds_OBUF[7]_inst_i_7_n_0 ),
        .I4(\sev_seg_leds_OBUF[7]_inst_i_6_n_0 ),
        .I5(\sev_seg_leds_OBUF[7]_inst_i_5_n_0 ),
        .O(sev_seg_leds_OBUF[4]));
  LUT6 #(
    .INIT(64'h01010001FE010000)) 
    \sev_seg_leds_OBUF[6]_inst_i_1 
       (.I0(\sev_seg_leds_OBUF[7]_inst_i_2_n_0 ),
        .I1(\sev_seg_leds_OBUF[7]_inst_i_3_n_0 ),
        .I2(\sev_seg_leds_OBUF[7]_inst_i_4_n_0 ),
        .I3(\sev_seg_leds_OBUF[7]_inst_i_6_n_0 ),
        .I4(\sev_seg_leds_OBUF[7]_inst_i_5_n_0 ),
        .I5(\sev_seg_leds_OBUF[7]_inst_i_7_n_0 ),
        .O(sev_seg_leds_OBUF[5]));
  LUT6 #(
    .INIT(64'h0100000000FE0101)) 
    \sev_seg_leds_OBUF[7]_inst_i_1 
       (.I0(\sev_seg_leds_OBUF[7]_inst_i_2_n_0 ),
        .I1(\sev_seg_leds_OBUF[7]_inst_i_3_n_0 ),
        .I2(\sev_seg_leds_OBUF[7]_inst_i_4_n_0 ),
        .I3(\sev_seg_leds_OBUF[7]_inst_i_5_n_0 ),
        .I4(\sev_seg_leds_OBUF[7]_inst_i_6_n_0 ),
        .I5(\sev_seg_leds_OBUF[7]_inst_i_7_n_0 ),
        .O(sev_seg_leds_OBUF[6]));
  LUT6 #(
    .INIT(64'h6556A66A00000000)) 
    \sev_seg_leds_OBUF[7]_inst_i_2 
       (.I0(\AS/FA4/s1 ),
        .I1(Two_Three),
        .I2(B_IBUF[2]),
        .I3(E_IBUF),
        .I4(A_IBUF[2]),
        .I5(\sel[1]_i_1_n_0 ),
        .O(\sev_seg_leds_OBUF[7]_inst_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \sev_seg_leds_OBUF[7]_inst_i_3 
       (.I0(A_IBUF[3]),
        .I1(sel[1]),
        .I2(sel[0]),
        .O(\sev_seg_leds_OBUF[7]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \sev_seg_leds_OBUF[7]_inst_i_4 
       (.I0(B_IBUF[3]),
        .I1(sel[1]),
        .I2(sel[0]),
        .I3(A_IBUF[3]),
        .O(\sev_seg_leds_OBUF[7]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hB68A)) 
    \sev_seg_leds_OBUF[7]_inst_i_5 
       (.I0(A_IBUF[0]),
        .I1(sel[0]),
        .I2(sel[1]),
        .I3(B_IBUF[0]),
        .O(\sev_seg_leds_OBUF[7]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0FF69F0F00096F0)) 
    \sev_seg_leds_OBUF[7]_inst_i_6 
       (.I0(E_IBUF),
        .I1(Two_Three),
        .I2(A_IBUF[2]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(B_IBUF[2]),
        .O(\sev_seg_leds_OBUF[7]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF0FF69F0F00096F0)) 
    \sev_seg_leds_OBUF[7]_inst_i_7 
       (.I0(E_IBUF),
        .I1(\AS/One_Two ),
        .I2(A_IBUF[1]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(B_IBUF[1]),
        .O(\sev_seg_leds_OBUF[7]_inst_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \sev_seg_leds_OBUF[7]_inst_i_8 
       (.I0(B_IBUF[3]),
        .I1(E_IBUF),
        .I2(A_IBUF[3]),
        .O(\AS/FA4/s1 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \sev_seg_leds_OBUF[7]_inst_i_9 
       (.I0(E_IBUF),
        .I1(B_IBUF[0]),
        .I2(A_IBUF[0]),
        .O(\AS/One_Two ));
endmodule

module sev_seg_with_clk_top
   (sev_seg_leds_OBUF,
    Two_Three,
    Q,
    Clk,
    B_IBUF,
    A_IBUF,
    E_IBUF,
    AS);
  output [6:0]sev_seg_leds_OBUF;
  output Two_Three;
  output [1:0]Q;
  input Clk;
  input [3:0]B_IBUF;
  input [3:0]A_IBUF;
  input E_IBUF;
  input [0:0]AS;

  wire [0:0]AS;
  wire [3:0]A_IBUF;
  wire [3:0]B_IBUF;
  wire Clk;
  wire E_IBUF;
  wire [1:0]Q;
  wire Two_Three;
  wire clk;
  wire clk_5M_n_0;
  wire \clk_div[0]_i_2_n_0 ;
  wire \clk_div_reg[0]_i_1_n_0 ;
  wire \clk_div_reg[0]_i_1_n_4 ;
  wire \clk_div_reg[0]_i_1_n_5 ;
  wire \clk_div_reg[0]_i_1_n_6 ;
  wire \clk_div_reg[0]_i_1_n_7 ;
  wire \clk_div_reg[12]_i_1_n_5 ;
  wire \clk_div_reg[12]_i_1_n_6 ;
  wire \clk_div_reg[12]_i_1_n_7 ;
  wire \clk_div_reg[4]_i_1_n_0 ;
  wire \clk_div_reg[4]_i_1_n_4 ;
  wire \clk_div_reg[4]_i_1_n_5 ;
  wire \clk_div_reg[4]_i_1_n_6 ;
  wire \clk_div_reg[4]_i_1_n_7 ;
  wire \clk_div_reg[8]_i_1_n_0 ;
  wire \clk_div_reg[8]_i_1_n_4 ;
  wire \clk_div_reg[8]_i_1_n_5 ;
  wire \clk_div_reg[8]_i_1_n_6 ;
  wire \clk_div_reg[8]_i_1_n_7 ;
  wire \clk_div_reg_n_0_[0] ;
  wire \clk_div_reg_n_0_[10] ;
  wire \clk_div_reg_n_0_[11] ;
  wire \clk_div_reg_n_0_[12] ;
  wire \clk_div_reg_n_0_[13] ;
  wire \clk_div_reg_n_0_[1] ;
  wire \clk_div_reg_n_0_[2] ;
  wire \clk_div_reg_n_0_[3] ;
  wire \clk_div_reg_n_0_[4] ;
  wire \clk_div_reg_n_0_[5] ;
  wire \clk_div_reg_n_0_[6] ;
  wire \clk_div_reg_n_0_[7] ;
  wire \clk_div_reg_n_0_[8] ;
  wire \clk_div_reg_n_0_[9] ;
  wire [6:0]sev_seg_leds_OBUF;
  wire [2:0]\NLW_clk_div_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_clk_div_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_clk_div_reg[12]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_clk_div_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_clk_div_reg[8]_i_1_CO_UNCONNECTED ;

  ip_clk_div clk_5M
       (.Clk(Clk),
        .I4(clk_5M_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_div[0]_i_2 
       (.I0(\clk_div_reg_n_0_[0] ),
        .O(\clk_div[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[0] 
       (.C(clk_5M_n_0),
        .CE(1'b1),
        .D(\clk_div_reg[0]_i_1_n_7 ),
        .Q(\clk_div_reg_n_0_[0] ),
        .R(AS));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_div_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\clk_div_reg[0]_i_1_n_0 ,\NLW_clk_div_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clk_div_reg[0]_i_1_n_4 ,\clk_div_reg[0]_i_1_n_5 ,\clk_div_reg[0]_i_1_n_6 ,\clk_div_reg[0]_i_1_n_7 }),
        .S({\clk_div_reg_n_0_[3] ,\clk_div_reg_n_0_[2] ,\clk_div_reg_n_0_[1] ,\clk_div[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[10] 
       (.C(clk_5M_n_0),
        .CE(1'b1),
        .D(\clk_div_reg[8]_i_1_n_5 ),
        .Q(\clk_div_reg_n_0_[10] ),
        .R(AS));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[11] 
       (.C(clk_5M_n_0),
        .CE(1'b1),
        .D(\clk_div_reg[8]_i_1_n_4 ),
        .Q(\clk_div_reg_n_0_[11] ),
        .R(AS));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[12] 
       (.C(clk_5M_n_0),
        .CE(1'b1),
        .D(\clk_div_reg[12]_i_1_n_7 ),
        .Q(\clk_div_reg_n_0_[12] ),
        .R(AS));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_div_reg[12]_i_1 
       (.CI(\clk_div_reg[8]_i_1_n_0 ),
        .CO(\NLW_clk_div_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_clk_div_reg[12]_i_1_O_UNCONNECTED [3],\clk_div_reg[12]_i_1_n_5 ,\clk_div_reg[12]_i_1_n_6 ,\clk_div_reg[12]_i_1_n_7 }),
        .S({1'b0,clk,\clk_div_reg_n_0_[13] ,\clk_div_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[13] 
       (.C(clk_5M_n_0),
        .CE(1'b1),
        .D(\clk_div_reg[12]_i_1_n_6 ),
        .Q(\clk_div_reg_n_0_[13] ),
        .R(AS));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[14] 
       (.C(clk_5M_n_0),
        .CE(1'b1),
        .D(\clk_div_reg[12]_i_1_n_5 ),
        .Q(clk),
        .R(AS));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[1] 
       (.C(clk_5M_n_0),
        .CE(1'b1),
        .D(\clk_div_reg[0]_i_1_n_6 ),
        .Q(\clk_div_reg_n_0_[1] ),
        .R(AS));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[2] 
       (.C(clk_5M_n_0),
        .CE(1'b1),
        .D(\clk_div_reg[0]_i_1_n_5 ),
        .Q(\clk_div_reg_n_0_[2] ),
        .R(AS));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[3] 
       (.C(clk_5M_n_0),
        .CE(1'b1),
        .D(\clk_div_reg[0]_i_1_n_4 ),
        .Q(\clk_div_reg_n_0_[3] ),
        .R(AS));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[4] 
       (.C(clk_5M_n_0),
        .CE(1'b1),
        .D(\clk_div_reg[4]_i_1_n_7 ),
        .Q(\clk_div_reg_n_0_[4] ),
        .R(AS));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_div_reg[4]_i_1 
       (.CI(\clk_div_reg[0]_i_1_n_0 ),
        .CO({\clk_div_reg[4]_i_1_n_0 ,\NLW_clk_div_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_div_reg[4]_i_1_n_4 ,\clk_div_reg[4]_i_1_n_5 ,\clk_div_reg[4]_i_1_n_6 ,\clk_div_reg[4]_i_1_n_7 }),
        .S({\clk_div_reg_n_0_[7] ,\clk_div_reg_n_0_[6] ,\clk_div_reg_n_0_[5] ,\clk_div_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[5] 
       (.C(clk_5M_n_0),
        .CE(1'b1),
        .D(\clk_div_reg[4]_i_1_n_6 ),
        .Q(\clk_div_reg_n_0_[5] ),
        .R(AS));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[6] 
       (.C(clk_5M_n_0),
        .CE(1'b1),
        .D(\clk_div_reg[4]_i_1_n_5 ),
        .Q(\clk_div_reg_n_0_[6] ),
        .R(AS));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[7] 
       (.C(clk_5M_n_0),
        .CE(1'b1),
        .D(\clk_div_reg[4]_i_1_n_4 ),
        .Q(\clk_div_reg_n_0_[7] ),
        .R(AS));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[8] 
       (.C(clk_5M_n_0),
        .CE(1'b1),
        .D(\clk_div_reg[8]_i_1_n_7 ),
        .Q(\clk_div_reg_n_0_[8] ),
        .R(AS));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_div_reg[8]_i_1 
       (.CI(\clk_div_reg[4]_i_1_n_0 ),
        .CO({\clk_div_reg[8]_i_1_n_0 ,\NLW_clk_div_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_div_reg[8]_i_1_n_4 ,\clk_div_reg[8]_i_1_n_5 ,\clk_div_reg[8]_i_1_n_6 ,\clk_div_reg[8]_i_1_n_7 }),
        .S({\clk_div_reg_n_0_[11] ,\clk_div_reg_n_0_[10] ,\clk_div_reg_n_0_[9] ,\clk_div_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[9] 
       (.C(clk_5M_n_0),
        .CE(1'b1),
        .D(\clk_div_reg[8]_i_1_n_6 ),
        .Q(\clk_div_reg_n_0_[9] ),
        .R(AS));
  sev_seg_with_clk display_driver
       (.AS(AS),
        .A_IBUF(A_IBUF),
        .B_IBUF(B_IBUF),
        .CLK(clk),
        .E_IBUF(E_IBUF),
        .Q(Q),
        .Two_Three(Two_Three),
        .sev_seg_leds_OBUF(sev_seg_leds_OBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
