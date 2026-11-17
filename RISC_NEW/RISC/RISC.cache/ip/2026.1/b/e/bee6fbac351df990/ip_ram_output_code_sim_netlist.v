// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
// Date        : Sat Nov 14 16:10:08 2026
// Host        : laptopDeDylan running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ip_ram_output_code_sim_netlist.v
// Design      : ip_ram_output_code
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ip_ram_output_code,blk_mem_gen_v8_4_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_13,Vivado 2026.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20496)
`pragma protect data_block
e/kc/MwzftmVioxHgl6wUWbj9tSxrfCyuOG+tCP6nnCkFs9lOkPIrKQXXiDOXhg7EIUPqRS4aruu
2PDQno3qJAyyI6Q/FGo8ij7x6eHqWI0lktOlGfhw9uZExGIYm5cXRBFjB079sB4eyMsd9EJ2hnGS
XWaDHMNHuTX1rY/kcgQXgN8jnnTzBWgbxMk0Se8B8vkvDpKHVJMr646rKh+gtGd0OPxiecRjJqkT
0vnFBeaqxXc+55A+z62/LXTCD/Oep03dxYH7U6lcweRCTvIP2KTpKDXeP0MW/e5vp2qOko74eQK6
N4Rsv63ReBxbU0Le/P3VrArwjDAanNbRDe+VETcDPgP9wK4BaMjPVfaiz4BmOlJnL9dfA0OkXI1U
GdzSKebF6uF7BVIZ8Aqe6bw5yh3JA0pA0LtF9c9lIv+CGocw03uomcYHPD4rNcYdf7yc+WNoCrUp
BMolqimozG/T7j4/jJguE63wswlb8+DGXfKoD5LAsQTQDeS77MPKhI5/r8NG5XhBVkWUUsm8n4Qp
WkK+WBXBSf9AC/aD0Dl+GOLp4L8AxFE08TdQpDPdmes/Jqf86ABKjjC2L5WhrOfMFR7092+CZOB6
LMipdY71RyazhZrgG1ey5ygp2cLR1C/ihk9i7idlwi52y7EL6hdBIzrH1ETg5ksOJBATjvHnkc/e
EPhoBJKW+sfRghiIG65HT1vJI09txSIFMupcXgprtgxA7RxbrtBvE6hyNZQJn4aY6qUymQ91OGPS
4C5rGXqNRhaPKfrpALx6pR4pJgAQ3q1AFShf8H92617PaIE8hsMCnP7kKgAA1iTewKaFIyquuShv
eUu7inbtkwJVHCauCa9kZObCW9xW6HFUJ9BAAYM9g2Il/Ku+I8/5GLkpiuy+wyklUoU74u4pWCxD
4rjB14QhgwNoFZo/KcqlkucLZvCRKmELBjggjEGfUxOi+tgFMXF61C43RXplYq4ijWNATKOn4ALG
Etl+7O/VQAiRp2PvywWAd+5m2Y3QLDAeZ7bYhr/0lXrC4vFjNnPoUx3iOE47SuhMJd3iRqskU0lq
RC5O+PB1Z7fzCCUleDTP3xMAyX1sXpr+FhsL4ptjT1D6S/OlWsSgyyaUQAEGjZNdCvJiiViBtMMK
91DkZ0IpnU2NhQ3QfywtcjEyKHU+1b/UdtcW8giXM8s5NncB9OX3HST0d4T7EJQW69GoDtuQ6pMp
bj5ZYLOYN3U7NPR5lYTOMRglnH4wqkfelLP+PzlSo32Uk8L0tYNlQtPrghwQ9XRPXR/8f9GwWGur
xUymYhoUShdrR/hI37ojoW+QaivpZQ8sl8rwprl0kh1LaRwJ7OoX9qLkTBBeDjtHKYontzc0y2jv
G38rh2QoTM44XWOiq3+nIQzk9K2pjfVp+DQnpCyNJoYMYTgDuSHGyy9bHgzf1ivD2I8/QxJ9OnOM
P2jeS6NLIrFRxot/xve3s79lwgBp1vgQRERHYo08+93vJMTEeYKRFMLB5emOMpOVHDVSqBieMsO0
yCaWfVrpLXluQkePEyeD7Gtdr1br7X7kfsjBuJD9gBUBARs4KKp2C6F+8fZ4mhsPyM/mxxVs2aQb
IFSkdpObsNP3cumICK+KmeQrKIv3lPu1aofYB2INO1F/IWCvzcWJ6Jh4zZ+9OZxUxAyZE5H2bb6d
y4azg70D5oqQS7k4ZI2JUu5U5u7Xcn+kYe81YNS413cqh+nF+fn5yfq0QqaJ2Q4rJoQCOc+QN/89
7W6HroYPY/CAVFur1ETlIrE8KbqB+pOLZ56n6HiyhkPJkn7aFpXLvwA60Uxmk2H6bsg+dKWdV4S/
J5sAYBchMTlVTleIwSLhy+ItSxe+ddRbyHEyAfdgx+Dq1OYC3N0pPLSsnV1tfU3AyJSGHjDdQP+z
4LhBgJ4hCAdVi8ds6rebWbpeeBC9bFc1RESsOG9dftShpcQNNLTKg5QGSXrB1cWMVbE3W00PbhAN
5IIu/97NRnioORLyCjLcrg6pRUlr6rT/oQ1QZnhRBeUMf0fodk258Hy9q2M069u0sN7F6cSYHcXi
La9XrfoiOOXW0jdUEqdSAYVLXKOYEPKPmiHaO8eZwqjnAmD10AUKOeO8fq9/bQN8/Km/FyI3w1Aq
vYZWFVOVH+FrvuADcQRu0fCkrtXKGoLKpR90VD/p5ru1/vQYz5J+NdgW4cphIktQzmV1MtHxdjsL
pqvRpCsJVTR8hZl8xrqwa9dfzSxAgUQBVbaUDWcxw3ztpQ/xeh6vlRwkWkJ0DnN8aGiMBR4W0pJH
tHjWHI1pqQ2Vx0nOOF6mUUGXO7Xg+YjsTJSQ6ECgoAf690MuvYPcuOxB4nbBlJeqWAKLemkLiXZ5
dDyzC/QG99NmuTmh2Ok1unw8FQxCRv6R32Q+12km54NW1RqZWnj+RLobH/PDiYheheI3ScUcCz+I
SKjT/WK+zSld8OA2k0Dvivb4ZmrNuR3AB7gT8hRF7lIiCFb0NzMNwEOARcNf4Z9J3CtFW0o3n0F1
S9bDPoblelLx3G2cJLrQRDDMOek9UwUZpEt7PQE+XumlUbzf49kjOdTqJPzTg/K5xa/uovEAzlIC
NvByF11dTt5iRNSB7XwMjcErIyMmlTaTFktEmFqchpIIgNlwZ7asbWq/z++Rp08XFAnlrewUKrdV
2JmMMn8Trc/JlIeFS+alDg6wmX6magCG8r6ntA2ScFQUIKhCRbfCqWlYtoPzfsrpbl9Kxyeop3qM
LaynRkbMuzYJjChs00Oeu7C4yR1Sxamvxv9aQhgYKcr3BWdC/J/vxJizsJ1ReLf6LzDY1+LCgFkc
Z/0kk6Px/jBpVZiC6hp2peW4shEyxOXTxxBW4Eod94L5GCBYMJ1cI5rp+uy7VB4BY+yb1LI5uh/c
eh4LTPJnLlb09cykG/Q2k34ef+8LZAeBcv5BDAu+y9KN3dkwhFXGadUz9ktkpWKeYew2F8suI71v
HpDLx/aJ0d6UpTvQp0bznCW0/wSrz5wjtvZ6qwZ0XPMQXg91IpIeEnYuJtN0PmwUD+cOdKMOmj5I
eRFqc5MfOXknD+09QLkC2nRZ+sdyd+RLzXzm2g/3OCUVkwv/T35yFYTbv0WaA/ISXaItnDYcaQm6
KRB7IVYyHOwwCgjiyFNA7X9Fi3ArrMODqSeUrBP3QsQ0DMTA9Q15e0fDWxYDlh6gawiQdftscw6L
JtQSdaPKfQWVxYo0OVRE83cBvEHjfx6Dlg2VvRpha9BpD/Yff5QLhJeyR5qcNqht9FQLdppCmbG6
5pjrXhwJ4NMD32Vk3cI8lXOvW8JVgkGtVNCRawc6vSKTLO0rlGF1hoQYkE6P6YUODiIivzmlE5CJ
1xL8s70T2Y4lFADigFzC81jhjsom9xgr6mAioTIMZCqGKg1IWf9hgMHfzftYTlCKNW19NZtorEwx
XASNtgaUJeghQ+00QhgRMQyu0X51UKUBVtcPr1z9iRT60wMXvmQONWYfVwZqAh/YZ3r5wyJMyoiH
V8WaItDVk6KH2encsl6IfH0zqx8/S6pf3WvluCP0MoBZUNCfUgplfneB/9JaegCpkHAZMl0x+SuF
1lygVE/RV3ZlaAxXtoG5qP2Sn1TwUt0VWl2zr/y7kGBh8oSZBjdfpABchOo+6X7+GEWETaE7C/iE
Kt4LTEJKwQpEJnV7lAfcJ78XP2MyGDcjjiY8UN1gmTmJXizPuTjtwqUE+xUnAf7R0gAmYOzP0HIH
t5TVAv3lcEpHweJFeDEAu5yPKxmyasdwanrrWgVtTaA+VglHyTLBnANwWAGY82CmPD5elUzBIeyl
reirXanldJh0R8I42yPDEw+Rv7UQ+zvbB6/Ypv3IRwEaym6npu2sK18o3ezcqrcUKxKJf6y1y5ZF
JHp/YUHf4Bc44PKcCrGV7sTsPpDdYN528l5QWNS7XHlr8fmRWm+IfDjL+Ugi0XEf1M6snjp8M/tL
9jgQ5NctxyEplUeHYstheB+ALGXo3sZEvi20WkH1QkrrYQaaR+wfvKQSLpwRk5XMSAOhuw+6edOL
SQmm3sKvYjykvkdpVBQHSR9rkDfy1DOpmej0+VWbHhWdC+xI0QZCRYveEA1Wr7icb/kPhqjCCXIJ
UWPcef1RiS3fxGd9zGwcS9WXujQo6d0ibIF0lt/xFfivIiDTWuRcOJ0uk4TSXSg1Y30HmQrAJwsT
I56jCwVihC8DgUFUdoiXs+UUsjscecog6ZOsiMTEW0bNtrdhVfIsLwiyUELwnBsvtENB3dcB8GyJ
Ufjn6vXmZ1DhsekOLMgFst7bwyHQ3nNptCvqJZj6mDjuLTSvlse95rxG3wAOyizf+GsP43H9TUP/
DPLk6zi5Miw+SM6qLCbOoLQF3zzd9lsTIbiMtUNty34kAbE9vqfzjow/f6dyEM0G5r8fmNNBg5fh
LK35lws/07JDBLw3xdmX54EndLnezAYHxopzYEZPmoBSNRX1483ne6CyIdCwxGYzY9CuFjxUgHor
XUt8mxAXfxEv0mSO6va6DZsOV5EFN61pcjcIwJTHUtxw65PyLUvyP/rg8O/fW1pHja7uPjzsD3//
4qDSkODJ6SZMV3WQGMQsPOw/CYc0P8n5jTg4r+yaRzakHCDk/yvxfGSIDuUZaZ/60suCVkCVck4T
vkTcPB9jKtcJMaBkpwCvyEuAwyIgc1mcq1Vq9FveqAzi+Ew5zAX3V1a+2GwcrYmvhqjeiD3aBSCx
yjg2zIbNR+va7aTiGuE1ybY1PTyJj0/u+zeBVEKnU3KsBljI03En5v8kA2wekealRIpxEzdjyK0J
QnAkorHcfeRJbEgKIkpLoILICmW/7VjegTulqzahEpfAX3XkAzbN6H0ysIsgG1YBAfR0ZCp/z1cE
hJmlQc3pmbutjSPLBoKuaGoiwQnOFAJ+IXyFs8btLRPgIflIlIMGu8gyyX1O0cSnDQUcUTpA2u5V
O3xAuuEyw+grd425X7je5ak95EKyfyPQ1Oixv0oa89Z9mu3BjYdRTeETQUiGlRY7fZy9drKnHiSI
sXoB4ITZEa70/IjSsRQqL4aatyWCr/FWrWQ3L7lUMd5pVzXp6tGgwmyYVtVlf/hZNUJvo7j9kbDP
nJADLMO8/4GqIzMMJr0bQwfezDG5ahczIC1gknkgc9GdEcRSPorz619KRLmoKIgZICIsNxy59rUI
1sACa7NHSURDWV75Ed5fJcSPgTZx4gMlFhG8VFKP3rkQpneCUdSIdj+GFwAU5vQmgMnERpN/69Gl
arAzdFYd8sD3D1/z4HI9b60e/Q8hV8Ae6GjI4DrlpBh77RrsBbeaygX05dENrWOqkR1yhYqU+m9q
+yl++CnoJTBgs4m4+o3VUJqcgHkauncyWJGVag4w5a3qpB0UCFIxd+SKtEfaFMd+Vl/LmNrl4tJ7
WDXA0pTNHoD/e823jf2vNAtjL82EQuTfahYPHkXgGifKWLpoc0bUxtH0iMk9zvPy9lLiHfE5wuKa
1CJJlDSprd66SUXBytQdy/VnFDtsetW3+IdNyJ2/ocX1zH6NeeqtdVWr01n+3CD4HMWc2oO5n3XB
7t5nwVv6y08NmDAdgST8B4GR22KGxTsDpPkhBlkDjqqzGESdzmQJcbMnXx9ZkvdwlTMuL6oycOQZ
wKeHmDuMslhhpOkxnYbVMigcQveAYHJaoszk1pHLNVtp0pyzPhhseyKyemmYqo1bdahXQpn5b7lh
+O/I4D9d2RVyfjIVfWVdHpNwyKxA4oeFQGS5bYKFcnKukSWMXrhWYTK2Tcf5QQT2QL5+ZDq92lzF
S5bW5DjvCnQbSJxE5uAfMSq4hKtrQv07g+tV1B4ctyGcUPgnYjV9+ptVAa0SrTKZfIda4F4upMRm
eIRBU6e06QN6pUYuV05IUaVtykrrncWHPz5w25jeTaTwmYKKpbLS5ZgO2P0L9IrRENipjxYQ4Jdw
bhj4fbg+OipDn5Ry0p+jSEZNCKoqDRKkvJNyBg7w5htQFHN0NlHPDKkN8d4sieb0yjfQzVh+9tkc
HD7cNBOW+x1BNbpo5Q0DWq7qS4uD9KdSI6rUVlDliexBIctmj/28QBGboJD5e7EZTJYuxdZNE8er
wmbhofZI7drDeegMJf5lV7uJRJ/ahACD7RN2jBdKmWVncq3PmGA7m2bAV8ACzavYAdJfYdFNG3kV
jnIk5iFzhCb0nMH/8e6H56S3Q24A+tn+BtEmf56AL7vwms344FP3x3xQ3X+SnIRqVyRwm+eoY+1J
SaR1mp6r7hdLnITCzOw6RHosI41ByLU8Fk3FraU1PqJE5xLVnuDT0gOSEkk4ebyaZTMyfSp32anb
0nZAKSgHHeo5+E1McdvRsBBs6FzeRuod3nrauK+e2Ga9dl0NoH4nPEPfqNlQhgH0Hi51IXn2tTYV
dKFo3emG+jcxO0GOp+cDb+JkY4Aq9UtWSzPvvgH6pBTth24+UFzmZzD53YFKGTVoRGcXibwvUmwY
s8MoO8UQeva/kIxpaKmcUe2n9iXvEZpkzwrTHRQOJbnrUfq5n+Qb0czDk31gVXKN+aHuvFYgUA+0
e5FqvhLegWoQHE7zZRQwFoOwMS2ZsSceUeiaBdvrntKyRqCwDetlhsoZWPFjni5rGmVrpunJTlGd
n9g/FDWSPrEJRFlNjbqqG8fbjUeq2lmskng+RCh5jQHuMjZjumnYzLYvbjEqMho0p/nECH9r7Wyd
CstTZbf6KqA5T9DMhDZDwaDkeAj7jIL1jX8oLnGL1DnJRdOhQxNLMptDm2UyxKaRAUNiWtG59oqf
JWeNRxG6dTZ78avZwxgCd2si/fIPm/G1NDzb3jZvj4gpRhTr0fjGuU+W0xRaXOPN+eqk7kuL3KSE
vjQ6q592doWeZUn2XkDSK5kd+ISOnHNifnOvLFG7g1VwsiYz2ILciFdrqsgnAlaqVYyKZ1Pt4aMO
A2n44iJbMnuHiDpSD9IHGv9lQ4PL7SsaWOPUT32Y/9VEyy6TfNSJByaGCM8H5afZDbWgSQi/IMbX
fZyrSbDfS+ciY6i+EawTFMlPq4Cu72VTczPWqkM0/P4o29tROvGYvN+ku25nyWZakdCt7CxKdrZM
Gk6XbaJDPor1Q8sA8Delo/Fks0KOYKwmy59DcxhYzbIPJBhp+XMA40H5ItLWDhCQJiWeR7BkZwPK
DgvFXeu1cTiVVRkvGPET8S3jRzlJcso3p122jD5b9/MR2GQvixcfgcivS+cDIi6JXTXNZ919g1n1
+qCvUD7nJWfrQPzQFXmJFxywUhMj8GdURj+syhDAY1MmBFWQvUkmoiqeg5kRIcdWHQo7xuYilSg2
XRxv8OqksYSm4QjqnHIQM+95glyJcWPZswEhMhYYF0fmle3IWxjieXLFycgSljA+S0cS/9f5jynY
XVGWSrwV6N6dRh8yu40+jqfpTNWKrSqYS/HZ+wAPVLP9AMAr7ncbXDK4BcgUNCvtryDaeKU9YNCB
pnf/ksvDvnfWtuLRfquP/nmVbpyWDyOCzsyrmo5GayB2OXWO56clmJ/2Kxpumoks//KyPYsa6B9m
DJOUzonFYOVhaklXceFBLt7mdXELnuqR82z9TqkRQRoRthCkNqsyYTU3Uig0djdvSflht2qIJh2F
kCwKK3dDC78rzm+T0PzQE+FjxmHg3dB41QJCRklxT5CURunx3a1aZ5r444jsTDo24Vc4t0EM+D0v
I3ac7c9ixZ246Ro/wo3QNDUZcCySopxdDpFQfO9gSQktpS2Rcjs+lUJ87henL73dsf6TCawDn7Pp
ooZv+UvdLkXHzHJy+lvM/aNKmfDtUJ6B9dKB0Gt95uwguPlbWyEYthcznn4Lvrlw6//o8lysGtY4
F3Gc3Gk+6+Ph6nZwDJaZR0PWhsD2dgwdUP40wiqR6f0JyQTGz7WJ30Makr/IcGeYChDxZ1WQ7DQw
Tt2E+gst9svDYV/Q9Yq+KYmxgMDm0Qmfx2EK0EId7aI2xIVNmG9aK3yrYDl6allFCcSv6eM+tzpe
GntcwJEpxmL+kaGpMWvDwKIiKZg6y1SZx3AFGfcwXa1j3zvjcEqT+YFx6I81XWyg7mBwPD+zqLli
gUkUiA/9pDCA10Nt5qFORWlNiA/WbJDD0LTOdjGqB3Fy4wG4Vxd/h16vf9LMxZ6T+9F+ZPzTRRzb
M+g/Qm2Lty/OCpj1FTjSDIFH11tnOVe7qJWn4voIvE/6CWLuFBtvzugK6y7nh9CtFPfY9Scq2Cm1
pZoFG0FXy2NDS2Rl8+kqwBzPVDTo1/e7mF7BCJlA+5KBhmKoA+iJPKesyXKNebv4hJQUOdrY3XAq
F7lron6eIM2kFdl7JgFqniRnfBcyZPIdNVXTaPvl5Iridxusea4zlKySwrKzAiQrPPJg/4+i1Vvg
YNaT2IXQj5I7+axH0vuxggSGD9vZEh5VrwXketSzxkLZdoHaRmNCO+SWOkbdRBqy+76Q7i06ticE
cATeoV8ZvzhrNBbNLv29jLBb6esrLeGZYN7XuQ8NwYr1f0TXL+UloJKhZgXBfN+2zTOs+JUNsNtA
c0GclFDDQocyCvgO1PaYwMXrXK11tN2FdvNWi36tmmJ50iZgzELvCBPbQdEJF+1xfid2Huvol6nI
kBMALKJnC4VLEIj1EBe2APiKRi+DFE/XHZT2JwLm9pNkHDyeZNo0yMzj59Uv3Jax1ggdTOvagBDz
et4eEgDWOH/Ul+nJCJNa+aU+HBfAXWZSI0opElMEpb/hPH+HIcfjYPoBnWj2n4iaUIaeKZYaWqZS
oUkmS+JLeTN2alyBQrMipuUH9Y7lwmMU9bR0or5+nfCw3ovRO3R/Mx1Jsgxc6/zYu8/GXruJB0lh
R+JgaOYIaL8E7TTl7174FbwPRKvB/m/pvUVcTdl7FggBMxyCZ2WTHNknbsB8/9NxPxUtaEDCvtaI
vJhkQcQaGbf6Djhkhz7G9JNJS5BpgwSTYDpUosN5EW0Ng5xP1CRE9yqKiPst83f+AuyBUXH5yRW8
c72XERYfUvpR330Tvzq7Te+lw4t52y8EcQDInPxLHb0I18x7ZIacAP9bjBd+Qay+ctfH6YDE1P6V
INwRpwCMpXt3LJA2oHpuno9N821g7rXRx+Kgi4zf/pmq0WO7nW8NS9K2tM+uY6gppXsWgSeB6fAy
Lv4wQvfRbg3p5riJtjEpvwM0nuobeDiLV9w1SLD53LfF682n57zIjuWe57haK4noVJkQHOsQGcle
WzUndqZ9cdJcbS1H3+DFkWKYNF7TMVY2OxnDolvFPsEInQEu29zd7YU8U2hTKY847x5K/FmxjlBI
3DPnZIFvNEwpBfIhY1zn3/IIIeo9OUVO0HFXRx/t2JsnZVHF8xUvooiXDcx3iMIaKDJ2ImN7BnfO
5V1uNpJCq7MZEw8gRlrpf7XBtbUnSje3gNwg4B/RvWCZhDBDitCnaypMLn4lOD3knCwsk7yAoQ9Y
5V28luQe1/oJxNTS/MXGsKyepmTSgF4+NXTUqVG/9Yjc5Gar2vOvk5f37rCrVGc2ci24BvF19Fa7
kYi1rLD/+zwihi5dsY/HwV103djjwZ/LDILUt7kj/2bdiF17EuGx5UilqGclRq1TZ36zgQSnYN6H
rssKTjhtOIc5MhH9aBp4VrPBNfikXboqRj73ZoCCOhFAKxA/PYsgZnt5iUm5mvHDrn462p+msBDP
jAZ4jr+VOc1bVNy39GmZbTbY4+dUv+OeDRw94YmTCKTvr7wn5M/xrnHavDxwC+1D1SBCvDiw5c7h
PJlUFgd9cpw6n8B/S+3e70z275pOah1qBSmtcvw8bEP1zwFk5jYEZcILNGGo58HgDU1IXy+uc3Z4
DY60+UEcdKj1yKq2aNoz/ysOZUhZnS8atFIU/PVrAeo8FMNpuvqHW/HblhCcra8cYUrAl+g6Q6qT
HLdzQ5gF77z8eTN4fNK1qVUIYdD0snFlIkK0R9xwRFnkgmD/ZGOqe9M8loHz7tbZDG9Vfzr1Y9P0
lVcehxugMVoAG1ySm7YBBTtiMgYqCTAS1IqZCrbQADPKL6xMtRHAyXAhCYyOklyDKSpzD5ECjBQ8
gc5pSPr4UM2/azN2wFF0YFTciXPKJ/G1/AOJrV+W6vS/tAVsw2k/BSQg9DJk776U5h3pivyTEur1
QpOozhhEWEp9rwcYdAuYJRCtMy4N0f5U95P2/KGbpBMkl7SDTcSUb9JnlLsNpFwJD7duuhtQWKNn
NTSXahQ4FbvCzIFg2IwbZF4L/8mZReB4cCQ/kUaD71Rkl/6LiEQu1cRLtXn8gvfItdY1foB9MibE
OOtTxlONxeTRBWtGn+yB6m8M+wuSOogp1+tJGr+kRt+G2w82R2oGM4oRxfuCz/qPexyn9/fwxuxq
XbviPfbNMyik6u5TalE2a+/Na53roTrY1GkGDvsemnwhU6w9v0U72fvUi9eGxd+WTZxhegZVNzD/
pkAhXGsLors3uBwYAjgGyWwjUiTv9SB2UHEB751DaSEBHik0WgrdQeILogjroPQcvjbALDCrbJyA
Vsrhr7FDMdicM079f+W579k+OcO0Bnog+xeb9cETSM6Ht2dSBIp6405orBxYkmRwVUmLn+55xo0V
VNMqLkYjCUGmtlCXDaPevYG3wkOgEclvk0OeRQVmJtbaHAm4FsHF/baS32Raa+KqFvypMBzzfq2w
4uldtD1dzH6DqErHB7Aa6TXuwN2MfN87XpM9vPAncpnwVy9V27kuiYIDmPE3bINa96GSmJAypi1A
WX1rp/xZvu0p+HPonwB4u5PBFbRnqMrEHFsi18MywpOecQjock/EWIrL6Yo+nSGjOfluRGjsD6kh
j5w4myLh/+ZtA456dStm3L7zDjvT9bTsD1GKeU9E1ZeNu67lJqGJeL8jQdjXe9Sa9Esgwd4WeltI
JLobTmHMdSHnoR3SwCie4OoCgXpuGvjzlRHfQA5Rh0iSOFfhB58tgxbQYDXhG7Mb97/2+9H0TPVN
1Z7Oy7x4250nvjif1NfSwYpIEmGvg4eak7ZEChOr2gho+aX4IyvRsSMFBERZfEFALfmlGpYPVNDh
jhLJ4CvIL/7utX3MwyQEvr47CiwAWf5CjxsFZNX6pM9ihkQTnVLNVlRCRiqNMu9998PRBCY1Akgo
PdWhjq9sOsh5qieFo0o++watuvEHdgt5xE/3zurAbtPdFn9NT29+cQ+ZuaQaWflRdt8FzhgWYSFY
/ePAiO1k/jnITPM2d28/Xf0FDNUeCJj4zDYhqN6VtSHG3iMFP+JxnDfunqfqj7/yeqhR08H2fTxQ
Rr3WgEfTPMg/jGUrn3Fyq0neC9xy2OC0vIIHmLC22BTG6eMmlJKBylvaLhUGgljLSg9VbbOdVBPh
Tmuhyd5iypmxusOTOnRPQn/mRifHQlw/HAKiuh0ZPy1ZoIrJCu5RN4hMXO720OAbvXZ0C3/ruzgU
1zrQ6ufht7ru1/NjD75GgsPMovjx7qlILsMSTj/NGKMyYmZm3x1PuUHDIIwvStHR2/8ROxySgJOK
20M+cuHmQu1EQ4fnfCunki2KSuhidMLu6BBgXrjqN+iyLd95qa0IAFrSsFachTAdi0O86gNBeZm1
DaXoc6JrFcHHFyF5GiKomnIvGwQxfj3zLKHIcxGRKlenn2bKOeqaNzjCAZqIl6pjJiUcFdCpCYN5
Af5R1HnzcFteWVyjNkPMCKmKu6HISUzcfX9RL6/n5WzwVpt95ymlYw3on4gg1h6/jTsBNO1VukDc
2T/9Sz+7uKwoaU55bz7XLv3vxMT31u5MJRs8uUh+ofdqbvgGITFcc4drZAYElEVFLmmz9s0F4kHr
7qHrpuY7ADfeGTDlOfMkMNVijNO0o0D0Hr7pUXnScvQ3fAqN1uLnGomm0SgCm3jMmdZFy8tP3/Ih
bT59vSup96BckzNTxz+C8kNuN0vYl/aB6Q5aE4tymwJdcj9hGukyGJjX32vOu7nJ+s8komZrxSwg
QPT94e08waGVjZ5IcygXA0TZa+mNgi+Vu1JRl/lBr3CAU5pSrFPlLsjdGXlBsBHTo+yoDbO6w2sn
IWIgF/KP5LFAU5WvN6cJWen3lfDz1o2tWUZKmS8K4MfvWDfhWQoKBV8GdXUCdUUIWfU/Ld5lZNCj
6FyATTvDTWMrwqjfREPekgbNAnXHAc6Jw+2e275VJgoohnn4xBWex0E6aOQ/6KhR5aW9gxxmRumz
VGJ4b1H6KMf0FoKiKAFnCBsM69As3GGpQydzSTfdRoqKM7iWpUqhZHyy8WiV/HBbQBCNzs0aNIUg
vNJhYslGdsq3yyNPi2J6aAvbzjP5qQse8mH0cF7IQFzRb7dH8FwWge9lSm44Cr8O5z/WBOe6uzNw
MR2He0P45D47ZQxwEgGzU7JbLgWdjuvGoBaayCJY/XI4jCPPIZMf94xfNV+19aC5rf6P/YNAYlqM
U3OL9wnCkAl59B1KLvjhhjqUHmQfzBZMS+Vwhhockj39FvWKLIvX9U/A/psPMe/gtsgXcZsIRaK2
+x5mzX8fh4V8vHL5z4cbJ8M0R5gOF4iYkP+WG/jjD/KPjwIkE1CnOeumIpnawSEo7o7DCzvLtQDa
7PzhvyLSvSPLavgG9P4+ITlJ3oj4QZrvmDK4pXdtyorD3Us2VKCag4MtfoHY6rnAJ6kaCi1xmHH1
ibp2Jhj54TgeALiL9GTbtMXytIVVT1v8XrrOebAZ9Oeh9Zs14qXzAovjIN/JDk1a74atzIIs5c1p
IcAWy8c5c47s5qGeDpcuR2zRP4gWI4RWKNF1otzerRNH8EQqq0h6NLEpOAs1JzMxPVqtxyLugKaL
ANajEDM1s/DY8bgcMhMinZorkWUEcuusLg2vICEnu/3b7MwJfoDc8w4xvW7dCB/Ub/2UpEvdRZqL
45b3BAllDWXIOyKIGGO/7eIHX6SCel5aNFzQjuYlilN/Tict0N/8DfFQWXKvll1qeMmRsCsmJUW3
AZ0krMEYi25b9DFbGJTs1/yXSasZNfbRM1TAMf/sbhHa3qk68WlDfTVpZ2s0dLJYqjyBxd+clbaW
Jhlh4ZjY3gDsaZ5bzUzEfwLkwXcLNd84VeTKx64rcxNf4/WGOtBG9yqdthvH5QL3POxFo7IL1VW6
ZBV7dDBOQeIBQBPZbd/LW1LIDkZITffe9Xa/yXE7VjHbyYx3mOSySB5luTCnq8O2sJg3MWTo9aN9
Jsl0XA99fKMRD7C/uBbYXLtks6YKCgOj47M4zNsbu6mwjTtmDpY+U8oPNwcF6+VVsDMAZEjtIZ0I
HlnpzmKj0DCfPx5eclID1MtYAPEge53mHCzJ8Ub6gTAJhuNgYkdDofSG5iSR4BjWYHzGqDBgT6xl
EoWewgXfyVNzR9N1E3RxaNnSov0bgYgueImLEisGSqK/Rpibxb2SxKp6WA+SvIAqLaV9maYYEYgD
CS1O6aCk42VDMBSgZMUkZL59mXv0caJONmM5QCV1RYwx/5goHL91sGOQ2aGMu9EzRHn586z6TkZW
6p/DLu6D7sID7NZ1jUGmeUMV8oaA5LP8w8/k4iysXcYQG2OWWwb6FFxo2Lo1lyT/VjwnmDMdOaFj
Q3jKWQ1zu2SbBHC7L4KmL+LAX6WGFS2ZTDcoa7yhESIXiO20K1YNyzY4fuf8fh1BY2DhrMWq1MWm
gHC3A7cLrvLqrHlIAqSeZlcOC40CARmG3j6DKkTyD0BIqW+sNnQzOSox5sAhE6BKiNGQ5obyCnf4
nMlTBLzbF1+k+TW1EbcEiH/2KCtU/OUww3YsxcDLQ2s888jUB+Br6IaeofSLsaCrT3p8goxXuo8f
II9qVOHqQDGhOSuvj8Wg3sP+6KOgrdPnBHo6CHAwUtaoV9Mw5qdG/YcsNjD9MlHjvuFeQyK8XQZ3
/DLTjUlpynoRREVCU8PMoSb6wLC0YVCLg2b5Q6bR3zlZi+iTa17OuJbzrSs1ApncY9cW/nTuGi2i
Il1R229IqNf87Mw7ytYWDhWi1LDdEUbUNfp/+gqPmA06sGpSwsuCVxmvAaasHxh5ESqKUb84WIJF
12aEwHHGANgqcTxvNnzZIxKhbpkudpWLzRbGFwf5sAZuGqb4JWw8mt2vPlYRRMmsQrXVJgCQghsl
ks3vR4xhHQGY4SpvOc/+aCTdcO7bauVQX8C8c5nIKB0aIAXKqDlwVci78sKZ+rTZhNDgFs1PPy3Q
l5zxn6yZlnQ9OfG/NbtpTvLcVU/NEXTqYgFOeYJ3oWsOmm6WvE+/KU+hMI92R6aXUm5kjW8StUxZ
HWRKD5oIdWK8qHCn8q81thnbykVZ3Nk5fg7qC0XMX7SUywz2BILa8NUjnNh4a7Vl488TDj/8aSCD
pgvBuZJXywHN6U/1EmHBc4Lt5nPhK2CJyWBTgyLvdKtLeKatBDfrqFRnfgCnGcEKeFVc/MQZpJcl
nXQEfEuzjuqRaRgR4vMzulb+QXGZjlgwx8VlzL8K2/UUBI/ZeMDSKoApECyoGQw6YUzO2fCWSmuM
cqJbXFVEkMZVh/q+MneRcu1in9KPm8kvBbcVvorE398KOwdk2muVxO77ANa9oMFE0xkbzS/IQ++J
ggiBBqqQLWxA+H8vkCA9fF25xzZznWet7AwUGsVybxo8cIddKqGM9wuHyFgDUc/lSGH79pXfhkdE
Qy1C9ALJ9TdPfPn9+vciKuFhZKrekHy6gE2PV+42tywQGG/CguQ3qzL6YX+57+GoXomdzC45443T
XFvdQTD7QH1fRDjf4o9AnjVxZWnNs3s/jMIAKsM2tIOgHyOOkGhVzLtV/gkcxPVpRTBqnyKErlhn
BgJuwngE+2amOYXm6R3gD6LtsReDwLba/AIodo/QT5fxCXgndp2h8jPgrOlirkqcds6dLSQpWdgP
7UHZizl73DvwyiVh6BNJS/7MHOTVDdd9vR+SY5RX+by0ycromPg4yuv+p1ZTKxU/N3MBUiXGjCEY
LafkapfXs8f6Pg+QPsiJdd6j/H2JzUTdEj6flEuYJDz25PmC9VzcbzSIitEMH3Qy0jwo2zUm4xAA
Ng1kF1TT5R1RjJ3ZmhJ07lQ2SB3ZptseK1n+sYD/uiXzhOz6HVN+oC3dIqDMU2/ijTJs+D4JApWE
PRGLbXJxzZEJ4dUUSjUhfJ8Y0z+FvvJQ5QNC4mj0NLreVhIHODB5YQJA6Wn+J06ZIoTf+xm3DAQv
Xpjt665nO4+Qo0CwIJjaZXNmQ640f/rKKeVFc/NGlCSwu0rR/+66C93Z5AF1iQiScltjPH/IX8S8
ufVy68L81UlDbQ5JWLSkqCeHuQR8SZAlWuBAyQehqGWtGHG0Lf737WXbs8vIwHoT4gSx8/zM1zDn
KPbVUWgXmyVHnwBi2Lb79lz3AsJVw073VHjwsN3OyKpoSJqks+oqmzxz5yrRNKMApmYyFXsj4anM
DFgi9SFbeqYEcYsN2wPrwlkiw/ys7nBtaLLI1EA0LTfE57UcNLJh/+trxG+NaKfXJmJEYJ+DI8aX
SHBdU0QG7ISJ34Au2ac0yVWBG0HEwWRUAXaSYZ1YKeXNRuHEYcur015E2Ec6O7PlxZcekQJ0/K1h
Akg8xDT2oDsceqpz+/EAlCp3gjb4P5dTc6b2wsZIRv1sqTr9yySiOHmIT+sOrnHMth8CAW2bAoBQ
GW7qUby5byTl/u6YldazWw3R432gEbckJ8bRFSKY35ss1MLruJpV+A6fODKMOtfrr/bt3908VhqS
mWVQoXicsnmbN164T64TDVdJABRMXBa5bpjdvzxWXsXRRiRDgJ0VFp16GnVgbiPOC0pS3RZwdU8/
HrmPf2guqFnw0nK46Ba6FAgeLWrRZkhN6yLQFQC/5iYKiSu0qhkYUIdKFTL1Bxe2F+P92Qxcj+Bg
gC1XPWpd/8QBPAge5YwEW/07DkQZNmRy6cmAsuE9tTMGef/U/ymg9spJBY9xXTBf6KCBHPVMC8aT
87H019w1IWbKkhIjUoP4lF5LRxBnmklc+efdUQJhByCDvlj9kesXopgKQrSExRTQuGEQPeouLEA8
/HpCXhFxjYTE5/YCjr4ZpncytgC2yqWjjJAz+xAZLn491EVQuZkzPZVBaFBzzizGJFfAk7OZyAD+
ePhzRkSxnCD98TEJYhsGZIC6xqeKpxNkUbJGcARN/x6BTgvPyqD4tOBBbH1yHko4zp4iav6SDxnx
vvSnu3XKTY5EQBZpidXw2HujT/0TOPxZgCEKnd9oRHkDugyPLj4BjyQJSZZLBXJX8ogyf0PbVhRw
2AKKbDmdwSgPG6yuNe9nMaNF6x6aqKQ73fLSP3NohYjbR3YjvQbnqwNJUrX5SxLGreb6zi55xWG+
DOoHr1weT2bNZSXcl8c2XLaDjT9CPBSZlF1bbaPpNmHbAbao4TByX0sNwW/N5jkk2YlMKuxnrZGp
tBR2pK2JGsta7TnYmLPfbpjapY6wOTdZaT9y6DGGpd+1Dj1PQx2zoNuOI/y+x1j2N6EDnZZCKL4d
z2kKbHlDFaA4HmwBHULZPKgFF1em/B4BSjInPRYQIWRCdqLsNoa9X5/mJJOM9BbE8KSs7q/mQji7
ynHrq59uY8TjFFxbayPig4HieQ2wNPNBqr5dPkDRPjLbBpmnA6mI2tSu0AEe6GhFUPFAVJMv1b9t
+haAToonPEGU+L3O+BlE+E1HcQwFm0xzj6IBqPFNmmYXD1/DnZGRUujhpTXFclplNv9t/lrIx28W
zvL8O9zH4JjKeL6EXY0FbwCsJyqJ23y54KJvkJStZWOC6594FsYub+r9NXDmgDiLzwj0fXEMdlF/
o8aO5/zIzz/H7yEJ/geg/5bxKOSh5zsKtzFEWtOkik2QS6BzTVZ0M/YkwDaoVGQkFGUe2L4+8osR
WF7OWOdSEy/KXKqOf5GWo6DvCtjBdWLmgpGupD6zIjr7e6GIpBeqpuPhPIdA4gf8TiZD3qrZQDnc
58QKRpqkH0dH/vSfi4YqGX0VhKw2UMQhIKd5bjMOTxFRGDNkH60OTWBx9NDBXH1UeaPBWVlYCZ+6
Uj0X81fUNo5ovf1if6cgLsA8gVD+nZX1vmtvf+zMx0pDlsdTKPwR1fQTLpg8TlO+/i1uNBM3no4c
Zg44HurxM98kNY5nxgwFLCHc6vDZZNX66kDcDZ89UiOTUZUpjj6R6L2R/GE64UamA+suvOAv6Vbj
AchMp+q6yqznWQB6FdGk/7wGynKuQBsmhca+nhm0/NrTxptfYs8eiTpiU7bv836zRw6QNe6vfR1o
Zw0D5svO28pSJ+wchPh5yZ8BfKjV3RuVil+scKLhKQpTkKkbrlEu6wgKNgQGc3nKow9aXYKaOYR6
iu5olorvNRsQPQO9+Am9TXDewfKklpKl3aaiO422EuEC5aqRObkIUoPLKeOArRfqgiOq/jf5SBhD
Xq5IVKBbn8H09C9pZBslusEpYgLVZOF9qcOZoS0113iAg8DHqvNX9IoR182eWOBvuE+w5zZoLky8
Onk55RURhwFhZifiicPqhsndDR0rBD2+yDe/JY11AcrHkPQhTllme9AP8PxYUAzWN5qSRgKevKxW
NlKXoOK8fZt3xOXuXHIn6dOJsK6DrIQr0MGyVeVeBvVjY9KzzQHfu5UUKxA7BcG7rOkBSf3Qxmme
zlfNFExNygvw7olvjOvJcSVJUf/dC7bb6G0AMHWsNwDHAY9JvOBSq5jcOmuCD2pHpXgsDLIfhYGm
/lyNB+97eR7CS/vwQaLehcPnGAlHiiE5iT5PlXf+g2WOcWRQY+VK0PHKlQHa1LyK/+WyQTvGRUQp
J2V0ZiiCgHkHDCCYoVcFj+/3FyW5XeMw+x7jcJlHRTcixc1ovCzZOkWDaZE4P/FpGtz+biwoWhzL
ITd4idQEd2LkeMnNGffYonbCpjZUHA8e+CRtqsU/Wi/T7MM44R2iexnzILF8Hc6t5jiwOzXU3hek
2obGaYC8RTb/lXNvCKydxycFl5wYWVLeDvcALnYakaWq4swbyWljVKVn3yGwipbWZBAIGqW8ICWd
g2DEpWAhU5G0QzXTC7+PR0ACbRC9+imXOwZ5RZOeqckjM0BgVZ+lLVajCetgDZlppk30mJx6jtcO
CSiGvxeR++8GwMyOLaTIVgjv/im9QY0zJkPja8c83bUmcUvWLp1RrNP7MlpcP4PrWrJQwXLVEGNh
Q9sMsO7G0KCQezdHHzRBVR0sj2/NnaLhVVcmUgh6nAh0RDZ/Oi8xy3EBvSiinI2nmbXs8Xa4ymyF
Ai+ZOF5N2tplmIWknxq1Mt17Aohb8p+pQKgh/S67r+YxTvIVc/MduwNpnn9hIw1LQkPBLA3E2QGo
B5nZXDwH3bXihioUASiGe2paqHBaVS13W/myNdwNLU2hKKxZjnQM2hhUJWVUBrbPbzJXWjZpYfQB
UYuWCGYBSTeI5u8bfC08Wsxm6XgX8QIHVM9XGjaJoGJi0qaD3choeVIlCw/0lu+fZOEppVjiB737
rompBTPuHPRPkMg+PlFpZtyfekbCDI+vQ5DGFZRozdOKwmOyVGstY7qLaHzW+MZnPEojE/7ZStHl
yzAxLRAD5QNsMQVsP3nNGdVsHwT+W77zDMRqK7uSumjWsGw64sm7T76jdKEfM/ywF+Cge9Mu7NiX
kSiQE4vpImy5E5d8BDrlMSM1oo7c4FUYe9ZKy8KjfXu/U/vWxE4MFHlxAeXFJthRXrLsoMuApMiz
UvrnjY+oxXpmuhfqcBWaNDVwoj92vpc2NgqxFHf7/gMGYPFC7qSy9w9DPEjV1RiJaxU6K8onH040
ruryVl6Wo/aHgVQyKhuPhPajo2xOLxkWifTWL3HLCdodlkE2lc7mHW2WKHsI3LhuK5moqYn+LpAK
/xHoaAMDrMUyNnlF9EbdhZgsM/5m1EVKZd83kFgmeWi2OeQbG+/yFXZ81eGvgNHnKiYCJRYyMNiz
zo+ln/mnuIUI7OYmFfwvlXZWcwujGdxCTmJgjNAGOv4LYMVqafyVjsxODPb0RgEnYkYHR4ZkFVex
MMLQSrs3SScXjfUHZm7Mu7sV7Pc164dScBXKqGWWahWo5epGukr/XJbonQyja+6KPTGirJIi73jw
GlSCDSiPFbVyyL3hw1s4WKIwxGi1uBSK+Vr61FvbrdS6K+Ze2IJ6ZbEBdknuwB9DieITNvyjizL+
lTeeMQshdFnIdB/p8ZSf8+FWp0yZHmWQJ2TwrL2k0DVoBIJxUmrKcQCnGG/3RkK7fi7RZRyI39tj
HoRqIbC7GiFqcR9ewKwezW6XtJlvv4fEb9tN+X5n13kK614O7lOS1M7ZxMy7FpBewV0iirSAbn2J
USAGJ3AJG7+5j+uQ4a6AB/kQg3+RHE5wQJ5PSpwloQzivZwihAOF5JlfUHnh1chXfn3qCLkGLG2Y
C9488VjPBC90S9nPwL+i09ZkrvapHVfgiButuLRtZO/Qv2bzwq3UaJwYcuguBh2bQ0Ud6jKnmiv+
6B7QW9Mzs2LtmHE+/bwAkDqm6JaKtY9XeEyu2xJh9Tlp+hgRcoJXjXRJaUH51tcRoq/4AJyjfb1S
ghqNqmQGv0OXPbf4hyCVdecLbaATtvQp+/pb2kdST96ZhB6OkDyViGzaaZhaT90LrXPcITnGLhaV
rHBkXyYExadnW8DIye3/mP/P1o6+9WKQLNERf6by6TAPYYsRjgCBO6bzbJbloighKhqvw8TP9XZi
f5ohAASbAIWLXpTH99F5oD9ypqEgJNS2ZHSYVZZXUgloSjBSkR0oH6hjfWumrgLxIcQ4TjupDXcA
TN6GuWd2AZdr8fD1UKM/HwnJ9XsAjrDoz7Dzfw03FdB9odo+7AZM3zSyzvvXqrkKGaIbWVw889d4
W7aflo1BD6zjMnoFiVJpjhATALje0LmQQsLmX4zTvrf6xMuVrcOq9Vl9p2R7XMjb0Eoxs1LaNfT3
/H6WQBvQnhlRkyxAsomuNQ8pGWxSgVqxw2Esc2qjhT2I1DDMZBz+RTKpYI91+t1iBgZSKr/0Soa7
Yj1mfu+UEEuY7g36fdEwJDAPOEee2lKzj6bvdmq1KcyYOPL/PkkRqNBuC6+ZWc7czwORng5e1LTk
rrCYiwr5o+3DaR6XkFlcp19oLhhhHpiMvvH1oK0pSKAE10Tz0on9b6E8j9B7Up/Uy/6fHJbiFVZk
YgcpJbes6zTRY7Av4pUvjNobHdXnLM9e+cvM3fgV17NCH4LsBB504tYzGojC8fXb/p0qDY/Z47bz
0uMX+lrnyhhFWxIJ9Op7hiNtwNpdId9ICCYqse0QbBBMmUWSxqcTI/shENu150eA5aX5Wnovfh1t
XWN5A+ca/XmJIYya+nlsEynUHmXGj+Nm4dlz4ed0NDzTgNS1TZYJzuCsSpsEK386BmKwXIQHclyx
ZzzaTeqZrxyqfCRCzvtqNXFSgufzgsqoLTrbdnqEBFbmSqLSQ0VY0U+1eyvlpRQgj9PNrWse/9wF
OH/1z7mObiJwangPORvfuKaI9YmnliwPVBVVG8iboZGP/lkx4CI8EVjuzh1SeRLarFk7YNPLpUJW
cck9q2ym7R31agXF2Gth2svBu+gjqx4pJ0R8XNRXF6rg2FHX6QWrPIVeJKvBJHjLH9VhVUGHcXvN
tOf2eT6fZkBRx4t8HnyM9SsHe0C5xNnO+/8SBA7Pqcc60CCC2aOkOf0mesInzNnXMDXgRdLNpp1R
zMEqiw1rgAdBsZfZYmAmnmRIPVy3VZcOGoYznouhPPWP32l/E05sw6R3BzfDz0R+AJMQx/3ROX8p
O/uOs1cTbnjg1qM/g+mLRsaY9Ivr9BCOh56in81oDVFx7AmsJ9xPcrRQgUx3Pvsnr1Gc87DwPqYo
5HGwQv1Lkr8F8BlYI/iScrinfDGkrK2Ulo+5nzkqG1jbgFGp1w38G5ZE3+iyB12MjT7xfrNnEXby
rCG5ucMmb5wNVUQ/o28Lfx+QdYTUr0HPdDpKjp0op7ezOHSR0minyrYlwJQueZJeOD3la73G2e3M
rvkSoNNP4oV/qKFQpSpEIWAufTtTsHawLTLkfPFajwF2FDeFpD5rZpOJIvFQr4GC6EmL9/fbx3tR
6tz9TMb9SJjhciT8DBvqRnBTXN29wefqUUrncDd3z37LRbciXWNBUEdYu4XvsL2HOca8wtKHaA0w
6ZLmwHOTlRj3yVL9b32QZfayBKVdWpZUoHevxF3jSKgVyKQZaPTVPcgBLXNcY8KgcFBEsc4jdCzk
6TldhJuMDtY/YLoJqgzXrV/J74c4KQ4SXzKj3F11kRg/vwqxLUGlujdO6y4DVpfCD47DB7eFvxBe
iGqyOn1VZzO0F1IuLyp6kFIJziyncYwzBcWYPTL680dLeum7cNRZM4CmL7RgIhYAScgeg8B98hAc
629uj1MakePIuP1pjsNBm1NRxNDZIqu6Ui82pSEo0eUehQisUw5XcM/VX8+L9tSz9YdgQtizD0lA
R8wKi63uVsvOyVL4sKTWXOcGfSw3CtmTKTPnqFV2If9qdY8vCksfYHaJQU/pUKg0+tmutvT9kApu
us6jhs6IpXDeL5qVb8f0vN/qdEtUlQ/6IiHIurgk2St/XQrB1rU8BpZpVu6cRVzVCzmLx1bV+HM6
kGlVYFvUs353kzaLD4xHHCa2In6qy+1/8JIdA9Vozz+lLVoFzaqr6k1cb9EgyqPr2FRcBPOg8BFx
c024qBZE9VYuzeTX9rfE0j2l5kUkytaaa2TBMXQ+gTbGta1DGPpJ6S0Az9928DotO21Y6vAFWbSH
kfd8QNha0bNnUxcQ55sSttEw6KKg5g4uGpIO3yvMhIT6my9MTjG86ibQRvyML5LRleosDmwq04YI
I7wKrtulp8CrfHYaTnRvEdEwdPGjVaQEOTXk6ieICwEQyJhT3QcMBqWO53LdSioBlwBIQLCgT2hG
afXW+ZSrGYi4w4bSWQ22xmYzPuUt5y0oB7Q7YsCAHtNpNYsUSAuOcHGVQmSeue4J19eIJ8asEqYT
HV3yFf8hG+sqhaCYe0r6ZjKbe9Fe11TE+W8XYUj7YycyNkmARp0bGcIZw+XqLueZ4PUitvh9VStw
PJ/LVZfJIxcKU4MmRiBEBmvB6azctpF7BuhyBxs1gD+tOoypcK0ebbMsTDhoXbTmX0pJiOHmOo27
62+k+CC8zFoL1pMPrdrZS5kMwgPCfVvDEdurgA8ynGumyZTiyITMz1AG3qwmk58DVIpmdyRbPtLZ
Ak5N54L1mEaJV0PqTex6PA2XUfufKwf0B9wqFDYDyS3Tdat3Q5hc4fXthc4yw4O9Z45AY31WOB8T
JITASTrKLURrwoeH2SjrGD1ggE7gR9HZzldlNQvf8BLcsYjr4+o/NQThbUr/kprW7PSkD0KFK5n3
wzNkPQSae0sm/rI6FGTjqE+lxlZPgepRSL/W6V82jUbrZfBz5jgEEPii1tjwOFcGanDsB4lvVTKv
LBVrlmkqNk4VcrPnwcNMRrD42XXV/sawS3jIQTu2qnmX/EfkdlB8x/7OSNwu9b5UKJu2uBiu3ldL
s/2sqYjL4ZIZtTAGhl+Jbwhtu2pAPRkNssGEdKqUFv6XzLqmOl2OPRAMXDMKzoBJ5srDQ4IY21Yx
VCWZgMfrxjQMSxk4hzycX2sqilNt54T+uispqUXYZpMfVX3SaQ1+UTcd3OcnAlLK6ZVV/gVpjFWA
bOXr6g5AaNII1ZmMdXPtdiSLIuA2pNTvW0Ccid0SaC0Tr54d92mRGp9LECQZomQX5OGEVUOO1uuc
4zcE34AXGzC8nD3xSE1ValPizPHL0z+yl+i5cdInNyr4FAhnLka4RpOQnXLMvtN/j1hYo+K9OOok
FQ6hGyFwlB7t418rYyueuBbpCxVkH8N+VifMDn7I18KZ1OZIKWNFfjxiqhvEefDrx2VlneV5IgNT
bhQGVm6hrgSYkKw6mReOmmm/EdCdY93x70svASa+E60c91/ZVRTvzgw43zDT72mgJ+ReO3Byaeey
Z3cmXMUbcZPeJ5Jor5TiNwn/xx3LULNUa9lDSuYHj6hzZLK5eGtweD6OvhSUG09P2QGOR/Mykgrg
BKrjMMS39XXe9pHfpgBrbx/gJOVBEC1vodeMOYHoIJO9MtP+EulTN63vLR8TTZv+Ua1c+36NVF3E
gp+YGu3Wt9fRFZzC9DIM9+TCGo6DOoWEttzCLnYcLRm9buOgQKTmZcwzCNVcYmvsIAjq++bJmGpo
+1PHlRLVXscV/Z+H1ehtfy4JJTW9NGsikin8Qb85WRaWwlfm8NMjCgwGtK+IUz3+v7W3lpgj4102
ZRFysqMzOWTFbXeTT4zB/zsTv3jvn39UD1kIAniE0Sj+PpInouVv1/X2VL5g/rulbO9/DQE6u7vW
zmKVlLpc1L/u7IeEW8ZuIfl+kcnAKgY4F5rW/IQdmxx895pA65JC03t/LUc9kHhOPhOVGgAjTZXW
+0vv45xbM0tbIKTnE9xIdS2FvfSQ46QKziBrGeked+9XOK+EwY87LZWERQPm54lQIU05uqK3HW9j
ZwArSMw4KKJOtBNHgkVxkrynyCBv/qF0q5uCGNZFtN4g86CE5K26h1dJQYVlT55fGR6x2HToVe/1
uqFq6bwsbK04AZuADRzo7HRdpAwIN34Pw0hL8v7ax65IPiDSLIMyTgLnEcsEDjGdpjwHpnGn1Wi1
gEFtYBvV29n4E8tSI9Bzl8DsEipSOfLDX6aXZLp7eYed9onTiuTYLmuhl75Rn3mdKcJD8kSF7uQ4
cntkvl08vqdXmWsfmrN+cf3O2B9qI1Sp2UGtKiPUi1y2cK2BRgMVem+QyIxHf5RnzQwzmA0X8Af2
NmApwG3HMDcA8RXE51HfD+kOjcCFRhla9mYdCc65yzbEQWO6bkDdQbny8AOOa37yy//cHr4FLOeF
BO7ci/IC75c8KSlNwX0lSuRk0gW4Ki32fv6/OKUFbsl3McoQk1R03J5vQevNd01AkQ5a88s92mzZ
OPgFE0V+4KDJgEJCurD2eqVnv7CWugpZa6LCClHAZxP7luaE+3MO8IQ08tB3h0l6SAhZH0vhnUl4
jHWub/voTbTEv08RGKEQCjCGBuy0PVdJjF2NkRaKl6k7JztP9cSK4QLMR6+QPBjzLtBNC+sxGtBe
kX/EQYGDQTGVeaQvc7SwpaZJw4PugDT/gTYWUS+OsC6VqSO3qiliY+8T8ddTKLH7wSBr76jRch+j
Q4AnRPU+7kzN6RMVD7Uf6uUMc8VLGazoVe2c1PboBwunvnQcO7yXCDYyg3xY1YfP7oAMST2jJWb6
k2mHE4KLXefhmwRqiJbRPCn+9atUk9P2uj/wk7VNfAr2YLJ4Vdu7gwV8bmDqI61jyNrgJ+RSljia
gSDAgOzBawts8NMuev934uhfL0r92j16RgVMeuaDD7qkeT+EaUYUCZ66SF+1DlwaNQDAwz3KdFZY
YOPMqui/Pls5Ub6UJ02QZLrA9r3dJ3iUpsEqAaQd0vrrtfiLIevdvNLvIw+VFMwgIq+qt/N3qAeg
SY6q3ud+0vRsYvrz6pmcO0hQ2TG4IPBVuYDEapY8x2rga6G5ZbvMUEcF4T8D6cNa28nRIXQrlU0L
kUuaVdHhJZ7TaAmNkegGV9Hj9K5IqCUdARp6pD9EUCXz6CgxvIiWh0BLitAoZ2K+bNeF9HZGwcQT
8osRill6RDHcS7YTV9WEjCM1JGLseKtRpTIM7yc0J3pB06f6utMAPsYHtQ+gs75xFbHQ7Ko0iGc/
t02VJjBz5ySdTG4pqBUgNgHAhVtj9Mq1/lkYXJQgDfePZcun5zSOgcCT1b5SjXsqz9Q4HhuMEk1Z
IvwK0GFX94prvKvuu73dfj1uRTg60kJ93uSyOCevcJv7TsD6bFU5eEKcd2oYZ4oiGbZgxXDNS2JH
scM4DsUl/qgp11+/hjkZhhbSJuDH0tAxsV2xxdtoEYljTZqoLloa38Ksp0d7SsAN+JvEivAtIvWK
dB2e18Pt/El+Zp2UvAqre00p2mjeLywROI5tMRvvUA97LWohQLH1MlBunbSW70d2jt0f74XRF+3x
NIQmmZXF4DGis88W6YLZCX2zNoih7YCEBBW7zRixUkOej7Ekx6gW9Y8ZOzd1DxzBJ7JHv34AY3on
gncX3QrqJfxq75uUmDEDvSVyvEZtJ3hXKyVCeS1UMxsDjk4989SI/pUB+sDelu0hBz/9rNAIugwf
MO9Sxdy8bHu9d+L5DklJxA7KMGu7rUrG0Q3ZihwlpuljBK2A/lGabi8Oq/ACY6MIkCJ/27YDJ/VU
pheqQKWsBQjnSc5mN/BWWSGCnxJGpCpe3po/vUddrGkAi87SgCsQsPcmefLWv/X2ZVgIPHjtrIY9
S7r9IhmgWZCrMT6l/6IiTX/EMkDQy5ebxqKU0X2QByWmEHz1njvUUdvMOF+FkojGOSqBuwOaoD/N
0hkEoZGNliARR2iV6cTmMbt5dSW6rMTmf5cGBcB7iggbVR8GCTHkXEpScQyMTphco5lgr6cNtcWV
xLnkIhY7ucNeKiJsi8I8X7oyxwnOWozx/9Ygg13L8s9tEWkFviFfUlwj85nzz4KVU0D4d/g/lg3K
IzD5NOBY7zs1coP0MEU4IpQ8lnYkImM4kt9ancHclNweZsH3sSEoE8+e8Uv7p6Qd5nSj1/nqeehD
Sfg+aD7j4C451+zaRVCLcr0qzaWVbrndfvgb9lE0kwx0bcusskPvEP77+aVUzHwgUf2b4MIROqte
Zo8y34mkgxSwFobNdA/8EsOYogZKrEhxAFHUSpsx4ann8migcUogTVu3TL/lf07JhQGI3QkFnCrJ
0JzuppCRoFTZUo7B5PJkySsxhnb2mvH4I8zcC6AbGuzElgWxp5uhQSvMrGY+CnOCkxYZgGHb2e0M
eM0+9R1eRpkgHaRnxe1nteL3KooCqOyI+6h2XmFAKqIdka9+whgvE2QbrK050bAVuMISiJ7dVHRZ
NdDaBkCK21CwAkDjWEhqk1MuQZEj9iw36Ek8X9nWNacjPbUB65K/giPsg0v2JhAufgbjll6FRkH+
Lzr2RsogksY9uGDz8gSmfzKuO/t0U0i73NZzDDRu9SR8EdAlkuP82hFrt+PQnB0kz5NrDBUVHe51
Z1HQBDto2b2oYg8fJJ8o+zaOtWl7kEUTvqH0yT3znzWBjVoW5AabLsKpmWmyg9IzLinIyBGLy8Lr
otmNijsm5l7G+7yz4XV69tN9+/D02G/CJ7h/qXT6q9nNzTrOiriHrZqenG2Q0Rl54ltpwhWRA/c7
Wucbk13G7Rhocxv0OAXTJOUuYa6GYh84E3VhjKNEG7ZLXoQFqA/VMCPt3uuHwWWE2YXhXWWdHyZr
A/ig/u/B11I4AlbNW4266mPSHbGjXbw24X5DGb+dEfuwLcE87JVkltNIf57zFq1h2RPKbSRx4DTl
Uq2ddbB2sYrmaOV3mUpkVJNVG/RxXPHNPL7YJQTHznpCekGTm+TLX6Ibpm8RMXT3j0dCJOKRYb+A
/jVCStePLtkObYBHQrx0Iuj13W0uUisqFB1oFYsmZof9ZSrUq8Kg7uYmlEyll6w+ILaeGEmfLo54
qNYhI/d2shIV9dHKU5h24WQwD3n/HEY2mCsx5vWpYtez8mPu5ISEHZmBed9k0L8TWkOEzPI1CjdO
VO7C8fcBjeXzI6LvtxhUjaX/SJ6Ziz8BJx3J7rgSEweoXEttMqp+2sFKCjUvd3915E1quQeomhez
wUOvCz0xxmbTLCpZPLFNpnfJLvAI8G+5LLU7U4OmVrBwJQnlwvmXElqAEdGMp8JBdWrVt6AzrJua
D9yFa8ajXAMGThQAlCNpUrzgssVrlFyYuE09ePM/M9fwJh5934VRZxt++E3Om8b/qDYAT/cBcQNq
dzRNMqbkT0tFqDilwGjNJuhFFdBYViCHZn/JENs2FXewuq5NYGYFTHyE5j5fKc2tKAAoNhLxvs0A
W02MJeSMqYGgnHZdRk7SlHj5v1hbPY2lAL4ISyQURqr46jQwzbcg0XyVy6WBpMF5qZJbL3Csu/xA
eUktv/OA+eyoHH9Izi3OkMytJU4byjrMXKXBEVfKq/SMBzh25OCS6cnHTNIQY24W9Y4Mzr8CeGH2
meaDoglB7tyrjBDt1hjp3w77xltwf1RlTW/bO1VI9C1Sdl/meK8kFmdssLjsDUqMaVXIdd0xcQ3a
d891oA525ZYFj/gJ9oDx0fP99DMPLOpM/cZUXE89URnNKvce5BLvDWnM6KDD5leJMyz+3xqcfNG5
+jj1Po/yM8aE9ab3T5ztXRcLLm0f+14lYfWq3wYczYr7gsANI2ydIXm5m/3Jrn8fFH27Q9ZcW8mj
imc0BPvWYqwVr6vHSTkBcfuuscbj1+5YqE45/Ar9tdZQqct88esvez7LlFtF0s5IvQyL0hx6yNeN
teSlFvy+bwAK1yFTuYxmagR5gFRL0Vee4ZyPWvczfxbi
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
