// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
// Date        : Wed Aug 26 13:54:54 2026
// Host        : laptopDeDylan running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/ddebr/Verilog/project_1/project_1.sim/sim_1/impl/timing/xsim/tb_mux2to1_time_impl.v
// Design      : mux2to1
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "1d4eeaaa" *) 
(* NotValidForBitStream *)
(* \DesignAttr:TELEMETRY_DATA  = "{\n  \"Design Characteristics Data\": {\n    \"Power Summary\": {\n      \"Dynamic Power\": {\n        \"Value\": \"1.029\"\n      },\n      \"Static Power\": {\n        \"Value\": \"0.101\"\n      },\n      \"Total Power\": {\n        \"Value\": \"1.130\"\n      }\n    },\n    \"Timing Summary\": {\n      \"Status\": \"All user specified timing constraints are met.\"\n    },\n    \"Utilization Report\": {\n      \"BRAM\": {\n        \"Available\": \"135\",\n        \"Utilization\": \"0\"\n      },\n      \"BUFGCTRL\": {\n        \"Available\": \"32\",\n        \"Utilization\": \"0\"\n      },\n      \"DSP\": {\n        \"Available\": \"240\",\n        \"Utilization\": \"0\"\n      },\n      \"F7MUX\": {\n        \"Available\": \"31700\",\n        \"Utilization\": \"0\"\n      },\n      \"F8MUX\": {\n        \"Available\": \"15850\",\n        \"Utilization\": \"0\"\n      },\n      \"LUT\": {\n        \"Available\": \"63400\",\n        \"Utilization\": \"1\"\n      },\n      \"LUTAsLogic\": {\n        \"Available\": \"63400\",\n        \"Utilization\": \"1\"\n      },\n      \"LUTAsMem\": {\n        \"Available\": \"19000\",\n        \"Utilization\": \"0\"\n      },\n      \"MMCM\": {\n        \"Available\": \"6\",\n        \"Utilization\": \"0\"\n      },\n      \"PLL\": {\n        \"Available\": \"6\",\n        \"Utilization\": \"0\"\n      },\n      \"REG\": {\n        \"Available\": \"126800\",\n        \"Utilization\": \"0\"\n      }\n    }\n  },\n  \"Design Flow Data\": {\n    \"Design Data\": {\n      \"Design Mode\": \"Project flow\",\n      \"Top Methodology\": \"Verilog\"\n    },\n    \"Implementation\": {\n      \"Opt Design\": {\n        \"Run Time\": \"14 seconds\"\n      },\n      \"Place Design\": {\n        \"Run Time\": \"3.352000 seconds\"\n      },\n      \"Route Design\": {\n        \"Run Time\": \"42.766000 seconds\"\n      }\n    },\n    \"Synthesis\": {\n      \"Run Time\": \"72.667000 seconds\"\n    }\n  }\n}" *) 
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module mux2to1
   (In,
    S,
    Out);
  input [1:0]In;
  input S;
  output Out;

  wire [1:0]In;
  wire [1:0]In_IBUF;
  wire Out;
  wire Out_OBUF;
  wire S;
  wire S_IBUF;

initial begin
 $sdf_annotate("tb_mux2to1_time_impl.sdf",,,,"tool_control");
end
  IBUF \In_IBUF[0]_inst 
       (.I(In[0]),
        .O(In_IBUF[0]));
  IBUF \In_IBUF[1]_inst 
       (.I(In[1]),
        .O(In_IBUF[1]));
  OBUF Out_OBUF_inst
       (.I(Out_OBUF),
        .O(Out));
  LUT3 #(
    .INIT(8'hB8)) 
    Out_OBUF_inst_i_1
       (.I0(In_IBUF[1]),
        .I1(S_IBUF),
        .I2(In_IBUF[0]),
        .O(Out_OBUF));
  IBUF S_IBUF_inst
       (.I(S),
        .O(S_IBUF));
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
