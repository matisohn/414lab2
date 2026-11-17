// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
// Date        : Sat Nov 14 16:07:57 2026
// Host        : laptopDeDylan running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ip_rom_input_code_sim_netlist.v
// Design      : ip_rom_input_code
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ip_rom_input_code,blk_mem_gen_v8_4_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_13,Vivado 2026.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19840)
`pragma protect data_block
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
CbhUNQ==
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
