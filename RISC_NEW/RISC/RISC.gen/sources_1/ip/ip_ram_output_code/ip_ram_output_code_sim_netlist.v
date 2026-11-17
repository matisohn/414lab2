// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
// Date        : Sat Nov 14 16:10:10 2026
// Host        : laptopDeDylan running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/vivado/lab5/RISC/RISC.gen/sources_1/ip/ip_ram_output_code/ip_ram_output_code_sim_netlist.v
// Design      : ip_ram_output_code
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ip_ram_output_code,blk_mem_gen_v8_4_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_13,Vivado 2026.1" *) 
(* NotValidForBitStream *)
module ip_ram_output_code
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [5:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.87285 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "ip_ram_output_code.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEMORY_OPTIMIZATION = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "64" *) 
  (* C_READ_DEPTH_B = "64" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "64" *) 
  (* C_WRITE_DEPTH_B = "64" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  ip_ram_output_code_blk_mem_gen_v8_4_13 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2026.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
kZgFhM2d/jlaPzxpf6XHBAvY3udA2n90sVrL5ios3dCU6DHMG01BptGv7AEkMGv1nBWc9wOv8Ao5
MO+RYUWfJloAgvE9oz3EJHrmhQHk1oDdQ/EpnejIRbEZCjmfHUEI21gyKS6oLdkyx2gHs3HX+wks
75MnE8jDP5XEe0wRk70=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CotVlRfEkpF8whBUKgocdcjhKyrcMEGPZvHkGVHISj+GCXwa3Gdeme07eFJpz/ZotBRm0H+nvk9U
c+cu76zAYcGZA4BB8k5S5CN9te+cdcMud4cLzxM3NWHdGuMLRnzIf+YH7ADhhyN/3GRT3GlBC9un
8gg46/rnawNHyJnmhY8sUwhYJFSC6Zp+YpCreJEMMsSSR0D4CM0VZx3eT8IWhFsOz6ekLOhifcRk
JdWdOdywGnTqpOq97/LmRPbfEGBiYB5YDEex+rP8S+WkdfZSRXRcMfIMDifCL2F9vyvALaXXU/HK
kczWE+R+OoMRMGX7ipHLpx7Q08Lk2uu9pJiE9Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tZnJNN2Qmv8npxJcsUh1oNo5AcwWv4Go3b6+WqtB8cYERd3tAiuYpzM9E8x0/NSOgU2lO+XGGWqL
PXOFRGE6+vT9Uw+MMZ7IhiFhNUxakIUv/kmA/Kpo9+5Y8aWN581krtWN9KT8/ccdMg7//qZ5aT8D
c323EB+407vCn2c62Ug=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KKZGVVr56cxydgpa10+BIppw9vsPylE78OMiTW7WTk1ML6QnGGk6Ufm83Q5BYCGjf79wKt+EDVr2
Faz5O4p7NqDjYc+6UH+r3tYhzg8ax3QQ/lL0h4ROXjjznYZN4GT3jpmEVd5M9uz0VZRUklNggvzs
aHgFve9gt7F5cG1cwxr+CFWUfKcsH6XCTrNM3UP1/Ye33LxT6qzhZVuCb4w1zybXO9K1HZRARNeE
XmaMeB1MHLiswqCVSWCi3ahqMoTIL8Nkwb7LISvYxN88qxMca/sR/Y59W48DrGDRBBzZ48hIpVXK
9wpPb6wF5zA03FsVqRSc5JxQzfKhTSxAnXSVMA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ywVnQUL8hRlFZUGP9Kpsx7UfX2m6K2oMp1dIrzsl1e7ahG0jDMr0uZjciYiQvVpl++f7jBR3qTGo
/E63+MEs3aH3oSmrd0H/Etz+j2FU3ASZNwvS98uACXUBPzAeEwFUuJ9/8jqLJsiNybXigf8spDDy
xB/JnUfJl4/mmyClxySXyscK3aOnErzAZ9B9i8PeHPttmRn6onzR+wukt29Z0ETtVcyKKb9JQeO5
4ipDn79/o1IPYLzFyyiP5/oKUP/4zmX/6pbiO6bdzi2kdrhBtRE6ztlUGTI0WBHPOO+nZcIlF5S4
jckQo17l4fcqBJC8p6S7fb4eyfp+IU8PFj6wDQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2026.1-2030.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GUQu/hEzrCx6whrKX9cnRKGYwu/EkGwKC+5ZIAahvY/upngQfvNVWyz4hLS5Q+jQdoupTTPWruY8
5QnccTfRLO/UNkPmbg8atB4asCjrKgLIhzPG1pqhoH9BtKKby74jLu4vyRH0Hk9XOXkAXLos7eBX
Nudw/vzxy74RzWXjstE5NRhMqfXi+jrP7VLV+NT9AN7PZQ8SsVifNwD2P2HwGzqQT/beYW8LvNbr
bRbtDAwcCcJomfkUvNb4pYE7MuJK22aox2ar8nUAviLnxnmy/ASVSGou0mCxgkZKW88UP70HDIhl
aueFj0IyK2H6IPJM9GCgGAwEeA0w0rzI7faPlg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YHSFaIRKyhIVU+ZO/EyZESP/nTM928AcWJGbKx6Nxkm8PEl7yBr3z8S8G0MbToKUpAO14Ei843y2
QSES26grec+g5bQHTjG1w5mR0gi3IRbGAT8ctIbI6qe8HxLmMViuDiYNb2JRHPBhpGjx1o9s0K53
1FVtSLcIMPdvZ6vGzYYlswxXiOA7D0qdnIFeJXb/6BzeYM/ZSO3kXFNYZVuhaNU0AcFxQzxAe/sK
lx5QdNGpyfexd+UnTCdHIul+eFr91+gTUaOVHDR7qvAiX+c3k+nbn4d1gBOExbPG5xXxO9QzpWZH
pkGcv5/2mmPVGGa6bx1rd+/wxxqJYs2r4GBQhQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
SuOFRD2tIt83R5vOz6fwY9Uj1WJom9jlw00FrgpAa9zzHh8NDaN1pvHliEpw0RI/EXGai+RqFTtv
ODI2Qchq2R+Ohalo8v9B//WzHrQEoZOqY8ExEpKNbhp2IJiwsZKz4enjUze+QgFiZFFBQSuEtvRx
6PvI0tTjXp4d4nJZP6HbKHFzj2SEggoTEvkYm2QqrEIRu3HQ9cXOaM9B77eWbQvHHj8yGYRw4A5u
Grwq5j0VzH8/eaysSLlB32jy65hpz1XiigFMnu01jNTA/Fh2qkMYpJeiiityiftiHDGBeEi78AUU
DCNlSbHo0NgXbyxwgV82OqxM0bTJUXK6Gh6/8xgla6TEAub1vTzQH5Uche+S6QnV24o6ll5HwYyV
RoBr27Aj0mceN3MNqSTnsoEMthFh1MLmp0imxgG/6NjNFKABJTDuaGPLE9XjU59knvKP1VKk9Fp5
rI7Y3IvGFhu0bHKEhV60LLTosXWr9gzS3uKCMCb0T38cAx5GX6FcChb0

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WC3gV9hDsJlJGDWXD9/OXXBzEn6vsr7+oOdKz7gm4Rk/FFR50y93jhYmcWd1K2InGg42AOhIHo2Z
TvhSjky9Smc6kaftDv0qbAD/y3awUgVWMhvanfJnlEuAZfoFEJGwGr9jYg55AvfvuX1rQTtKoUFi
ACZ7pJVaLnkCKFVPNuhRAQxCs7KLW7cG1ALcdtOdnRrcG3bh4dHzct2JzL2/VK03C8gPKr3uM6DE
9O0lltoTf/AzP3jfV2LZekZChJx+UY4WWMhnVCiQKoa9voReSAKbrxHl/hqJvWQiYa6CFpABdUpX
fjEHVkVIdpnVpslTz0sOxXMvpxX7F8T6O5KvOA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iqc6J3NDm5J0Ukvjev1H/S4Q4RmJahnBq0A8nClyXeu33t4xanh+aGq3+WcR0KQRtSZvQDrbXWvy
VpRaHzQu/lgwraB5780gv5qhqt1D3uYyerl5fx6fl2ozWlr8yZKs/qaDlktEWGF0MPUsJuYE6ZcM
72yOpO5/ynMUgwJs9FVcK5pRasgkXgOUeN1tA6mmLAiYCor4CtxoB2CGVa0z1Xsrai6cNrXCDd8I
D1f10kYi4ICIsU7uhC3hLMQ66OSpgzGDdHUq52hVB7ESc7B/fk4nrcm0mSK0cPc0un7O8vvvykdb
kA7qDovHJqWd0VWle0m3J0DvA2pKJUU4AmG51A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Y+N5GKAwdOuN9nS/lU52Y4ZNhFpP5Eg6jiLvP1rQk7jt7v332HLd3dDgIcKOvTZ+cT2qc/fEH3km
qRW6R6MDwiTEv5NDgR96180FbWhHKmyQ/AZmvgAhcSnKARj27eDEkTFcUfN+RgRNycooCPjQ2LvE
RAHSYS+ob7G8GxymUfgoG2pJ1BZF8n98Yv+Aj+fx3pPWyFx63XYQu0VIla5KV1WkhDxakW9v4pJh
kWzHMGwdhrs9q2KAQjFgZaDXVv5oFd/wcJWXkvkbsRdm3Ok9s3OwuaW9LsKnBGReVg6ii5BR+7Za
9w0kFZHcWjmf5ns8L/rFEzHcIGqE15ZlLKYekg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20528)
`pragma protect data_block
+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
pzy7WQjmG1c=
`pragma protect end_protected
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
