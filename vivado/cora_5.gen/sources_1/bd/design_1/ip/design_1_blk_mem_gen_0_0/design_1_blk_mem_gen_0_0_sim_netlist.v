// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Feb 19 06:33:09 2024
// Host        : PL-BLK-AVA-2023 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/vivado-projects/cora_5/cora_5.gen/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_0/design_1_blk_mem_gen_0_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module design_1_blk_mem_gen_0_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  output rsta_busy;

  wire [31:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire rsta;
  wire rsta_busy;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
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
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.3746 mW" *) 
  (* C_FAMILY = "zynq" *) 
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
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_blk_mem_gen_0_0_blk_mem_gen_v8_4_5 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RgPKnWr9n0dGgttm3akiFhAlfB96usOQYxnEmPhGyTGg1AbizYAjGPWLXBWl50n/d0IA71ci4aJB
wt6mtfyNADm3ZReK7D3mKu037BOgxryoEwwf1kiC6q/PllxsdAgEMfQrfHJ3E2AzSpdYjoxVYito
y0JW6CUDcWvWa4WV0EA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M0l6KpOGH3jL8eRt3NCD7e2USYnkg5H9GAnE1PKmnjiouFN3Y8kjWA2PZDAQLm9UW+TsC1HeVlzO
WjNCHkjR/6ubCsIcWfpPZWdIuAenlsyq8Y9l6b8vMj8JSbDEOiFF/GHSbKsn22MJdDJKEhHFK6GV
s8gR2vywRFwG69gIRE4qGhVB+WIg8GJrDpDMYH6lCjMkTrjXuKDUcNlJN3NPLuhJ7tsditwf1pr5
moJRmGpJnip/rGm0g4o4A6ev4CtePjoao8C1wFtzHkERX9oenhh7cGjDMejU5IrLv8NxFnLj1FpB
9MuF1beTU20NI5oAn6zLiLiOtXjf0ghU3AN4DA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hAsrUfp6Qgjm8yBjNYTEtQmVQmMxzL8TE/3oiQSxSI3+yEkXAbQCXkT9mo+LCdv+fGECOB0istHd
eLtbsiYbxjxNxYkXiUrRE5O+aSxynIray+uF9DJigTEUZu8JJXUbzxK4DDUu1Lm9tpGps4+Prz1m
0gkj13RT/Y/418s2VTw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BP/54Wm/GJmb1jy0bxWJJX4aiKyiWPVh4X3VL30BQrmX4PlEsNKzBJH3Qu8IIYERfnFP0ifAgboa
vypMQ5Ed0BrMePGkWIgT6I8hxJCMFpHdkSK7m1giSKyZzFfTOrVqoNFXE+qdzLfY1J5hBWCvouYo
jllavK4N3gF9FLScH2AUWYVMcVth2QPaTAU2NLnAUNH8kgtBjBfc8/KbPPTznD1QNVqvFstzcbTA
hGQ1ETVPvINQ0KqxxAG5PRhtQD4+pC+hr/Tvk+RSvGyBOfy9zE86OXkJiYs9dSFhNiMFmCPL9DBO
se4OxNNC0/7aBtb1mkSEA9YFDYEb9jS7Jasy2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SnzT9DVH3xlEN8nrr2YrlvTO5qj7L22d7WaBcuKyTaiHoIwwFHrC4HQbfs0TAwkdWcOgmJoATPSF
F6qm0KiddbrlERF3MfKUldeGBJtqLdX+zGw7+3JD7S+HB9dIMOFOHy+IiCZp1/Pz8epKpi238cel
rcVoJQKz406wmXDvOo8KsT+XhRLs9BVCrBErPGGXKYDk6NXAp0duOgQE9DbslzMU83M/kUC7uERV
tQW02240peKQFp2elEZC7Tetvgp0TaFTtJiKN45REi8GQUCKGa85JjNIk1qb/+k95TIIP1xrHirc
6iX7qbwnPetv8TVu2NjkZ0WDEK5RXdOXcxBwHA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
erkR82V0jX8ytva+9MzEs0c75Z7j7TsgxWRLNAUfbbU28i+U9YzuZlSfYU75M0f9jx1gvxtBrfKv
cNHVdkR+i5zfHDZsDwfMEEBhs8wzDCKqe+eex6BBEvlIOesCPXrr2RozQgaQ1PBh/os2Arfu+873
BjsVxFJkbhpzIqlddOo/XZV9Yi+eih7A7pXXEBR6IL7Poo4Ka49MiVQU0xJrDTm+ddOuMPDRRD7g
dsxS/uzdcBcO2myV6g/7YH/C2Ce9s6+UywJN/0JeXSqwA7bsBqqnfFicVAT0lckLopMLiuzK7dsN
EwhFeqoetciFrDIj9+o0xDMWBZhgNP1u68vURA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R+BI65BKLT0I9hEtsxGnDyM5XY9gzULeTPOSDXvd3KWOzZJAx6C0xlbyZcFZhAEG/QIK2yd0wAi6
IUWxyF/sx3HsqKjhVi5KxnpuXDBOZVoj811O7JukedFVmDW7OHGtBkuiJ5X5irw7mfsEKRQmF/1i
V6lj9HYHZEjxtDeZjACsLY4y1QxWalSKT4HIMOHznBLL8dLbGMlS+ZmFuFn0gcwZavVl7gTkTtkf
W0gn01A9ru7NKsf+iLX0kj4dgItPu9N2g02M1vWQ9UUQEVvfV7lUc7GY1suibrD8aEkhH9S7lZ7n
bFsT4qxyvzg8ML6v4g4v7N6VuyhEtgFgNd725Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
jNUVKiwH68vHsU54idgvKwaVJcoxTUuxfgrQpbpmM/IpesWA3wHsGzYClwAxkKzw3KRnFyQqTWcZ
yj1EQ2CMBxlJ0kyNbZW8OK8pXzeigToZ0U6Aq3Gy+j7wBbhe83wE1Ygn82sK8dHTEulvaRLn/c5r
ispy1s7jMKIvYNzoUuZrgyBQyfaYmdqUia8XlQjFd+VwzhTXKwzvmaqHWyaHjfBKeCooO7+oUxMG
OJg83W54EVe9ronFQ8Wr9EOL8ia7qelCAgyQe/bC0HHCoMAm8apI7sX23iMR/wMiPP5V2bQzycy+
rBX/+SWkqSeIE1FLm+muFPvrE7iLwJaW8d1fzdFFjAZ5aIXArbWNfwbK8S0TczXc9lEzmpb69rwA
UJIrs4alo81qGQ32UFhjuMQjX75O9Od1HWHDj5PFaT/Ja5Ly+bK8Cc3gfO6dCE81m7d+B2JBZ/Hl
tBA19QuOAYwT2EIPOdpaVtCULb33cWODWu3qQFhZMmDzKTb3kwpcr0LL

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MnzcA2swaxH1LRacKDou0ZmiiMRETbWIdHgeBgyQz7ILronsXLoB/C20WuFNGEVSiL2/51EZ6MXZ
vMHI8fFcMQCJcuTBDBibUMKv6bXI9s8fTbtrBZppbF/R1icG5JYhqmX4aRnv4W/dxJRjI2L35nLN
Y48E9OfgfkD1sr+IRwx8WEKFmUhuk8dLe0VOK7ywe3XEcneYvrz+HhPj16bGmNfMwNnDgZ3gKKZD
hRnys+jzvAX3HyISrErWXhMKrhWMxXeTNFJCqNQ0LWAVHQYwyKnF5xVpyXSuGNSIrva+QXqOrZBG
3VNLirNVtMRiKLfwZeMaqvswkqBDAa53utlAAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d0xXkKtsKM8GvXhDZr16p1+oE3uBtD04BJ76eGGIEj/CFECfHVy9qsJ43oSKjas0+AJr4GFFnVb6
X7gJV6MmX/OboC9ier5joUCGz0mxVzkRZK9a+LPEDcg0K6+cLE36kr+FfxW9Uk2816EHBCMCf5mK
A4eAhSmAb5Nq74F/q0quiG416npbny7faiQ+xmPDfYYiM3UuMKaD4iE8ODlz1w5xThPllWESf3LZ
NTkw6fozyTqZ47vvE21O3dgIGAY1v+C6BwlCK24VwPJa1xs9csY+qTk31j5jjAc1ExlB6QF7t9UH
lk70qdNPWxT87OH7kFT8UvPO1D6BTC3/WkDZfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYhdzKTvo93uJrAaiP5OfCDuOnu2BSvPnxlv6I7h2n1+xHtj34LNNKzWEgOg9dUV9cYDaHYUjjEt
DKdWcz6mZ61d5qyxAhpv67fc90v7JVgtOAcT94/Yb+AuLxXFcGA6Gic7uoJtUgz6JmTnb22Dxdjc
KuIewDj4IOTfP8XGXKTaF+cNp0CFrQgTAcVSQFyLFxr0I/9h3S+GZLecA7ntEeHEOfCJzPvy0ddi
7MCdQWECLb+fXC0IAn8V95TumcpINiRAX1BHi9IGJ4QoMrb3jOCrPkFhDMTJj2aiImUWdi/l/0QE
d7wcXlgIEYVeoKYUOJ4mqy+zZPUbLNeOPADUDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52800)
`pragma protect data_block
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
W5p8QxLgbra0shHUPa+Dxc57
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
