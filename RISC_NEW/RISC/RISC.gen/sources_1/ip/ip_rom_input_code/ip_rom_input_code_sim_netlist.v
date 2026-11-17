// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
// Date        : Sat Nov 14 16:07:59 2026
// Host        : laptopDeDylan running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/vivado/lab5/RISC/RISC.gen/sources_1/ip/ip_rom_input_code/ip_rom_input_code_sim_netlist.v
// Design      : ip_rom_input_code
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ip_rom_input_code,blk_mem_gen_v8_4_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_13,Vivado 2026.1" *) 
(* NotValidForBitStream *)
module ip_rom_input_code
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [5:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.7096 mW" *) 
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
  (* C_INIT_FILE = "ip_rom_input_code.mem" *) 
  (* C_INIT_FILE_NAME = "ip_rom_input_code.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEMORY_OPTIMIZATION = "1" *) 
  (* C_MEM_TYPE = "3" *) 
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
  ip_rom_input_code_blk_mem_gen_v8_4_13 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .wea(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19872)
`pragma protect data_block
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
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
