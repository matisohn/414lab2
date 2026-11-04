// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
// Date        : Fri Oct 30 10:50:19 2026
// Host        : laptopDeDylan running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/vivado/lab5/RISC/RISC.sim/sim_1/synth/func/xsim/tb_Register_File_func_synth.v
// Design      : Register_File
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
(* \DesignAttr:TELEMETRY_DATA  = "{\n  \"Design Characteristics Data\": {\n    \"Simulation\": {\n      \"Target Simulator\": \"XSim\",\n      \"Run Time\": {\n        \"behavioral \": \"6.729000\"\n      }\n    }\n  },\n  \"Design Flow Data\": {\n    \"Design Data\": {\n      \"Design Mode\": \"Project flow\",\n      \"Top Methodology\": \"Verilog\"\n    },\n    \"Synthesis\": {\n      \"Run Time\": \"28.249000 seconds\"\n    }\n  }\n}" *) 
module Register_File
   (clk,
    data_path,
    read_write,
    D_address,
    A_address,
    B_address,
    A_out,
    B_out);
  input clk;
  input [15:0]data_path;
  input read_write;
  input [3:0]D_address;
  input [3:0]A_address;
  input [3:0]B_address;
  output [15:0]A_out;
  output [15:0]B_out;

  wire [3:0]A_address;
  wire [3:0]A_address_IBUF;
  wire [15:0]A_out;
  wire [15:0]A_out0;
  wire [15:0]A_out_OBUF;
  wire [3:0]B_address;
  wire [3:0]B_address_IBUF;
  wire [15:0]B_out;
  wire [15:0]B_out0;
  wire [15:0]B_out_OBUF;
  wire [3:0]D_address;
  wire [3:0]D_address_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [15:0]data_path;
  wire [15:0]data_path_IBUF;
  wire p_0_in;
  wire read_write;
  wire read_write_IBUF;
  wire [1:0]NLW_registers_reg_r1_0_15_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r1_0_15_12_15_DOC_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r1_0_15_12_15_DOD_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r1_0_15_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r2_0_15_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r2_0_15_12_15_DOC_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r2_0_15_12_15_DOD_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r2_0_15_6_11_DOD_UNCONNECTED;

  IBUF \A_address_IBUF[0]_inst 
       (.I(A_address[0]),
        .O(A_address_IBUF[0]));
  IBUF \A_address_IBUF[1]_inst 
       (.I(A_address[1]),
        .O(A_address_IBUF[1]));
  IBUF \A_address_IBUF[2]_inst 
       (.I(A_address[2]),
        .O(A_address_IBUF[2]));
  IBUF \A_address_IBUF[3]_inst 
       (.I(A_address[3]),
        .O(A_address_IBUF[3]));
  OBUF \A_out_OBUF[0]_inst 
       (.I(A_out_OBUF[0]),
        .O(A_out[0]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \A_out_OBUF[0]_inst_i_1 
       (.I0(A_out0[0]),
        .I1(A_address_IBUF[0]),
        .I2(A_address_IBUF[1]),
        .I3(A_address_IBUF[3]),
        .I4(A_address_IBUF[2]),
        .O(A_out_OBUF[0]));
  OBUF \A_out_OBUF[10]_inst 
       (.I(A_out_OBUF[10]),
        .O(A_out[10]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \A_out_OBUF[10]_inst_i_1 
       (.I0(A_out0[10]),
        .I1(A_address_IBUF[0]),
        .I2(A_address_IBUF[1]),
        .I3(A_address_IBUF[3]),
        .I4(A_address_IBUF[2]),
        .O(A_out_OBUF[10]));
  OBUF \A_out_OBUF[11]_inst 
       (.I(A_out_OBUF[11]),
        .O(A_out[11]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \A_out_OBUF[11]_inst_i_1 
       (.I0(A_out0[11]),
        .I1(A_address_IBUF[0]),
        .I2(A_address_IBUF[1]),
        .I3(A_address_IBUF[3]),
        .I4(A_address_IBUF[2]),
        .O(A_out_OBUF[11]));
  OBUF \A_out_OBUF[12]_inst 
       (.I(A_out_OBUF[12]),
        .O(A_out[12]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \A_out_OBUF[12]_inst_i_1 
       (.I0(A_out0[12]),
        .I1(A_address_IBUF[0]),
        .I2(A_address_IBUF[1]),
        .I3(A_address_IBUF[3]),
        .I4(A_address_IBUF[2]),
        .O(A_out_OBUF[12]));
  OBUF \A_out_OBUF[13]_inst 
       (.I(A_out_OBUF[13]),
        .O(A_out[13]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \A_out_OBUF[13]_inst_i_1 
       (.I0(A_out0[13]),
        .I1(A_address_IBUF[0]),
        .I2(A_address_IBUF[1]),
        .I3(A_address_IBUF[3]),
        .I4(A_address_IBUF[2]),
        .O(A_out_OBUF[13]));
  OBUF \A_out_OBUF[14]_inst 
       (.I(A_out_OBUF[14]),
        .O(A_out[14]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \A_out_OBUF[14]_inst_i_1 
       (.I0(A_out0[14]),
        .I1(A_address_IBUF[0]),
        .I2(A_address_IBUF[1]),
        .I3(A_address_IBUF[3]),
        .I4(A_address_IBUF[2]),
        .O(A_out_OBUF[14]));
  OBUF \A_out_OBUF[15]_inst 
       (.I(A_out_OBUF[15]),
        .O(A_out[15]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \A_out_OBUF[15]_inst_i_1 
       (.I0(A_out0[15]),
        .I1(A_address_IBUF[0]),
        .I2(A_address_IBUF[1]),
        .I3(A_address_IBUF[3]),
        .I4(A_address_IBUF[2]),
        .O(A_out_OBUF[15]));
  OBUF \A_out_OBUF[1]_inst 
       (.I(A_out_OBUF[1]),
        .O(A_out[1]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \A_out_OBUF[1]_inst_i_1 
       (.I0(A_out0[1]),
        .I1(A_address_IBUF[0]),
        .I2(A_address_IBUF[1]),
        .I3(A_address_IBUF[3]),
        .I4(A_address_IBUF[2]),
        .O(A_out_OBUF[1]));
  OBUF \A_out_OBUF[2]_inst 
       (.I(A_out_OBUF[2]),
        .O(A_out[2]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \A_out_OBUF[2]_inst_i_1 
       (.I0(A_out0[2]),
        .I1(A_address_IBUF[0]),
        .I2(A_address_IBUF[1]),
        .I3(A_address_IBUF[3]),
        .I4(A_address_IBUF[2]),
        .O(A_out_OBUF[2]));
  OBUF \A_out_OBUF[3]_inst 
       (.I(A_out_OBUF[3]),
        .O(A_out[3]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \A_out_OBUF[3]_inst_i_1 
       (.I0(A_out0[3]),
        .I1(A_address_IBUF[0]),
        .I2(A_address_IBUF[1]),
        .I3(A_address_IBUF[3]),
        .I4(A_address_IBUF[2]),
        .O(A_out_OBUF[3]));
  OBUF \A_out_OBUF[4]_inst 
       (.I(A_out_OBUF[4]),
        .O(A_out[4]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \A_out_OBUF[4]_inst_i_1 
       (.I0(A_out0[4]),
        .I1(A_address_IBUF[0]),
        .I2(A_address_IBUF[1]),
        .I3(A_address_IBUF[3]),
        .I4(A_address_IBUF[2]),
        .O(A_out_OBUF[4]));
  OBUF \A_out_OBUF[5]_inst 
       (.I(A_out_OBUF[5]),
        .O(A_out[5]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \A_out_OBUF[5]_inst_i_1 
       (.I0(A_out0[5]),
        .I1(A_address_IBUF[0]),
        .I2(A_address_IBUF[1]),
        .I3(A_address_IBUF[3]),
        .I4(A_address_IBUF[2]),
        .O(A_out_OBUF[5]));
  OBUF \A_out_OBUF[6]_inst 
       (.I(A_out_OBUF[6]),
        .O(A_out[6]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \A_out_OBUF[6]_inst_i_1 
       (.I0(A_out0[6]),
        .I1(A_address_IBUF[0]),
        .I2(A_address_IBUF[1]),
        .I3(A_address_IBUF[3]),
        .I4(A_address_IBUF[2]),
        .O(A_out_OBUF[6]));
  OBUF \A_out_OBUF[7]_inst 
       (.I(A_out_OBUF[7]),
        .O(A_out[7]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \A_out_OBUF[7]_inst_i_1 
       (.I0(A_out0[7]),
        .I1(A_address_IBUF[0]),
        .I2(A_address_IBUF[1]),
        .I3(A_address_IBUF[3]),
        .I4(A_address_IBUF[2]),
        .O(A_out_OBUF[7]));
  OBUF \A_out_OBUF[8]_inst 
       (.I(A_out_OBUF[8]),
        .O(A_out[8]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \A_out_OBUF[8]_inst_i_1 
       (.I0(A_out0[8]),
        .I1(A_address_IBUF[0]),
        .I2(A_address_IBUF[1]),
        .I3(A_address_IBUF[3]),
        .I4(A_address_IBUF[2]),
        .O(A_out_OBUF[8]));
  OBUF \A_out_OBUF[9]_inst 
       (.I(A_out_OBUF[9]),
        .O(A_out[9]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \A_out_OBUF[9]_inst_i_1 
       (.I0(A_out0[9]),
        .I1(A_address_IBUF[0]),
        .I2(A_address_IBUF[1]),
        .I3(A_address_IBUF[3]),
        .I4(A_address_IBUF[2]),
        .O(A_out_OBUF[9]));
  IBUF \B_address_IBUF[0]_inst 
       (.I(B_address[0]),
        .O(B_address_IBUF[0]));
  IBUF \B_address_IBUF[1]_inst 
       (.I(B_address[1]),
        .O(B_address_IBUF[1]));
  IBUF \B_address_IBUF[2]_inst 
       (.I(B_address[2]),
        .O(B_address_IBUF[2]));
  IBUF \B_address_IBUF[3]_inst 
       (.I(B_address[3]),
        .O(B_address_IBUF[3]));
  OBUF \B_out_OBUF[0]_inst 
       (.I(B_out_OBUF[0]),
        .O(B_out[0]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \B_out_OBUF[0]_inst_i_1 
       (.I0(B_out0[0]),
        .I1(B_address_IBUF[0]),
        .I2(B_address_IBUF[1]),
        .I3(B_address_IBUF[3]),
        .I4(B_address_IBUF[2]),
        .O(B_out_OBUF[0]));
  OBUF \B_out_OBUF[10]_inst 
       (.I(B_out_OBUF[10]),
        .O(B_out[10]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \B_out_OBUF[10]_inst_i_1 
       (.I0(B_out0[10]),
        .I1(B_address_IBUF[0]),
        .I2(B_address_IBUF[1]),
        .I3(B_address_IBUF[3]),
        .I4(B_address_IBUF[2]),
        .O(B_out_OBUF[10]));
  OBUF \B_out_OBUF[11]_inst 
       (.I(B_out_OBUF[11]),
        .O(B_out[11]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \B_out_OBUF[11]_inst_i_1 
       (.I0(B_out0[11]),
        .I1(B_address_IBUF[0]),
        .I2(B_address_IBUF[1]),
        .I3(B_address_IBUF[3]),
        .I4(B_address_IBUF[2]),
        .O(B_out_OBUF[11]));
  OBUF \B_out_OBUF[12]_inst 
       (.I(B_out_OBUF[12]),
        .O(B_out[12]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \B_out_OBUF[12]_inst_i_1 
       (.I0(B_out0[12]),
        .I1(B_address_IBUF[0]),
        .I2(B_address_IBUF[1]),
        .I3(B_address_IBUF[3]),
        .I4(B_address_IBUF[2]),
        .O(B_out_OBUF[12]));
  OBUF \B_out_OBUF[13]_inst 
       (.I(B_out_OBUF[13]),
        .O(B_out[13]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \B_out_OBUF[13]_inst_i_1 
       (.I0(B_out0[13]),
        .I1(B_address_IBUF[0]),
        .I2(B_address_IBUF[1]),
        .I3(B_address_IBUF[3]),
        .I4(B_address_IBUF[2]),
        .O(B_out_OBUF[13]));
  OBUF \B_out_OBUF[14]_inst 
       (.I(B_out_OBUF[14]),
        .O(B_out[14]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \B_out_OBUF[14]_inst_i_1 
       (.I0(B_out0[14]),
        .I1(B_address_IBUF[0]),
        .I2(B_address_IBUF[1]),
        .I3(B_address_IBUF[3]),
        .I4(B_address_IBUF[2]),
        .O(B_out_OBUF[14]));
  OBUF \B_out_OBUF[15]_inst 
       (.I(B_out_OBUF[15]),
        .O(B_out[15]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \B_out_OBUF[15]_inst_i_1 
       (.I0(B_out0[15]),
        .I1(B_address_IBUF[0]),
        .I2(B_address_IBUF[1]),
        .I3(B_address_IBUF[3]),
        .I4(B_address_IBUF[2]),
        .O(B_out_OBUF[15]));
  OBUF \B_out_OBUF[1]_inst 
       (.I(B_out_OBUF[1]),
        .O(B_out[1]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \B_out_OBUF[1]_inst_i_1 
       (.I0(B_out0[1]),
        .I1(B_address_IBUF[0]),
        .I2(B_address_IBUF[1]),
        .I3(B_address_IBUF[3]),
        .I4(B_address_IBUF[2]),
        .O(B_out_OBUF[1]));
  OBUF \B_out_OBUF[2]_inst 
       (.I(B_out_OBUF[2]),
        .O(B_out[2]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \B_out_OBUF[2]_inst_i_1 
       (.I0(B_out0[2]),
        .I1(B_address_IBUF[0]),
        .I2(B_address_IBUF[1]),
        .I3(B_address_IBUF[3]),
        .I4(B_address_IBUF[2]),
        .O(B_out_OBUF[2]));
  OBUF \B_out_OBUF[3]_inst 
       (.I(B_out_OBUF[3]),
        .O(B_out[3]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \B_out_OBUF[3]_inst_i_1 
       (.I0(B_out0[3]),
        .I1(B_address_IBUF[0]),
        .I2(B_address_IBUF[1]),
        .I3(B_address_IBUF[3]),
        .I4(B_address_IBUF[2]),
        .O(B_out_OBUF[3]));
  OBUF \B_out_OBUF[4]_inst 
       (.I(B_out_OBUF[4]),
        .O(B_out[4]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \B_out_OBUF[4]_inst_i_1 
       (.I0(B_out0[4]),
        .I1(B_address_IBUF[0]),
        .I2(B_address_IBUF[1]),
        .I3(B_address_IBUF[3]),
        .I4(B_address_IBUF[2]),
        .O(B_out_OBUF[4]));
  OBUF \B_out_OBUF[5]_inst 
       (.I(B_out_OBUF[5]),
        .O(B_out[5]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \B_out_OBUF[5]_inst_i_1 
       (.I0(B_out0[5]),
        .I1(B_address_IBUF[0]),
        .I2(B_address_IBUF[1]),
        .I3(B_address_IBUF[3]),
        .I4(B_address_IBUF[2]),
        .O(B_out_OBUF[5]));
  OBUF \B_out_OBUF[6]_inst 
       (.I(B_out_OBUF[6]),
        .O(B_out[6]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \B_out_OBUF[6]_inst_i_1 
       (.I0(B_out0[6]),
        .I1(B_address_IBUF[0]),
        .I2(B_address_IBUF[1]),
        .I3(B_address_IBUF[3]),
        .I4(B_address_IBUF[2]),
        .O(B_out_OBUF[6]));
  OBUF \B_out_OBUF[7]_inst 
       (.I(B_out_OBUF[7]),
        .O(B_out[7]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \B_out_OBUF[7]_inst_i_1 
       (.I0(B_out0[7]),
        .I1(B_address_IBUF[0]),
        .I2(B_address_IBUF[1]),
        .I3(B_address_IBUF[3]),
        .I4(B_address_IBUF[2]),
        .O(B_out_OBUF[7]));
  OBUF \B_out_OBUF[8]_inst 
       (.I(B_out_OBUF[8]),
        .O(B_out[8]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \B_out_OBUF[8]_inst_i_1 
       (.I0(B_out0[8]),
        .I1(B_address_IBUF[0]),
        .I2(B_address_IBUF[1]),
        .I3(B_address_IBUF[3]),
        .I4(B_address_IBUF[2]),
        .O(B_out_OBUF[8]));
  OBUF \B_out_OBUF[9]_inst 
       (.I(B_out_OBUF[9]),
        .O(B_out[9]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \B_out_OBUF[9]_inst_i_1 
       (.I0(B_out0[9]),
        .I1(B_address_IBUF[0]),
        .I2(B_address_IBUF[1]),
        .I3(B_address_IBUF[3]),
        .I4(B_address_IBUF[2]),
        .O(B_out_OBUF[9]));
  IBUF \D_address_IBUF[0]_inst 
       (.I(D_address[0]),
        .O(D_address_IBUF[0]));
  IBUF \D_address_IBUF[1]_inst 
       (.I(D_address[1]),
        .O(D_address_IBUF[1]));
  IBUF \D_address_IBUF[2]_inst 
       (.I(D_address[2]),
        .O(D_address_IBUF[2]));
  IBUF \D_address_IBUF[3]_inst 
       (.I(D_address[3]),
        .O(D_address_IBUF[3]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \data_path_IBUF[0]_inst 
       (.I(data_path[0]),
        .O(data_path_IBUF[0]));
  IBUF \data_path_IBUF[10]_inst 
       (.I(data_path[10]),
        .O(data_path_IBUF[10]));
  IBUF \data_path_IBUF[11]_inst 
       (.I(data_path[11]),
        .O(data_path_IBUF[11]));
  IBUF \data_path_IBUF[12]_inst 
       (.I(data_path[12]),
        .O(data_path_IBUF[12]));
  IBUF \data_path_IBUF[13]_inst 
       (.I(data_path[13]),
        .O(data_path_IBUF[13]));
  IBUF \data_path_IBUF[14]_inst 
       (.I(data_path[14]),
        .O(data_path_IBUF[14]));
  IBUF \data_path_IBUF[15]_inst 
       (.I(data_path[15]),
        .O(data_path_IBUF[15]));
  IBUF \data_path_IBUF[1]_inst 
       (.I(data_path[1]),
        .O(data_path_IBUF[1]));
  IBUF \data_path_IBUF[2]_inst 
       (.I(data_path[2]),
        .O(data_path_IBUF[2]));
  IBUF \data_path_IBUF[3]_inst 
       (.I(data_path[3]),
        .O(data_path_IBUF[3]));
  IBUF \data_path_IBUF[4]_inst 
       (.I(data_path[4]),
        .O(data_path_IBUF[4]));
  IBUF \data_path_IBUF[5]_inst 
       (.I(data_path[5]),
        .O(data_path_IBUF[5]));
  IBUF \data_path_IBUF[6]_inst 
       (.I(data_path[6]),
        .O(data_path_IBUF[6]));
  IBUF \data_path_IBUF[7]_inst 
       (.I(data_path[7]),
        .O(data_path_IBUF[7]));
  IBUF \data_path_IBUF[8]_inst 
       (.I(data_path[8]),
        .O(data_path_IBUF[8]));
  IBUF \data_path_IBUF[9]_inst 
       (.I(data_path[9]),
        .O(data_path_IBUF[9]));
  IBUF read_write_IBUF_inst
       (.I(read_write),
        .O(read_write_IBUF));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "Register_File/registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    registers_reg_r1_0_15_0_5
       (.ADDRA({1'b0,A_address_IBUF}),
        .ADDRB({1'b0,A_address_IBUF}),
        .ADDRC({1'b0,A_address_IBUF}),
        .ADDRD({1'b0,D_address_IBUF}),
        .DIA(data_path_IBUF[1:0]),
        .DIB(data_path_IBUF[3:2]),
        .DIC(data_path_IBUF[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(A_out0[1:0]),
        .DOB(A_out0[3:2]),
        .DOC(A_out0[5:4]),
        .DOD(NLW_registers_reg_r1_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(p_0_in));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    registers_reg_r1_0_15_0_5_i_1
       (.I0(D_address_IBUF[1]),
        .I1(D_address_IBUF[0]),
        .I2(D_address_IBUF[2]),
        .I3(D_address_IBUF[3]),
        .I4(read_write_IBUF),
        .O(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "Register_File/registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "15" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    registers_reg_r1_0_15_12_15
       (.ADDRA({1'b0,A_address_IBUF}),
        .ADDRB({1'b0,A_address_IBUF}),
        .ADDRC({1'b0,A_address_IBUF}),
        .ADDRD({1'b0,D_address_IBUF}),
        .DIA(data_path_IBUF[13:12]),
        .DIB(data_path_IBUF[15:14]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(A_out0[13:12]),
        .DOB(A_out0[15:14]),
        .DOC(NLW_registers_reg_r1_0_15_12_15_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_registers_reg_r1_0_15_12_15_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "Register_File/registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    registers_reg_r1_0_15_6_11
       (.ADDRA({1'b0,A_address_IBUF}),
        .ADDRB({1'b0,A_address_IBUF}),
        .ADDRC({1'b0,A_address_IBUF}),
        .ADDRD({1'b0,D_address_IBUF}),
        .DIA(data_path_IBUF[7:6]),
        .DIB(data_path_IBUF[9:8]),
        .DIC(data_path_IBUF[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(A_out0[7:6]),
        .DOB(A_out0[9:8]),
        .DOC(A_out0[11:10]),
        .DOD(NLW_registers_reg_r1_0_15_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "Register_File/registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    registers_reg_r2_0_15_0_5
       (.ADDRA({1'b0,B_address_IBUF}),
        .ADDRB({1'b0,B_address_IBUF}),
        .ADDRC({1'b0,B_address_IBUF}),
        .ADDRD({1'b0,D_address_IBUF}),
        .DIA(data_path_IBUF[1:0]),
        .DIB(data_path_IBUF[3:2]),
        .DIC(data_path_IBUF[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(B_out0[1:0]),
        .DOB(B_out0[3:2]),
        .DOC(B_out0[5:4]),
        .DOD(NLW_registers_reg_r2_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "Register_File/registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "15" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    registers_reg_r2_0_15_12_15
       (.ADDRA({1'b0,B_address_IBUF}),
        .ADDRB({1'b0,B_address_IBUF}),
        .ADDRC({1'b0,B_address_IBUF}),
        .ADDRD({1'b0,D_address_IBUF}),
        .DIA(data_path_IBUF[13:12]),
        .DIB(data_path_IBUF[15:14]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(B_out0[13:12]),
        .DOB(B_out0[15:14]),
        .DOC(NLW_registers_reg_r2_0_15_12_15_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_registers_reg_r2_0_15_12_15_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "Register_File/registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    registers_reg_r2_0_15_6_11
       (.ADDRA({1'b0,B_address_IBUF}),
        .ADDRB({1'b0,B_address_IBUF}),
        .ADDRC({1'b0,B_address_IBUF}),
        .ADDRD({1'b0,D_address_IBUF}),
        .DIA(data_path_IBUF[7:6]),
        .DIB(data_path_IBUF[9:8]),
        .DIC(data_path_IBUF[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(B_out0[7:6]),
        .DOB(B_out0[9:8]),
        .DOC(B_out0[11:10]),
        .DOD(NLW_registers_reg_r2_0_15_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(p_0_in));
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
