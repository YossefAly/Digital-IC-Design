// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Aug  4 00:48:28 2024
// Host        : DESKTOP-5U86IU8 running 64-bit major release  (build 9200)
// Command     : write_verilog {D:/Digital IC Design Diploma/Project2/project_3.v}
// Design      : SPI_wrapper
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RAM
   (tx_valid,
    MISO_reg,
    clk_IBUF_BUFG,
    rx_valid,
    \rx_data_reg[9] ,
    Q,
    WEA,
    \rx_data_reg[9]_0 ,
    rst_n_IBUF,
    out,
    E,
    \rx_data_reg[8] );
  output tx_valid;
  output MISO_reg;
  input clk_IBUF_BUFG;
  input rx_valid;
  input \rx_data_reg[9] ;
  input [7:0]Q;
  input [0:0]WEA;
  input \rx_data_reg[9]_0 ;
  input rst_n_IBUF;
  input [2:0]out;
  input [0:0]E;
  input [0:0]\rx_data_reg[8] ;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]E;
  wire MISO_i_3_n_0;
  wire MISO_i_4_n_0;
  wire MISO_reg;
  wire [7:0]Q;
  wire [0:0]WEA;
  wire [7:0]addressR;
  wire [7:0]addressW;
  wire \addressW[7]_i_1_n_0 ;
  wire clk_IBUF_BUFG;
  wire [2:0]out;
  wire rst_n_IBUF;
  wire [0:0]\rx_data_reg[8] ;
  wire \rx_data_reg[9] ;
  wire \rx_data_reg[9]_0 ;
  wire rx_valid;
  wire [7:0]tx_data;
  wire tx_valid;

  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    MISO_i_3
       (.I0(tx_data[1]),
        .I1(tx_data[3]),
        .I2(tx_data[0]),
        .I3(out[0]),
        .I4(out[1]),
        .I5(tx_data[2]),
        .O(MISO_i_3_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    MISO_i_4
       (.I0(tx_data[5]),
        .I1(tx_data[7]),
        .I2(tx_data[4]),
        .I3(out[0]),
        .I4(out[1]),
        .I5(tx_data[6]),
        .O(MISO_i_4_n_0));
  MUXF7 MISO_reg_i_2
       (.I0(MISO_i_3_n_0),
        .I1(MISO_i_4_n_0),
        .O(MISO_reg),
        .S(out[2]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "Memory/Memory" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    Memory_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,addressW,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,addressR,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(clk_IBUF_BUFG),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,Q}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO(tx_data),
        .ENARDEN(rx_valid),
        .ENBWREN(\rx_data_reg[9] ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\addressW[7]_i_1_n_0 ),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({WEA,WEA}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  VCC VCC
       (.P(\<const1> ));
  FDRE #(
    .INIT(1'b0)) 
    \addressR_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data_reg[8] ),
        .D(Q[0]),
        .Q(addressR[0]),
        .R(\addressW[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressR_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data_reg[8] ),
        .D(Q[1]),
        .Q(addressR[1]),
        .R(\addressW[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressR_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data_reg[8] ),
        .D(Q[2]),
        .Q(addressR[2]),
        .R(\addressW[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressR_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data_reg[8] ),
        .D(Q[3]),
        .Q(addressR[3]),
        .R(\addressW[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressR_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data_reg[8] ),
        .D(Q[4]),
        .Q(addressR[4]),
        .R(\addressW[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressR_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data_reg[8] ),
        .D(Q[5]),
        .Q(addressR[5]),
        .R(\addressW[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressR_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data_reg[8] ),
        .D(Q[6]),
        .Q(addressR[6]),
        .R(\addressW[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressR_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data_reg[8] ),
        .D(Q[7]),
        .Q(addressR[7]),
        .R(\addressW[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addressW[7]_i_1 
       (.I0(rst_n_IBUF),
        .O(\addressW[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressW_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(Q[0]),
        .Q(addressW[0]),
        .R(\addressW[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressW_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(Q[1]),
        .Q(addressW[1]),
        .R(\addressW[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressW_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(Q[2]),
        .Q(addressW[2]),
        .R(\addressW[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressW_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(Q[3]),
        .Q(addressW[3]),
        .R(\addressW[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressW_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(Q[4]),
        .Q(addressW[4]),
        .R(\addressW[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressW_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(Q[5]),
        .Q(addressW[5]),
        .R(\addressW[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressW_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(Q[6]),
        .Q(addressW[6]),
        .R(\addressW[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressW_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(Q[7]),
        .Q(addressW[7]),
        .R(\addressW[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    tx_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data_reg[9]_0 ),
        .Q(tx_valid),
        .R(\<const0> ));
endmodule

module SPI_Slave
   (MISO_OBUF,
    rx_valid,
    out,
    WEA,
    Q,
    E,
    \addressR_reg[7] ,
    tx_valid_reg,
    Memory_reg,
    \i_reg[2]_0 ,
    clk_IBUF_BUFG,
    tx_valid,
    rst_n_IBUF,
    D,
    SS_n_IBUF);
  output MISO_OBUF;
  output rx_valid;
  output [2:0]out;
  output [0:0]WEA;
  output [7:0]Q;
  output [0:0]E;
  output [0:0]\addressR_reg[7] ;
  output tx_valid_reg;
  output Memory_reg;
  input \i_reg[2]_0 ;
  input clk_IBUF_BUFG;
  input tx_valid;
  input rst_n_IBUF;
  input [0:0]D;
  input SS_n_IBUF;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_gray_cs[0]_i_1_n_0 ;
  wire \FSM_gray_cs[1]_i_1_n_0 ;
  wire \FSM_gray_ns[0]_i_1_n_0 ;
  wire \FSM_gray_ns[1]_i_1_n_0 ;
  wire MISO_OBUF;
  wire MISO_i_1_n_0;
  wire Memory_reg;
  wire [7:0]Q;
  wire READADD0;
  wire READADD0_carry__0_i_1_n_0;
  wire READADD0_carry__0_i_2_n_0;
  wire READADD0_carry__0_i_3_n_0;
  wire READADD0_carry__0_i_4_n_0;
  wire READADD0_carry__0_n_0;
  wire READADD0_carry__0_n_1;
  wire READADD0_carry__0_n_2;
  wire READADD0_carry__0_n_3;
  wire READADD0_carry__1_i_1_n_0;
  wire READADD0_carry__1_i_2_n_0;
  wire READADD0_carry__1_i_3_n_0;
  wire READADD0_carry__1_n_2;
  wire READADD0_carry__1_n_3;
  wire READADD0_carry_i_1_n_0;
  wire READADD0_carry_i_2_n_0;
  wire READADD0_carry_i_3_n_0;
  wire READADD0_carry_i_4_n_0;
  wire READADD0_carry_n_0;
  wire READADD0_carry_n_1;
  wire READADD0_carry_n_2;
  wire READADD0_carry_n_3;
  wire READADD_i_1_n_0;
  wire READADD_i_2_n_0;
  wire READADD_reg_n_0;
  wire SS_n_IBUF;
  wire [0:0]WEA;
  wire [0:0]\addressR_reg[7] ;
  wire clk_IBUF_BUFG;
  (* RTL_KEEP = "yes" *) wire [1:0]cs;
  wire \i[0]_i_1_n_0 ;
  wire \i[0]_i_2_n_0 ;
  wire \i_reg[0]_i_3_n_0 ;
  wire \i_reg[0]_i_3_n_1 ;
  wire \i_reg[0]_i_3_n_2 ;
  wire \i_reg[0]_i_3_n_3 ;
  wire \i_reg[0]_i_3_n_4 ;
  wire \i_reg[0]_i_3_n_5 ;
  wire \i_reg[0]_i_3_n_6 ;
  wire \i_reg[0]_i_3_n_7 ;
  wire \i_reg[12]_i_1_n_0 ;
  wire \i_reg[12]_i_1_n_1 ;
  wire \i_reg[12]_i_1_n_2 ;
  wire \i_reg[12]_i_1_n_3 ;
  wire \i_reg[12]_i_1_n_4 ;
  wire \i_reg[12]_i_1_n_5 ;
  wire \i_reg[12]_i_1_n_6 ;
  wire \i_reg[12]_i_1_n_7 ;
  wire \i_reg[16]_i_1_n_0 ;
  wire \i_reg[16]_i_1_n_1 ;
  wire \i_reg[16]_i_1_n_2 ;
  wire \i_reg[16]_i_1_n_3 ;
  wire \i_reg[16]_i_1_n_4 ;
  wire \i_reg[16]_i_1_n_5 ;
  wire \i_reg[16]_i_1_n_6 ;
  wire \i_reg[16]_i_1_n_7 ;
  wire \i_reg[20]_i_1_n_0 ;
  wire \i_reg[20]_i_1_n_1 ;
  wire \i_reg[20]_i_1_n_2 ;
  wire \i_reg[20]_i_1_n_3 ;
  wire \i_reg[20]_i_1_n_4 ;
  wire \i_reg[20]_i_1_n_5 ;
  wire \i_reg[20]_i_1_n_6 ;
  wire \i_reg[20]_i_1_n_7 ;
  wire \i_reg[24]_i_1_n_0 ;
  wire \i_reg[24]_i_1_n_1 ;
  wire \i_reg[24]_i_1_n_2 ;
  wire \i_reg[24]_i_1_n_3 ;
  wire \i_reg[24]_i_1_n_4 ;
  wire \i_reg[24]_i_1_n_5 ;
  wire \i_reg[24]_i_1_n_6 ;
  wire \i_reg[24]_i_1_n_7 ;
  wire \i_reg[28]_i_1_n_1 ;
  wire \i_reg[28]_i_1_n_2 ;
  wire \i_reg[28]_i_1_n_3 ;
  wire \i_reg[28]_i_1_n_4 ;
  wire \i_reg[28]_i_1_n_5 ;
  wire \i_reg[28]_i_1_n_6 ;
  wire \i_reg[28]_i_1_n_7 ;
  wire \i_reg[2]_0 ;
  wire \i_reg[4]_i_1_n_0 ;
  wire \i_reg[4]_i_1_n_1 ;
  wire \i_reg[4]_i_1_n_2 ;
  wire \i_reg[4]_i_1_n_3 ;
  wire \i_reg[4]_i_1_n_4 ;
  wire \i_reg[4]_i_1_n_5 ;
  wire \i_reg[4]_i_1_n_6 ;
  wire \i_reg[4]_i_1_n_7 ;
  wire \i_reg[8]_i_1_n_0 ;
  wire \i_reg[8]_i_1_n_1 ;
  wire \i_reg[8]_i_1_n_2 ;
  wire \i_reg[8]_i_1_n_3 ;
  wire \i_reg[8]_i_1_n_4 ;
  wire \i_reg[8]_i_1_n_5 ;
  wire \i_reg[8]_i_1_n_6 ;
  wire \i_reg[8]_i_1_n_7 ;
  wire [31:3]i_reg__0;
  wire [1:0]ns;
  wire [2:0]out;
  wire [31:0]p_0_in;
  wire rst_n_IBUF;
  wire [9:8]rx_data;
  wire \rx_data[0]_i_1_n_0 ;
  wire \rx_data[1]_i_1_n_0 ;
  wire \rx_data[2]_i_1_n_0 ;
  wire \rx_data[3]_i_1_n_0 ;
  wire \rx_data[4]_i_1_n_0 ;
  wire \rx_data[5]_i_1_n_0 ;
  wire \rx_data[6]_i_1_n_0 ;
  wire \rx_data[7]_i_1_n_0 ;
  wire \rx_data[8]_i_1_n_0 ;
  wire \rx_data[9]_i_1_n_0 ;
  wire \rx_data[9]_i_2_n_0 ;
  wire \rx_data[9]_i_3_n_0 ;
  wire rx_valid;
  wire rx_valid0_carry__0_i_1_n_0;
  wire rx_valid0_carry__0_i_2_n_0;
  wire rx_valid0_carry__0_i_3_n_0;
  wire rx_valid0_carry__0_i_4_n_0;
  wire rx_valid0_carry__0_i_5_n_0;
  wire rx_valid0_carry__0_i_5_n_1;
  wire rx_valid0_carry__0_i_5_n_2;
  wire rx_valid0_carry__0_i_5_n_3;
  wire rx_valid0_carry__0_i_6_n_0;
  wire rx_valid0_carry__0_i_6_n_1;
  wire rx_valid0_carry__0_i_6_n_2;
  wire rx_valid0_carry__0_i_6_n_3;
  wire rx_valid0_carry__0_i_7_n_0;
  wire rx_valid0_carry__0_i_7_n_1;
  wire rx_valid0_carry__0_i_7_n_2;
  wire rx_valid0_carry__0_i_7_n_3;
  wire rx_valid0_carry__0_n_0;
  wire rx_valid0_carry__0_n_1;
  wire rx_valid0_carry__0_n_2;
  wire rx_valid0_carry__0_n_3;
  wire rx_valid0_carry__1_i_1_n_0;
  wire rx_valid0_carry__1_i_2_n_0;
  wire rx_valid0_carry__1_i_3_n_0;
  wire rx_valid0_carry__1_i_4_n_2;
  wire rx_valid0_carry__1_i_4_n_3;
  wire rx_valid0_carry__1_i_5_n_0;
  wire rx_valid0_carry__1_i_5_n_1;
  wire rx_valid0_carry__1_i_5_n_2;
  wire rx_valid0_carry__1_i_5_n_3;
  wire rx_valid0_carry__1_n_1;
  wire rx_valid0_carry__1_n_2;
  wire rx_valid0_carry__1_n_3;
  wire rx_valid0_carry_i_1_n_0;
  wire rx_valid0_carry_i_2_n_0;
  wire rx_valid0_carry_i_3_n_0;
  wire rx_valid0_carry_i_4_n_0;
  wire rx_valid0_carry_i_5_n_0;
  wire rx_valid0_carry_i_5_n_1;
  wire rx_valid0_carry_i_5_n_2;
  wire rx_valid0_carry_i_5_n_3;
  wire rx_valid0_carry_i_6_n_0;
  wire rx_valid0_carry_i_6_n_1;
  wire rx_valid0_carry_i_6_n_2;
  wire rx_valid0_carry_i_6_n_3;
  wire rx_valid0_carry_i_7_n_0;
  wire rx_valid0_carry_i_7_n_1;
  wire rx_valid0_carry_i_7_n_2;
  wire rx_valid0_carry_i_7_n_3;
  wire rx_valid0_carry_n_0;
  wire rx_valid0_carry_n_1;
  wire rx_valid0_carry_n_2;
  wire rx_valid0_carry_n_3;
  wire rx_valid_i_1_n_0;
  wire tx_valid;
  wire tx_valid_reg;

  LUT2 #(
    .INIT(4'h8)) 
    \FSM_gray_cs[0]_i_1 
       (.I0(ns[0]),
        .I1(rst_n_IBUF),
        .O(\FSM_gray_cs[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_gray_cs[1]_i_1 
       (.I0(ns[1]),
        .I1(rst_n_IBUF),
        .O(\FSM_gray_cs[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "CHK_CMD:01,WRITE:10,IDLE:00,READ:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_cs_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\FSM_gray_cs[0]_i_1_n_0 ),
        .Q(cs[0]),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "CHK_CMD:01,WRITE:10,IDLE:00,READ:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_cs_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\FSM_gray_cs[1]_i_1_n_0 ),
        .Q(cs[1]),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'h3023)) 
    \FSM_gray_ns[0]_i_1 
       (.I0(D),
        .I1(SS_n_IBUF),
        .I2(cs[0]),
        .I3(cs[1]),
        .O(\FSM_gray_ns[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \FSM_gray_ns[1]_i_1 
       (.I0(cs[1]),
        .I1(cs[0]),
        .I2(SS_n_IBUF),
        .O(\FSM_gray_ns[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_ns_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\FSM_gray_ns[0]_i_1_n_0 ),
        .Q(ns[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_ns_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\FSM_gray_ns[1]_i_1_n_0 ),
        .Q(ns[1]),
        .R(\<const0> ));
  GND GND
       (.G(\<const0> ));
  LUT5 #(
    .INIT(32'h00008000)) 
    MISO_i_1
       (.I0(cs[1]),
        .I1(cs[0]),
        .I2(tx_valid),
        .I3(rx_valid),
        .I4(READADD_reg_n_0),
        .O(MISO_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    MISO_reg
       (.C(clk_IBUF_BUFG),
        .CE(MISO_i_1_n_0),
        .D(\i_reg[2]_0 ),
        .Q(MISO_OBUF),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'h8F)) 
    Memory_reg_i_1
       (.I0(rx_data[9]),
        .I1(rx_data[8]),
        .I2(rst_n_IBUF),
        .O(Memory_reg));
  LUT3 #(
    .INIT(8'h40)) 
    Memory_reg_i_2
       (.I0(rx_data[9]),
        .I1(rst_n_IBUF),
        .I2(rx_data[8]),
        .O(WEA));
  CARRY4 READADD0_carry
       (.CI(\<const0> ),
        .CO({READADD0_carry_n_0,READADD0_carry_n_1,READADD0_carry_n_2,READADD0_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({READADD0_carry_i_1_n_0,READADD0_carry_i_2_n_0,READADD0_carry_i_3_n_0,READADD0_carry_i_4_n_0}));
  CARRY4 READADD0_carry__0
       (.CI(READADD0_carry_n_0),
        .CO({READADD0_carry__0_n_0,READADD0_carry__0_n_1,READADD0_carry__0_n_2,READADD0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({READADD0_carry__0_i_1_n_0,READADD0_carry__0_i_2_n_0,READADD0_carry__0_i_3_n_0,READADD0_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    READADD0_carry__0_i_1
       (.I0(p_0_in[23]),
        .I1(p_0_in[22]),
        .I2(p_0_in[21]),
        .O(READADD0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    READADD0_carry__0_i_2
       (.I0(p_0_in[20]),
        .I1(p_0_in[19]),
        .I2(p_0_in[18]),
        .O(READADD0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    READADD0_carry__0_i_3
       (.I0(p_0_in[17]),
        .I1(p_0_in[16]),
        .I2(p_0_in[15]),
        .O(READADD0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    READADD0_carry__0_i_4
       (.I0(p_0_in[14]),
        .I1(p_0_in[13]),
        .I2(p_0_in[12]),
        .O(READADD0_carry__0_i_4_n_0));
  CARRY4 READADD0_carry__1
       (.CI(READADD0_carry__0_n_0),
        .CO({READADD0,READADD0_carry__1_n_2,READADD0_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,READADD0_carry__1_i_1_n_0,READADD0_carry__1_i_2_n_0,READADD0_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    READADD0_carry__1_i_1
       (.I0(p_0_in[31]),
        .I1(p_0_in[30]),
        .O(READADD0_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    READADD0_carry__1_i_2
       (.I0(p_0_in[29]),
        .I1(p_0_in[28]),
        .I2(p_0_in[27]),
        .O(READADD0_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    READADD0_carry__1_i_3
       (.I0(p_0_in[26]),
        .I1(p_0_in[25]),
        .I2(p_0_in[24]),
        .O(READADD0_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    READADD0_carry_i_1
       (.I0(p_0_in[11]),
        .I1(p_0_in[10]),
        .I2(p_0_in[9]),
        .O(READADD0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    READADD0_carry_i_2
       (.I0(p_0_in[8]),
        .I1(p_0_in[7]),
        .I2(p_0_in[6]),
        .O(READADD0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    READADD0_carry_i_3
       (.I0(p_0_in[5]),
        .I1(p_0_in[4]),
        .I2(p_0_in[3]),
        .O(READADD0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    READADD0_carry_i_4
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(out[0]),
        .O(READADD0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h8F88FF00FF00FF00)) 
    READADD_i_1
       (.I0(READADD_i_2_n_0),
        .I1(READADD0),
        .I2(rx_valid0_carry__1_n_1),
        .I3(READADD_reg_n_0),
        .I4(cs[0]),
        .I5(cs[1]),
        .O(READADD_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    READADD_i_2
       (.I0(READADD_reg_n_0),
        .I1(rx_valid),
        .I2(tx_valid),
        .O(READADD_i_2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    READADD_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(READADD_i_1_n_0),
        .Q(READADD_reg_n_0),
        .R(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \addressR[7]_i_1 
       (.I0(rx_data[8]),
        .I1(rx_data[9]),
        .I2(rx_valid),
        .O(\addressR_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \addressW[7]_i_2 
       (.I0(rx_data[9]),
        .I1(rx_data[8]),
        .I2(rx_valid),
        .O(E));
  LUT5 #(
    .INIT(32'h0040FFFF)) 
    \i[0]_i_1 
       (.I0(READADD_reg_n_0),
        .I1(cs[0]),
        .I2(rx_valid0_carry__1_n_1),
        .I3(rx_valid),
        .I4(cs[1]),
        .O(\i[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \i[0]_i_2 
       (.I0(tx_valid),
        .I1(cs[0]),
        .I2(READADD_reg_n_0),
        .I3(rx_valid),
        .O(\i[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \i[0]_i_4 
       (.I0(out[0]),
        .O(p_0_in[0]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[0]_i_3_n_7 ),
        .Q(out[0]),
        .R(\i[0]_i_1_n_0 ));
  CARRY4 \i_reg[0]_i_3 
       (.CI(\<const0> ),
        .CO({\i_reg[0]_i_3_n_0 ,\i_reg[0]_i_3_n_1 ,\i_reg[0]_i_3_n_2 ,\i_reg[0]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\i_reg[0]_i_3_n_4 ,\i_reg[0]_i_3_n_5 ,\i_reg[0]_i_3_n_6 ,\i_reg[0]_i_3_n_7 }),
        .S({i_reg__0[3],out[2:1],p_0_in[0]}));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[8]_i_1_n_5 ),
        .Q(i_reg__0[10]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[8]_i_1_n_4 ),
        .Q(i_reg__0[11]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[12]_i_1_n_7 ),
        .Q(i_reg__0[12]),
        .R(\i[0]_i_1_n_0 ));
  CARRY4 \i_reg[12]_i_1 
       (.CI(\i_reg[8]_i_1_n_0 ),
        .CO({\i_reg[12]_i_1_n_0 ,\i_reg[12]_i_1_n_1 ,\i_reg[12]_i_1_n_2 ,\i_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\i_reg[12]_i_1_n_4 ,\i_reg[12]_i_1_n_5 ,\i_reg[12]_i_1_n_6 ,\i_reg[12]_i_1_n_7 }),
        .S(i_reg__0[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[12]_i_1_n_6 ),
        .Q(i_reg__0[13]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[12]_i_1_n_5 ),
        .Q(i_reg__0[14]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[12]_i_1_n_4 ),
        .Q(i_reg__0[15]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[16]_i_1_n_7 ),
        .Q(i_reg__0[16]),
        .R(\i[0]_i_1_n_0 ));
  CARRY4 \i_reg[16]_i_1 
       (.CI(\i_reg[12]_i_1_n_0 ),
        .CO({\i_reg[16]_i_1_n_0 ,\i_reg[16]_i_1_n_1 ,\i_reg[16]_i_1_n_2 ,\i_reg[16]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\i_reg[16]_i_1_n_4 ,\i_reg[16]_i_1_n_5 ,\i_reg[16]_i_1_n_6 ,\i_reg[16]_i_1_n_7 }),
        .S(i_reg__0[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[16]_i_1_n_6 ),
        .Q(i_reg__0[17]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[16]_i_1_n_5 ),
        .Q(i_reg__0[18]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[16]_i_1_n_4 ),
        .Q(i_reg__0[19]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[0]_i_3_n_6 ),
        .Q(out[1]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[20]_i_1_n_7 ),
        .Q(i_reg__0[20]),
        .R(\i[0]_i_1_n_0 ));
  CARRY4 \i_reg[20]_i_1 
       (.CI(\i_reg[16]_i_1_n_0 ),
        .CO({\i_reg[20]_i_1_n_0 ,\i_reg[20]_i_1_n_1 ,\i_reg[20]_i_1_n_2 ,\i_reg[20]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\i_reg[20]_i_1_n_4 ,\i_reg[20]_i_1_n_5 ,\i_reg[20]_i_1_n_6 ,\i_reg[20]_i_1_n_7 }),
        .S(i_reg__0[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[20]_i_1_n_6 ),
        .Q(i_reg__0[21]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[20]_i_1_n_5 ),
        .Q(i_reg__0[22]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[20]_i_1_n_4 ),
        .Q(i_reg__0[23]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[24]_i_1_n_7 ),
        .Q(i_reg__0[24]),
        .R(\i[0]_i_1_n_0 ));
  CARRY4 \i_reg[24]_i_1 
       (.CI(\i_reg[20]_i_1_n_0 ),
        .CO({\i_reg[24]_i_1_n_0 ,\i_reg[24]_i_1_n_1 ,\i_reg[24]_i_1_n_2 ,\i_reg[24]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\i_reg[24]_i_1_n_4 ,\i_reg[24]_i_1_n_5 ,\i_reg[24]_i_1_n_6 ,\i_reg[24]_i_1_n_7 }),
        .S(i_reg__0[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[24]_i_1_n_6 ),
        .Q(i_reg__0[25]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[24]_i_1_n_5 ),
        .Q(i_reg__0[26]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[24]_i_1_n_4 ),
        .Q(i_reg__0[27]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[28]_i_1_n_7 ),
        .Q(i_reg__0[28]),
        .R(\i[0]_i_1_n_0 ));
  CARRY4 \i_reg[28]_i_1 
       (.CI(\i_reg[24]_i_1_n_0 ),
        .CO({\i_reg[28]_i_1_n_1 ,\i_reg[28]_i_1_n_2 ,\i_reg[28]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\i_reg[28]_i_1_n_4 ,\i_reg[28]_i_1_n_5 ,\i_reg[28]_i_1_n_6 ,\i_reg[28]_i_1_n_7 }),
        .S(i_reg__0[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[28]_i_1_n_6 ),
        .Q(i_reg__0[29]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[0]_i_3_n_5 ),
        .Q(out[2]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[28]_i_1_n_5 ),
        .Q(i_reg__0[30]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[28]_i_1_n_4 ),
        .Q(i_reg__0[31]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[0]_i_3_n_4 ),
        .Q(i_reg__0[3]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[4]_i_1_n_7 ),
        .Q(i_reg__0[4]),
        .R(\i[0]_i_1_n_0 ));
  CARRY4 \i_reg[4]_i_1 
       (.CI(\i_reg[0]_i_3_n_0 ),
        .CO({\i_reg[4]_i_1_n_0 ,\i_reg[4]_i_1_n_1 ,\i_reg[4]_i_1_n_2 ,\i_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\i_reg[4]_i_1_n_4 ,\i_reg[4]_i_1_n_5 ,\i_reg[4]_i_1_n_6 ,\i_reg[4]_i_1_n_7 }),
        .S(i_reg__0[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[4]_i_1_n_6 ),
        .Q(i_reg__0[5]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[4]_i_1_n_5 ),
        .Q(i_reg__0[6]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[4]_i_1_n_4 ),
        .Q(i_reg__0[7]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[8]_i_1_n_7 ),
        .Q(i_reg__0[8]),
        .R(\i[0]_i_1_n_0 ));
  CARRY4 \i_reg[8]_i_1 
       (.CI(\i_reg[4]_i_1_n_0 ),
        .CO({\i_reg[8]_i_1_n_0 ,\i_reg[8]_i_1_n_1 ,\i_reg[8]_i_1_n_2 ,\i_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\i_reg[8]_i_1_n_4 ,\i_reg[8]_i_1_n_5 ,\i_reg[8]_i_1_n_6 ,\i_reg[8]_i_1_n_7 }),
        .S(i_reg__0[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[8]_i_1_n_6 ),
        .Q(i_reg__0[9]),
        .R(\i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \rx_data[0]_i_1 
       (.I0(i_reg__0[3]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(\rx_data[9]_i_3_n_0 ),
        .O(\rx_data[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \rx_data[1]_i_1 
       (.I0(i_reg__0[3]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(\rx_data[9]_i_3_n_0 ),
        .O(\rx_data[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \rx_data[2]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(i_reg__0[3]),
        .I3(out[2]),
        .I4(\rx_data[9]_i_3_n_0 ),
        .O(\rx_data[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \rx_data[3]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(i_reg__0[3]),
        .I3(out[2]),
        .I4(\rx_data[9]_i_3_n_0 ),
        .O(\rx_data[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \rx_data[4]_i_1 
       (.I0(out[2]),
        .I1(i_reg__0[3]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(\rx_data[9]_i_3_n_0 ),
        .O(\rx_data[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \rx_data[5]_i_1 
       (.I0(out[2]),
        .I1(i_reg__0[3]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(\rx_data[9]_i_3_n_0 ),
        .O(\rx_data[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \rx_data[6]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(out[2]),
        .I3(i_reg__0[3]),
        .I4(\rx_data[9]_i_3_n_0 ),
        .O(\rx_data[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \rx_data[7]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(out[2]),
        .I3(i_reg__0[3]),
        .I4(\rx_data[9]_i_3_n_0 ),
        .O(\rx_data[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \rx_data[8]_i_1 
       (.I0(out[2]),
        .I1(i_reg__0[3]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(\rx_data[9]_i_3_n_0 ),
        .O(\rx_data[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rx_data[9]_i_1 
       (.I0(cs[1]),
        .O(\rx_data[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \rx_data[9]_i_2 
       (.I0(out[2]),
        .I1(i_reg__0[3]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(\rx_data[9]_i_3_n_0 ),
        .O(\rx_data[9]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \rx_data[9]_i_3 
       (.I0(cs[0]),
        .I1(READADD_reg_n_0),
        .I2(rx_valid),
        .O(\rx_data[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[0]_i_1_n_0 ),
        .D(D),
        .Q(Q[0]),
        .R(\rx_data[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[1]_i_1_n_0 ),
        .D(D),
        .Q(Q[1]),
        .R(\rx_data[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[2]_i_1_n_0 ),
        .D(D),
        .Q(Q[2]),
        .R(\rx_data[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[3]_i_1_n_0 ),
        .D(D),
        .Q(Q[3]),
        .R(\rx_data[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[4]_i_1_n_0 ),
        .D(D),
        .Q(Q[4]),
        .R(\rx_data[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[5]_i_1_n_0 ),
        .D(D),
        .Q(Q[5]),
        .R(\rx_data[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[6]_i_1_n_0 ),
        .D(D),
        .Q(Q[6]),
        .R(\rx_data[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(D),
        .Q(Q[7]),
        .R(\rx_data[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[8]_i_1_n_0 ),
        .D(D),
        .Q(rx_data[8]),
        .R(\rx_data[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_2_n_0 ),
        .D(D),
        .Q(rx_data[9]),
        .R(\rx_data[9]_i_1_n_0 ));
  CARRY4 rx_valid0_carry
       (.CI(\<const0> ),
        .CO({rx_valid0_carry_n_0,rx_valid0_carry_n_1,rx_valid0_carry_n_2,rx_valid0_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({rx_valid0_carry_i_1_n_0,rx_valid0_carry_i_2_n_0,rx_valid0_carry_i_3_n_0,rx_valid0_carry_i_4_n_0}));
  CARRY4 rx_valid0_carry__0
       (.CI(rx_valid0_carry_n_0),
        .CO({rx_valid0_carry__0_n_0,rx_valid0_carry__0_n_1,rx_valid0_carry__0_n_2,rx_valid0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({rx_valid0_carry__0_i_1_n_0,rx_valid0_carry__0_i_2_n_0,rx_valid0_carry__0_i_3_n_0,rx_valid0_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    rx_valid0_carry__0_i_1
       (.I0(p_0_in[23]),
        .I1(p_0_in[22]),
        .I2(p_0_in[21]),
        .O(rx_valid0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rx_valid0_carry__0_i_2
       (.I0(p_0_in[20]),
        .I1(p_0_in[19]),
        .I2(p_0_in[18]),
        .O(rx_valid0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rx_valid0_carry__0_i_3
       (.I0(p_0_in[17]),
        .I1(p_0_in[16]),
        .I2(p_0_in[15]),
        .O(rx_valid0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rx_valid0_carry__0_i_4
       (.I0(p_0_in[14]),
        .I1(p_0_in[13]),
        .I2(p_0_in[12]),
        .O(rx_valid0_carry__0_i_4_n_0));
  CARRY4 rx_valid0_carry__0_i_5
       (.CI(rx_valid0_carry__0_i_6_n_0),
        .CO({rx_valid0_carry__0_i_5_n_0,rx_valid0_carry__0_i_5_n_1,rx_valid0_carry__0_i_5_n_2,rx_valid0_carry__0_i_5_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_0_in[24:21]),
        .S(i_reg__0[24:21]));
  CARRY4 rx_valid0_carry__0_i_6
       (.CI(rx_valid0_carry__0_i_7_n_0),
        .CO({rx_valid0_carry__0_i_6_n_0,rx_valid0_carry__0_i_6_n_1,rx_valid0_carry__0_i_6_n_2,rx_valid0_carry__0_i_6_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_0_in[20:17]),
        .S(i_reg__0[20:17]));
  CARRY4 rx_valid0_carry__0_i_7
       (.CI(rx_valid0_carry_i_5_n_0),
        .CO({rx_valid0_carry__0_i_7_n_0,rx_valid0_carry__0_i_7_n_1,rx_valid0_carry__0_i_7_n_2,rx_valid0_carry__0_i_7_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_0_in[16:13]),
        .S(i_reg__0[16:13]));
  CARRY4 rx_valid0_carry__1
       (.CI(rx_valid0_carry__0_n_0),
        .CO({rx_valid0_carry__1_n_1,rx_valid0_carry__1_n_2,rx_valid0_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,rx_valid0_carry__1_i_1_n_0,rx_valid0_carry__1_i_2_n_0,rx_valid0_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    rx_valid0_carry__1_i_1
       (.I0(p_0_in[31]),
        .I1(p_0_in[30]),
        .O(rx_valid0_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rx_valid0_carry__1_i_2
       (.I0(p_0_in[29]),
        .I1(p_0_in[28]),
        .I2(p_0_in[27]),
        .O(rx_valid0_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rx_valid0_carry__1_i_3
       (.I0(p_0_in[26]),
        .I1(p_0_in[25]),
        .I2(p_0_in[24]),
        .O(rx_valid0_carry__1_i_3_n_0));
  CARRY4 rx_valid0_carry__1_i_4
       (.CI(rx_valid0_carry__1_i_5_n_0),
        .CO({rx_valid0_carry__1_i_4_n_2,rx_valid0_carry__1_i_4_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_0_in[31:29]),
        .S({\<const0> ,i_reg__0[31:29]}));
  CARRY4 rx_valid0_carry__1_i_5
       (.CI(rx_valid0_carry__0_i_5_n_0),
        .CO({rx_valid0_carry__1_i_5_n_0,rx_valid0_carry__1_i_5_n_1,rx_valid0_carry__1_i_5_n_2,rx_valid0_carry__1_i_5_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_0_in[28:25]),
        .S(i_reg__0[28:25]));
  LUT3 #(
    .INIT(8'h01)) 
    rx_valid0_carry_i_1
       (.I0(p_0_in[11]),
        .I1(p_0_in[10]),
        .I2(p_0_in[9]),
        .O(rx_valid0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rx_valid0_carry_i_2
       (.I0(p_0_in[8]),
        .I1(p_0_in[7]),
        .I2(p_0_in[6]),
        .O(rx_valid0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    rx_valid0_carry_i_3
       (.I0(p_0_in[5]),
        .I1(p_0_in[4]),
        .I2(p_0_in[3]),
        .O(rx_valid0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    rx_valid0_carry_i_4
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(out[0]),
        .O(rx_valid0_carry_i_4_n_0));
  CARRY4 rx_valid0_carry_i_5
       (.CI(rx_valid0_carry_i_6_n_0),
        .CO({rx_valid0_carry_i_5_n_0,rx_valid0_carry_i_5_n_1,rx_valid0_carry_i_5_n_2,rx_valid0_carry_i_5_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_0_in[12:9]),
        .S(i_reg__0[12:9]));
  CARRY4 rx_valid0_carry_i_6
       (.CI(rx_valid0_carry_i_7_n_0),
        .CO({rx_valid0_carry_i_6_n_0,rx_valid0_carry_i_6_n_1,rx_valid0_carry_i_6_n_2,rx_valid0_carry_i_6_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_0_in[8:5]),
        .S(i_reg__0[8:5]));
  CARRY4 rx_valid0_carry_i_7
       (.CI(\<const0> ),
        .CO({rx_valid0_carry_i_7_n_0,rx_valid0_carry_i_7_n_1,rx_valid0_carry_i_7_n_2,rx_valid0_carry_i_7_n_3}),
        .CYINIT(out[0]),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_0_in[4:1]),
        .S({i_reg__0[4:3],out[2:1]}));
  LUT3 #(
    .INIT(8'hE0)) 
    rx_valid_i_1
       (.I0(rx_valid0_carry__1_n_1),
        .I1(rx_valid),
        .I2(cs[1]),
        .O(rx_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(rx_valid_i_1_n_0),
        .Q(rx_valid),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    tx_valid_i_1
       (.I0(rx_data[9]),
        .I1(rx_data[8]),
        .I2(rst_n_IBUF),
        .O(tx_valid_reg));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module SPI_wrapper
   (MOSI,
    SS_n,
    clk,
    rst_n,
    MISO);
  input MOSI;
  input SS_n;
  input clk;
  input rst_n;
  output MISO;

  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire Memory__0;
  wire Memory_n_1;
  wire SPI_n_14;
  wire SPI_n_15;
  wire SPI_n_16;
  wire SPI_n_17;
  wire SS_n;
  wire SS_n_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]i_reg;
  wire rst_n;
  wire rst_n_IBUF;
  wire [7:0]rx_data;
  wire rx_valid;
  wire tx_valid;

  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  RAM Memory
       (.E(SPI_n_14),
        .MISO_reg(Memory_n_1),
        .Q(rx_data),
        .WEA(Memory__0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(i_reg),
        .rst_n_IBUF(rst_n_IBUF),
        .\rx_data_reg[8] (SPI_n_15),
        .\rx_data_reg[9] (SPI_n_17),
        .\rx_data_reg[9]_0 (SPI_n_16),
        .rx_valid(rx_valid),
        .tx_valid(tx_valid));
  SPI_Slave SPI
       (.D(MOSI_IBUF),
        .E(SPI_n_14),
        .MISO_OBUF(MISO_OBUF),
        .Memory_reg(SPI_n_17),
        .Q(rx_data),
        .SS_n_IBUF(SS_n_IBUF),
        .WEA(Memory__0),
        .\addressR_reg[7] (SPI_n_15),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\i_reg[2]_0 (Memory_n_1),
        .out(i_reg),
        .rst_n_IBUF(rst_n_IBUF),
        .rx_valid(rx_valid),
        .tx_valid(tx_valid),
        .tx_valid_reg(SPI_n_16));
  IBUF SS_n_IBUF_inst
       (.I(SS_n),
        .O(SS_n_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
endmodule
