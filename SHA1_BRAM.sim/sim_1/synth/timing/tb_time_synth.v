// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Wed Jun 28 19:29:51 2017
// Host        : LAPTOP-L1N8U9P6 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/College/Thesis/VivadoProjects/SHA1_BRAM/SHA1_BRAM.sim/sim_1/synth/timing/tb_time_synth.v
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module HashIn
   (done_OBUF,
    done_reg_0,
    Q,
    \out_reg[1] ,
    \out_reg[3] ,
    clk,
    rst_IBUF,
    E,
    D,
    \out_reg[2] ,
    \out_reg[0] ,
    \out_reg[1]_0 ,
    \out_reg[0]_0 ,
    \out_reg[0]_1 );
  output done_OBUF;
  output done_reg_0;
  output [159:0]Q;
  input \out_reg[1] ;
  input \out_reg[3] ;
  input clk;
  input rst_IBUF;
  input [0:0]E;
  input [31:0]D;
  input [0:0]\out_reg[2] ;
  input [0:0]\out_reg[0] ;
  input [0:0]\out_reg[1]_0 ;
  input [0:0]\out_reg[0]_0 ;
  input [0:0]\out_reg[0]_1 ;

  wire [31:0]D;
  wire [0:0]E;
  wire [159:0]Q;
  wire [31:0]\RAM_reg[1] ;
  wire [31:0]\RAM_reg[2] ;
  wire [31:0]\RAM_reg[3] ;
  wire [31:0]\RAM_reg[4] ;
  wire [31:0]\RAM_reg[5] ;
  wire clk;
  wire done_OBUF;
  wire done_reg_0;
  wire [0:0]\out_reg[0] ;
  wire [0:0]\out_reg[0]_0 ;
  wire [0:0]\out_reg[0]_1 ;
  wire \out_reg[1] ;
  wire [0:0]\out_reg[1]_0 ;
  wire [0:0]\out_reg[2] ;
  wire \out_reg[3] ;
  wire rst_IBUF;

  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][0] 
       (.C(clk),
        .CE(\out_reg[0]_0 ),
        .D(D[0]),
        .Q(\RAM_reg[1] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][10] 
       (.C(clk),
        .CE(\out_reg[0]_0 ),
        .D(D[10]),
        .Q(\RAM_reg[1] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][11] 
       (.C(clk),
        .CE(\out_reg[0]_0 ),
        .D(D[11]),
        .Q(\RAM_reg[1] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][12] 
       (.C(clk),
        .CE(\out_reg[0]_0 ),
        .D(D[12]),
        .Q(\RAM_reg[1] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][13] 
       (.C(clk),
        .CE(\out_reg[0]_0 ),
        .D(D[13]),
        .Q(\RAM_reg[1] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][14] 
       (.C(clk),
        .CE(\out_reg[0]_0 ),
        .D(D[14]),
        .Q(\RAM_reg[1] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][15] 
       (.C(clk),
        .CE(\out_reg[0]_0 ),
        .D(D[15]),
        .Q(\RAM_reg[1] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][16] 
       (.C(clk),
        .CE(\out_reg[0]_0 ),
        .D(D[16]),
        .Q(\RAM_reg[1] [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][17] 
       (.C(clk),
        .CE(\out_reg[0]_0 ),
        .D(D[17]),
        .Q(\RAM_reg[1] [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][18] 
       (.C(clk),
        .CE(\out_reg[0]_0 ),
        .D(D[18]),
        .Q(\RAM_reg[1] [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][19] 
       (.C(clk),
        .CE(\out_reg[0]_0 ),
        .D(D[19]),
        .Q(\RAM_reg[1] [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][1] 
       (.C(clk),
        .CE(\out_reg[0]_0 ),
        .D(D[1]),
        .Q(\RAM_reg[1] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][20] 
       (.C(clk),
        .CE(\out_reg[0]_0 ),
        .D(D[20]),
        .Q(\RAM_reg[1] [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][21] 
       (.C(clk),
        .CE(\out_reg[0]_0 ),
        .D(D[21]),
        .Q(\RAM_reg[1] [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][22] 
       (.C(clk),
        .CE(\out_reg[0]_0 ),
        .D(D[22]),
        .Q(\RAM_reg[1] [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][23] 
       (.C(clk),
        .CE(\out_reg[0]_0 ),
        .D(D[23]),
        .Q(\RAM_reg[1] [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][24] 
       (.C(clk),
        .CE(\out_reg[0]_0 ),
        .D(D[24]),
        .Q(\RAM_reg[1] [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][25] 
       (.C(clk),
        .CE(\out_reg[0]_0 ),
        .D(D[25]),
        .Q(\RAM_reg[1] [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][26] 
       (.C(clk),
        .CE(\out_reg[0]_0 ),
        .D(D[26]),
        .Q(\RAM_reg[1] [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][27] 
       (.C(clk),
        .CE(\out_reg[0]_0 ),
        .D(D[27]),
        .Q(\RAM_reg[1] [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][28] 
       (.C(clk),
        .CE(\out_reg[0]_0 ),
        .D(D[28]),
        .Q(\RAM_reg[1] [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][29] 
       (.C(clk),
        .CE(\out_reg[0]_0 ),
        .D(D[29]),
        .Q(\RAM_reg[1] [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][2] 
       (.C(clk),
        .CE(\out_reg[0]_0 ),
        .D(D[2]),
        .Q(\RAM_reg[1] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][30] 
       (.C(clk),
        .CE(\out_reg[0]_0 ),
        .D(D[30]),
        .Q(\RAM_reg[1] [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][31] 
       (.C(clk),
        .CE(\out_reg[0]_0 ),
        .D(D[31]),
        .Q(\RAM_reg[1] [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][3] 
       (.C(clk),
        .CE(\out_reg[0]_0 ),
        .D(D[3]),
        .Q(\RAM_reg[1] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][4] 
       (.C(clk),
        .CE(\out_reg[0]_0 ),
        .D(D[4]),
        .Q(\RAM_reg[1] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][5] 
       (.C(clk),
        .CE(\out_reg[0]_0 ),
        .D(D[5]),
        .Q(\RAM_reg[1] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][6] 
       (.C(clk),
        .CE(\out_reg[0]_0 ),
        .D(D[6]),
        .Q(\RAM_reg[1] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][7] 
       (.C(clk),
        .CE(\out_reg[0]_0 ),
        .D(D[7]),
        .Q(\RAM_reg[1] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][8] 
       (.C(clk),
        .CE(\out_reg[0]_0 ),
        .D(D[8]),
        .Q(\RAM_reg[1] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[1][9] 
       (.C(clk),
        .CE(\out_reg[0]_0 ),
        .D(D[9]),
        .Q(\RAM_reg[1] [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][0] 
       (.C(clk),
        .CE(\out_reg[1]_0 ),
        .D(D[0]),
        .Q(\RAM_reg[2] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][10] 
       (.C(clk),
        .CE(\out_reg[1]_0 ),
        .D(D[10]),
        .Q(\RAM_reg[2] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][11] 
       (.C(clk),
        .CE(\out_reg[1]_0 ),
        .D(D[11]),
        .Q(\RAM_reg[2] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][12] 
       (.C(clk),
        .CE(\out_reg[1]_0 ),
        .D(D[12]),
        .Q(\RAM_reg[2] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][13] 
       (.C(clk),
        .CE(\out_reg[1]_0 ),
        .D(D[13]),
        .Q(\RAM_reg[2] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][14] 
       (.C(clk),
        .CE(\out_reg[1]_0 ),
        .D(D[14]),
        .Q(\RAM_reg[2] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][15] 
       (.C(clk),
        .CE(\out_reg[1]_0 ),
        .D(D[15]),
        .Q(\RAM_reg[2] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][16] 
       (.C(clk),
        .CE(\out_reg[1]_0 ),
        .D(D[16]),
        .Q(\RAM_reg[2] [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][17] 
       (.C(clk),
        .CE(\out_reg[1]_0 ),
        .D(D[17]),
        .Q(\RAM_reg[2] [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][18] 
       (.C(clk),
        .CE(\out_reg[1]_0 ),
        .D(D[18]),
        .Q(\RAM_reg[2] [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][19] 
       (.C(clk),
        .CE(\out_reg[1]_0 ),
        .D(D[19]),
        .Q(\RAM_reg[2] [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][1] 
       (.C(clk),
        .CE(\out_reg[1]_0 ),
        .D(D[1]),
        .Q(\RAM_reg[2] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][20] 
       (.C(clk),
        .CE(\out_reg[1]_0 ),
        .D(D[20]),
        .Q(\RAM_reg[2] [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][21] 
       (.C(clk),
        .CE(\out_reg[1]_0 ),
        .D(D[21]),
        .Q(\RAM_reg[2] [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][22] 
       (.C(clk),
        .CE(\out_reg[1]_0 ),
        .D(D[22]),
        .Q(\RAM_reg[2] [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][23] 
       (.C(clk),
        .CE(\out_reg[1]_0 ),
        .D(D[23]),
        .Q(\RAM_reg[2] [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][24] 
       (.C(clk),
        .CE(\out_reg[1]_0 ),
        .D(D[24]),
        .Q(\RAM_reg[2] [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][25] 
       (.C(clk),
        .CE(\out_reg[1]_0 ),
        .D(D[25]),
        .Q(\RAM_reg[2] [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][26] 
       (.C(clk),
        .CE(\out_reg[1]_0 ),
        .D(D[26]),
        .Q(\RAM_reg[2] [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][27] 
       (.C(clk),
        .CE(\out_reg[1]_0 ),
        .D(D[27]),
        .Q(\RAM_reg[2] [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][28] 
       (.C(clk),
        .CE(\out_reg[1]_0 ),
        .D(D[28]),
        .Q(\RAM_reg[2] [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][29] 
       (.C(clk),
        .CE(\out_reg[1]_0 ),
        .D(D[29]),
        .Q(\RAM_reg[2] [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][2] 
       (.C(clk),
        .CE(\out_reg[1]_0 ),
        .D(D[2]),
        .Q(\RAM_reg[2] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][30] 
       (.C(clk),
        .CE(\out_reg[1]_0 ),
        .D(D[30]),
        .Q(\RAM_reg[2] [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][31] 
       (.C(clk),
        .CE(\out_reg[1]_0 ),
        .D(D[31]),
        .Q(\RAM_reg[2] [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][3] 
       (.C(clk),
        .CE(\out_reg[1]_0 ),
        .D(D[3]),
        .Q(\RAM_reg[2] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][4] 
       (.C(clk),
        .CE(\out_reg[1]_0 ),
        .D(D[4]),
        .Q(\RAM_reg[2] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][5] 
       (.C(clk),
        .CE(\out_reg[1]_0 ),
        .D(D[5]),
        .Q(\RAM_reg[2] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][6] 
       (.C(clk),
        .CE(\out_reg[1]_0 ),
        .D(D[6]),
        .Q(\RAM_reg[2] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][7] 
       (.C(clk),
        .CE(\out_reg[1]_0 ),
        .D(D[7]),
        .Q(\RAM_reg[2] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][8] 
       (.C(clk),
        .CE(\out_reg[1]_0 ),
        .D(D[8]),
        .Q(\RAM_reg[2] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[2][9] 
       (.C(clk),
        .CE(\out_reg[1]_0 ),
        .D(D[9]),
        .Q(\RAM_reg[2] [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][0] 
       (.C(clk),
        .CE(\out_reg[0] ),
        .D(D[0]),
        .Q(\RAM_reg[3] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][10] 
       (.C(clk),
        .CE(\out_reg[0] ),
        .D(D[10]),
        .Q(\RAM_reg[3] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][11] 
       (.C(clk),
        .CE(\out_reg[0] ),
        .D(D[11]),
        .Q(\RAM_reg[3] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][12] 
       (.C(clk),
        .CE(\out_reg[0] ),
        .D(D[12]),
        .Q(\RAM_reg[3] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][13] 
       (.C(clk),
        .CE(\out_reg[0] ),
        .D(D[13]),
        .Q(\RAM_reg[3] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][14] 
       (.C(clk),
        .CE(\out_reg[0] ),
        .D(D[14]),
        .Q(\RAM_reg[3] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][15] 
       (.C(clk),
        .CE(\out_reg[0] ),
        .D(D[15]),
        .Q(\RAM_reg[3] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][16] 
       (.C(clk),
        .CE(\out_reg[0] ),
        .D(D[16]),
        .Q(\RAM_reg[3] [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][17] 
       (.C(clk),
        .CE(\out_reg[0] ),
        .D(D[17]),
        .Q(\RAM_reg[3] [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][18] 
       (.C(clk),
        .CE(\out_reg[0] ),
        .D(D[18]),
        .Q(\RAM_reg[3] [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][19] 
       (.C(clk),
        .CE(\out_reg[0] ),
        .D(D[19]),
        .Q(\RAM_reg[3] [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][1] 
       (.C(clk),
        .CE(\out_reg[0] ),
        .D(D[1]),
        .Q(\RAM_reg[3] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][20] 
       (.C(clk),
        .CE(\out_reg[0] ),
        .D(D[20]),
        .Q(\RAM_reg[3] [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][21] 
       (.C(clk),
        .CE(\out_reg[0] ),
        .D(D[21]),
        .Q(\RAM_reg[3] [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][22] 
       (.C(clk),
        .CE(\out_reg[0] ),
        .D(D[22]),
        .Q(\RAM_reg[3] [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][23] 
       (.C(clk),
        .CE(\out_reg[0] ),
        .D(D[23]),
        .Q(\RAM_reg[3] [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][24] 
       (.C(clk),
        .CE(\out_reg[0] ),
        .D(D[24]),
        .Q(\RAM_reg[3] [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][25] 
       (.C(clk),
        .CE(\out_reg[0] ),
        .D(D[25]),
        .Q(\RAM_reg[3] [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][26] 
       (.C(clk),
        .CE(\out_reg[0] ),
        .D(D[26]),
        .Q(\RAM_reg[3] [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][27] 
       (.C(clk),
        .CE(\out_reg[0] ),
        .D(D[27]),
        .Q(\RAM_reg[3] [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][28] 
       (.C(clk),
        .CE(\out_reg[0] ),
        .D(D[28]),
        .Q(\RAM_reg[3] [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][29] 
       (.C(clk),
        .CE(\out_reg[0] ),
        .D(D[29]),
        .Q(\RAM_reg[3] [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][2] 
       (.C(clk),
        .CE(\out_reg[0] ),
        .D(D[2]),
        .Q(\RAM_reg[3] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][30] 
       (.C(clk),
        .CE(\out_reg[0] ),
        .D(D[30]),
        .Q(\RAM_reg[3] [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][31] 
       (.C(clk),
        .CE(\out_reg[0] ),
        .D(D[31]),
        .Q(\RAM_reg[3] [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][3] 
       (.C(clk),
        .CE(\out_reg[0] ),
        .D(D[3]),
        .Q(\RAM_reg[3] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][4] 
       (.C(clk),
        .CE(\out_reg[0] ),
        .D(D[4]),
        .Q(\RAM_reg[3] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][5] 
       (.C(clk),
        .CE(\out_reg[0] ),
        .D(D[5]),
        .Q(\RAM_reg[3] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][6] 
       (.C(clk),
        .CE(\out_reg[0] ),
        .D(D[6]),
        .Q(\RAM_reg[3] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][7] 
       (.C(clk),
        .CE(\out_reg[0] ),
        .D(D[7]),
        .Q(\RAM_reg[3] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][8] 
       (.C(clk),
        .CE(\out_reg[0] ),
        .D(D[8]),
        .Q(\RAM_reg[3] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[3][9] 
       (.C(clk),
        .CE(\out_reg[0] ),
        .D(D[9]),
        .Q(\RAM_reg[3] [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][0] 
       (.C(clk),
        .CE(\out_reg[2] ),
        .D(D[0]),
        .Q(\RAM_reg[4] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][10] 
       (.C(clk),
        .CE(\out_reg[2] ),
        .D(D[10]),
        .Q(\RAM_reg[4] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][11] 
       (.C(clk),
        .CE(\out_reg[2] ),
        .D(D[11]),
        .Q(\RAM_reg[4] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][12] 
       (.C(clk),
        .CE(\out_reg[2] ),
        .D(D[12]),
        .Q(\RAM_reg[4] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][13] 
       (.C(clk),
        .CE(\out_reg[2] ),
        .D(D[13]),
        .Q(\RAM_reg[4] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][14] 
       (.C(clk),
        .CE(\out_reg[2] ),
        .D(D[14]),
        .Q(\RAM_reg[4] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][15] 
       (.C(clk),
        .CE(\out_reg[2] ),
        .D(D[15]),
        .Q(\RAM_reg[4] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][16] 
       (.C(clk),
        .CE(\out_reg[2] ),
        .D(D[16]),
        .Q(\RAM_reg[4] [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][17] 
       (.C(clk),
        .CE(\out_reg[2] ),
        .D(D[17]),
        .Q(\RAM_reg[4] [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][18] 
       (.C(clk),
        .CE(\out_reg[2] ),
        .D(D[18]),
        .Q(\RAM_reg[4] [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][19] 
       (.C(clk),
        .CE(\out_reg[2] ),
        .D(D[19]),
        .Q(\RAM_reg[4] [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][1] 
       (.C(clk),
        .CE(\out_reg[2] ),
        .D(D[1]),
        .Q(\RAM_reg[4] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][20] 
       (.C(clk),
        .CE(\out_reg[2] ),
        .D(D[20]),
        .Q(\RAM_reg[4] [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][21] 
       (.C(clk),
        .CE(\out_reg[2] ),
        .D(D[21]),
        .Q(\RAM_reg[4] [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][22] 
       (.C(clk),
        .CE(\out_reg[2] ),
        .D(D[22]),
        .Q(\RAM_reg[4] [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][23] 
       (.C(clk),
        .CE(\out_reg[2] ),
        .D(D[23]),
        .Q(\RAM_reg[4] [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][24] 
       (.C(clk),
        .CE(\out_reg[2] ),
        .D(D[24]),
        .Q(\RAM_reg[4] [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][25] 
       (.C(clk),
        .CE(\out_reg[2] ),
        .D(D[25]),
        .Q(\RAM_reg[4] [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][26] 
       (.C(clk),
        .CE(\out_reg[2] ),
        .D(D[26]),
        .Q(\RAM_reg[4] [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][27] 
       (.C(clk),
        .CE(\out_reg[2] ),
        .D(D[27]),
        .Q(\RAM_reg[4] [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][28] 
       (.C(clk),
        .CE(\out_reg[2] ),
        .D(D[28]),
        .Q(\RAM_reg[4] [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][29] 
       (.C(clk),
        .CE(\out_reg[2] ),
        .D(D[29]),
        .Q(\RAM_reg[4] [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][2] 
       (.C(clk),
        .CE(\out_reg[2] ),
        .D(D[2]),
        .Q(\RAM_reg[4] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][30] 
       (.C(clk),
        .CE(\out_reg[2] ),
        .D(D[30]),
        .Q(\RAM_reg[4] [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][31] 
       (.C(clk),
        .CE(\out_reg[2] ),
        .D(D[31]),
        .Q(\RAM_reg[4] [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][3] 
       (.C(clk),
        .CE(\out_reg[2] ),
        .D(D[3]),
        .Q(\RAM_reg[4] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][4] 
       (.C(clk),
        .CE(\out_reg[2] ),
        .D(D[4]),
        .Q(\RAM_reg[4] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][5] 
       (.C(clk),
        .CE(\out_reg[2] ),
        .D(D[5]),
        .Q(\RAM_reg[4] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][6] 
       (.C(clk),
        .CE(\out_reg[2] ),
        .D(D[6]),
        .Q(\RAM_reg[4] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][7] 
       (.C(clk),
        .CE(\out_reg[2] ),
        .D(D[7]),
        .Q(\RAM_reg[4] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][8] 
       (.C(clk),
        .CE(\out_reg[2] ),
        .D(D[8]),
        .Q(\RAM_reg[4] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[4][9] 
       (.C(clk),
        .CE(\out_reg[2] ),
        .D(D[9]),
        .Q(\RAM_reg[4] [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(\RAM_reg[5] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][10] 
       (.C(clk),
        .CE(E),
        .D(D[10]),
        .Q(\RAM_reg[5] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][11] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(\RAM_reg[5] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][12] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(\RAM_reg[5] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][13] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(\RAM_reg[5] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][14] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(\RAM_reg[5] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][15] 
       (.C(clk),
        .CE(E),
        .D(D[15]),
        .Q(\RAM_reg[5] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][16] 
       (.C(clk),
        .CE(E),
        .D(D[16]),
        .Q(\RAM_reg[5] [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][17] 
       (.C(clk),
        .CE(E),
        .D(D[17]),
        .Q(\RAM_reg[5] [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][18] 
       (.C(clk),
        .CE(E),
        .D(D[18]),
        .Q(\RAM_reg[5] [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][19] 
       (.C(clk),
        .CE(E),
        .D(D[19]),
        .Q(\RAM_reg[5] [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(\RAM_reg[5] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][20] 
       (.C(clk),
        .CE(E),
        .D(D[20]),
        .Q(\RAM_reg[5] [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][21] 
       (.C(clk),
        .CE(E),
        .D(D[21]),
        .Q(\RAM_reg[5] [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][22] 
       (.C(clk),
        .CE(E),
        .D(D[22]),
        .Q(\RAM_reg[5] [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][23] 
       (.C(clk),
        .CE(E),
        .D(D[23]),
        .Q(\RAM_reg[5] [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][24] 
       (.C(clk),
        .CE(E),
        .D(D[24]),
        .Q(\RAM_reg[5] [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][25] 
       (.C(clk),
        .CE(E),
        .D(D[25]),
        .Q(\RAM_reg[5] [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][26] 
       (.C(clk),
        .CE(E),
        .D(D[26]),
        .Q(\RAM_reg[5] [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][27] 
       (.C(clk),
        .CE(E),
        .D(D[27]),
        .Q(\RAM_reg[5] [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][28] 
       (.C(clk),
        .CE(E),
        .D(D[28]),
        .Q(\RAM_reg[5] [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][29] 
       (.C(clk),
        .CE(E),
        .D(D[29]),
        .Q(\RAM_reg[5] [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(\RAM_reg[5] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][30] 
       (.C(clk),
        .CE(E),
        .D(D[30]),
        .Q(\RAM_reg[5] [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][31] 
       (.C(clk),
        .CE(E),
        .D(D[31]),
        .Q(\RAM_reg[5] [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(\RAM_reg[5] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(\RAM_reg[5] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(\RAM_reg[5] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(\RAM_reg[5] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(\RAM_reg[5] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][8] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(\RAM_reg[5] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAM_reg[5][9] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(\RAM_reg[5] [9]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[0] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[5] [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[100] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[2] [4]),
        .Q(Q[100]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[101] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[2] [5]),
        .Q(Q[101]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[102] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[2] [6]),
        .Q(Q[102]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[103] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[2] [7]),
        .Q(Q[103]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[104] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[2] [8]),
        .Q(Q[104]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[105] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[2] [9]),
        .Q(Q[105]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[106] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[2] [10]),
        .Q(Q[106]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[107] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[2] [11]),
        .Q(Q[107]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[108] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[2] [12]),
        .Q(Q[108]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[109] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[2] [13]),
        .Q(Q[109]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[10] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[5] [10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[110] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[2] [14]),
        .Q(Q[110]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[111] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[2] [15]),
        .Q(Q[111]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[112] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[2] [16]),
        .Q(Q[112]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[113] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[2] [17]),
        .Q(Q[113]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[114] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[2] [18]),
        .Q(Q[114]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[115] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[2] [19]),
        .Q(Q[115]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[116] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[2] [20]),
        .Q(Q[116]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[117] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[2] [21]),
        .Q(Q[117]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[118] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[2] [22]),
        .Q(Q[118]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[119] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[2] [23]),
        .Q(Q[119]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[11] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[5] [11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[120] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[2] [24]),
        .Q(Q[120]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[121] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[2] [25]),
        .Q(Q[121]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[122] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[2] [26]),
        .Q(Q[122]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[123] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[2] [27]),
        .Q(Q[123]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[124] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[2] [28]),
        .Q(Q[124]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[125] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[2] [29]),
        .Q(Q[125]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[126] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[2] [30]),
        .Q(Q[126]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[127] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[2] [31]),
        .Q(Q[127]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[128] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[1] [0]),
        .Q(Q[128]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[129] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[1] [1]),
        .Q(Q[129]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[12] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[5] [12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[130] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[1] [2]),
        .Q(Q[130]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[131] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[1] [3]),
        .Q(Q[131]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[132] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[1] [4]),
        .Q(Q[132]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[133] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[1] [5]),
        .Q(Q[133]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[134] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[1] [6]),
        .Q(Q[134]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[135] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[1] [7]),
        .Q(Q[135]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[136] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[1] [8]),
        .Q(Q[136]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[137] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[1] [9]),
        .Q(Q[137]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[138] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[1] [10]),
        .Q(Q[138]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[139] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[1] [11]),
        .Q(Q[139]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[13] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[5] [13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[140] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[1] [12]),
        .Q(Q[140]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[141] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[1] [13]),
        .Q(Q[141]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[142] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[1] [14]),
        .Q(Q[142]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[143] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[1] [15]),
        .Q(Q[143]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[144] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[1] [16]),
        .Q(Q[144]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[145] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[1] [17]),
        .Q(Q[145]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[146] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[1] [18]),
        .Q(Q[146]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[147] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[1] [19]),
        .Q(Q[147]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[148] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[1] [20]),
        .Q(Q[148]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[149] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[1] [21]),
        .Q(Q[149]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[14] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[5] [14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[150] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[1] [22]),
        .Q(Q[150]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[151] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[1] [23]),
        .Q(Q[151]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[152] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[1] [24]),
        .Q(Q[152]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[153] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[1] [25]),
        .Q(Q[153]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[154] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[1] [26]),
        .Q(Q[154]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[155] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[1] [27]),
        .Q(Q[155]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[156] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[1] [28]),
        .Q(Q[156]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[157] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[1] [29]),
        .Q(Q[157]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[158] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[1] [30]),
        .Q(Q[158]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[159] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[1] [31]),
        .Q(Q[159]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[15] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[5] [15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[16] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[5] [16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[17] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[5] [17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[18] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[5] [18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[19] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[5] [19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[1] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[5] [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[20] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[5] [20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[21] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[5] [21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[22] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[5] [22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[23] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[5] [23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[24] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[5] [24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[25] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[5] [25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[26] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[5] [26]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[27] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[5] [27]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[28] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[5] [28]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[29] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[5] [29]),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[2] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[5] [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[30] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[5] [30]),
        .Q(Q[30]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[31] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[5] [31]),
        .Q(Q[31]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[32] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[4] [0]),
        .Q(Q[32]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[33] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[4] [1]),
        .Q(Q[33]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[34] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[4] [2]),
        .Q(Q[34]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[35] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[4] [3]),
        .Q(Q[35]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[36] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[4] [4]),
        .Q(Q[36]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[37] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[4] [5]),
        .Q(Q[37]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[38] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[4] [6]),
        .Q(Q[38]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[39] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[4] [7]),
        .Q(Q[39]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[3] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[5] [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[40] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[4] [8]),
        .Q(Q[40]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[41] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[4] [9]),
        .Q(Q[41]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[42] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[4] [10]),
        .Q(Q[42]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[43] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[4] [11]),
        .Q(Q[43]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[44] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[4] [12]),
        .Q(Q[44]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[45] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[4] [13]),
        .Q(Q[45]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[46] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[4] [14]),
        .Q(Q[46]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[47] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[4] [15]),
        .Q(Q[47]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[48] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[4] [16]),
        .Q(Q[48]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[49] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[4] [17]),
        .Q(Q[49]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[4] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[5] [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[50] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[4] [18]),
        .Q(Q[50]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[51] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[4] [19]),
        .Q(Q[51]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[52] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[4] [20]),
        .Q(Q[52]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[53] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[4] [21]),
        .Q(Q[53]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[54] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[4] [22]),
        .Q(Q[54]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[55] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[4] [23]),
        .Q(Q[55]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[56] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[4] [24]),
        .Q(Q[56]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[57] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[4] [25]),
        .Q(Q[57]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[58] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[4] [26]),
        .Q(Q[58]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[59] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[4] [27]),
        .Q(Q[59]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[5] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[5] [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[60] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[4] [28]),
        .Q(Q[60]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[61] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[4] [29]),
        .Q(Q[61]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[62] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[4] [30]),
        .Q(Q[62]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[63] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[4] [31]),
        .Q(Q[63]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[64] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[3] [0]),
        .Q(Q[64]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[65] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[3] [1]),
        .Q(Q[65]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[66] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[3] [2]),
        .Q(Q[66]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[67] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[3] [3]),
        .Q(Q[67]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[68] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[3] [4]),
        .Q(Q[68]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[69] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[3] [5]),
        .Q(Q[69]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[6] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[5] [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[70] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[3] [6]),
        .Q(Q[70]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[71] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[3] [7]),
        .Q(Q[71]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[72] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[3] [8]),
        .Q(Q[72]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[73] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[3] [9]),
        .Q(Q[73]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[74] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[3] [10]),
        .Q(Q[74]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[75] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[3] [11]),
        .Q(Q[75]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[76] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[3] [12]),
        .Q(Q[76]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[77] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[3] [13]),
        .Q(Q[77]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[78] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[3] [14]),
        .Q(Q[78]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[79] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[3] [15]),
        .Q(Q[79]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[7] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[5] [7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[80] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[3] [16]),
        .Q(Q[80]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[81] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[3] [17]),
        .Q(Q[81]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[82] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[3] [18]),
        .Q(Q[82]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[83] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[3] [19]),
        .Q(Q[83]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[84] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[3] [20]),
        .Q(Q[84]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[85] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[3] [21]),
        .Q(Q[85]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[86] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[3] [22]),
        .Q(Q[86]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[87] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[3] [23]),
        .Q(Q[87]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[88] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[3] [24]),
        .Q(Q[88]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[89] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[3] [25]),
        .Q(Q[89]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[8] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[5] [8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[90] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[3] [26]),
        .Q(Q[90]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[91] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[3] [27]),
        .Q(Q[91]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[92] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[3] [28]),
        .Q(Q[92]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[93] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[3] [29]),
        .Q(Q[93]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[94] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[3] [30]),
        .Q(Q[94]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[95] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[3] [31]),
        .Q(Q[95]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[96] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[2] [0]),
        .Q(Q[96]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[97] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[2] [1]),
        .Q(Q[97]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[98] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[2] [2]),
        .Q(Q[98]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[99] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[2] [3]),
        .Q(Q[99]));
  FDCE #(
    .INIT(1'b0)) 
    \do_reg[9] 
       (.C(clk),
        .CE(\out_reg[0]_1 ),
        .CLR(done_reg_0),
        .D(\RAM_reg[5] [9]),
        .Q(Q[9]));
  LUT1 #(
    .INIT(2'h1)) 
    done_i_3
       (.I0(rst_IBUF),
        .O(done_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    done_reg
       (.C(clk),
        .CE(\out_reg[1] ),
        .CLR(done_reg_0),
        .D(\out_reg[3] ),
        .Q(done_OBUF));
endmodule

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_3_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_3_4,Vivado 2016.3" *) 
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
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
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.53845 mW" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
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
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  blk_mem_gen_0_blk_mem_gen_v8_3_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b0),
        .regceb(1'b0),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
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
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_3_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_3_4,Vivado 2016.3" *) 
module blk_mem_gen_1
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
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
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.53845 mW" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_1.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
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
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  blk_mem_gen_1_blk_mem_gen_v8_3_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b0),
        .regceb(1'b0),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
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
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule

module counter
   (done_reg,
    Q,
    E,
    \RAM_reg[3][31] ,
    \RAM_reg[5][31] ,
    \RAM_reg[4][31] ,
    \RAM_reg[2][31] ,
    \do_reg[159] ,
    done_reg_0,
    enHashIn_IBUF,
    rst_IBUF,
    CLK,
    rst);
  output done_reg;
  output [7:0]Q;
  output [0:0]E;
  output [0:0]\RAM_reg[3][31] ;
  output [0:0]\RAM_reg[5][31] ;
  output [0:0]\RAM_reg[4][31] ;
  output [0:0]\RAM_reg[2][31] ;
  output [0:0]\do_reg[159] ;
  output done_reg_0;
  input enHashIn_IBUF;
  input rst_IBUF;
  input CLK;
  input rst;

  wire CLK;
  wire [0:0]E;
  wire [7:0]Q;
  wire \RAM[5][31]_i_2_n_0 ;
  wire [0:0]\RAM_reg[2][31] ;
  wire [0:0]\RAM_reg[3][31] ;
  wire [0:0]\RAM_reg[4][31] ;
  wire [0:0]\RAM_reg[5][31] ;
  wire [0:0]\do_reg[159] ;
  wire done_reg;
  wire done_reg_0;
  wire enHashIn_IBUF;
  wire \out[7]_i_2_n_0 ;
  wire [7:0]p_0_in;
  wire rst;
  wire rst_IBUF;

  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \RAM[1][31]_i_1 
       (.I0(enHashIn_IBUF),
        .I1(rst_IBUF),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\RAM[5][31]_i_2_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \RAM[2][31]_i_1 
       (.I0(enHashIn_IBUF),
        .I1(rst_IBUF),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(\RAM[5][31]_i_2_n_0 ),
        .O(\RAM_reg[2][31] ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \RAM[3][31]_i_1 
       (.I0(enHashIn_IBUF),
        .I1(rst_IBUF),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\RAM[5][31]_i_2_n_0 ),
        .O(\RAM_reg[3][31] ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \RAM[4][31]_i_1 
       (.I0(enHashIn_IBUF),
        .I1(rst_IBUF),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\RAM[5][31]_i_2_n_0 ),
        .O(\RAM_reg[4][31] ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \RAM[5][31]_i_1 
       (.I0(enHashIn_IBUF),
        .I1(rst_IBUF),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\RAM[5][31]_i_2_n_0 ),
        .O(\RAM_reg[5][31] ));
  LUT2 #(
    .INIT(4'hE)) 
    \RAM[5][31]_i_2 
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(\RAM[5][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAA0AAA0)) 
    \do[159]_i_1 
       (.I0(enHashIn_IBUF),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\do_reg[159] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAAAAA80)) 
    done_i_1
       (.I0(enHashIn_IBUF),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(done_reg));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFEEE)) 
    done_i_2
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(done_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    \out[0]_i_1 
       (.I0(Q[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \out[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \out[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \out[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \out[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \out[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \out[6]_i_1 
       (.I0(\out[7]_i_2_n_0 ),
        .I1(Q[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \out[7]_i_1 
       (.I0(\out[7]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \out[7]_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\out[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(CLK),
        .CE(enHashIn_IBUF),
        .CLR(rst),
        .D(p_0_in[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(CLK),
        .CE(enHashIn_IBUF),
        .CLR(rst),
        .D(p_0_in[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.C(CLK),
        .CE(enHashIn_IBUF),
        .CLR(rst),
        .D(p_0_in[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[3] 
       (.C(CLK),
        .CE(enHashIn_IBUF),
        .CLR(rst),
        .D(p_0_in[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[4] 
       (.C(CLK),
        .CE(enHashIn_IBUF),
        .CLR(rst),
        .D(p_0_in[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[5] 
       (.C(CLK),
        .CE(enHashIn_IBUF),
        .CLR(rst),
        .D(p_0_in[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[6] 
       (.C(CLK),
        .CE(enHashIn_IBUF),
        .CLR(rst),
        .D(p_0_in[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[7] 
       (.C(CLK),
        .CE(enHashIn_IBUF),
        .CLR(rst),
        .D(p_0_in[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module counter_0
   (Q,
    E,
    clk,
    rst);
  output [7:0]Q;
  input [0:0]E;
  input clk;
  input rst;

  wire [0:0]E;
  wire [7:0]Q;
  wire clk;
  wire \out[7]_i_2__0_n_0 ;
  wire [7:0]p_0_in__0;
  wire rst;

  LUT1 #(
    .INIT(2'h1)) 
    \out[0]_i_1__0 
       (.I0(Q[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \out[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \out[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \out[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \out[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \out[5]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \out[6]_i_1__0 
       (.I0(\out[7]_i_2__0_n_0 ),
        .I1(Q[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \out[7]_i_1__0 
       (.I0(\out[7]_i_2__0_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \out[7]_i_2__0 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\out[7]_i_2__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_0_in__0[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_0_in__0[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_0_in__0[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_0_in__0[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_0_in__0[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_0_in__0[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_0_in__0[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_0_in__0[7]),
        .Q(Q[7]));
endmodule

(* NotValidForBitStream *)
module top
   (clk,
    rst,
    enHashIn,
    enMsgIn,
    done,
    do);
  input clk;
  input rst;
  input enHashIn;
  input enMsgIn;
  output done;
  output [159:0]do;

  wire C0_n_0;
  wire C0_n_10;
  wire C0_n_12;
  wire C0_n_13;
  wire C0_n_14;
  wire C0_n_15;
  wire C0_n_9;
  wire H1_n_1;
  wire RAM;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [159:0]do;
  wire [159:0]do_OBUF;
  wire done;
  wire done_OBUF;
  wire enHashIn;
  wire enHashIn_IBUF;
  wire enMsgIn;
  wire enMsgIn_IBUF;
  wire [7:0]hashAddr;
  wire [31:0]hashInBRAMOUT;
  wire [7:0]msgInAddr;
  wire rst;
  wire rst_IBUF;
  wire [31:0]NLW_B1_douta_UNCONNECTED;

initial begin
 $sdf_annotate("tb_time_synth.sdf",,,,"tool_control");
end
  (* x_core_info = "blk_mem_gen_v8_3_4,Vivado 2016.3" *) 
  blk_mem_gen_0 B0
       (.addra(hashAddr),
        .clka(clk_IBUF_BUFG),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(hashInBRAMOUT),
        .ena(enHashIn_IBUF),
        .wea(1'b0));
  (* x_core_info = "blk_mem_gen_v8_3_4,Vivado 2016.3" *) 
  blk_mem_gen_1 B1
       (.addra(msgInAddr),
        .clka(clk_IBUF_BUFG),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_B1_douta_UNCONNECTED[31:0]),
        .ena(enMsgIn_IBUF),
        .wea(1'b0));
  counter C0
       (.CLK(clk_IBUF_BUFG),
        .E(C0_n_9),
        .Q(hashAddr),
        .\RAM_reg[2][31] (C0_n_13),
        .\RAM_reg[3][31] (C0_n_10),
        .\RAM_reg[4][31] (C0_n_12),
        .\RAM_reg[5][31] (RAM),
        .\do_reg[159] (C0_n_14),
        .done_reg(C0_n_0),
        .done_reg_0(C0_n_15),
        .enHashIn_IBUF(enHashIn_IBUF),
        .rst(H1_n_1),
        .rst_IBUF(rst_IBUF));
  counter_0 C1
       (.E(enMsgIn_IBUF),
        .Q(msgInAddr),
        .clk(clk_IBUF_BUFG),
        .rst(H1_n_1));
  HashIn H1
       (.D(hashInBRAMOUT),
        .E(RAM),
        .Q(do_OBUF),
        .clk(clk_IBUF_BUFG),
        .done_OBUF(done_OBUF),
        .done_reg_0(H1_n_1),
        .\out_reg[0] (C0_n_10),
        .\out_reg[0]_0 (C0_n_9),
        .\out_reg[0]_1 (C0_n_14),
        .\out_reg[1] (C0_n_0),
        .\out_reg[1]_0 (C0_n_13),
        .\out_reg[2] (C0_n_12),
        .\out_reg[3] (C0_n_15),
        .rst_IBUF(rst_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \do_OBUF[0]_inst 
       (.I(do_OBUF[0]),
        .O(do[0]));
  OBUF \do_OBUF[100]_inst 
       (.I(do_OBUF[100]),
        .O(do[100]));
  OBUF \do_OBUF[101]_inst 
       (.I(do_OBUF[101]),
        .O(do[101]));
  OBUF \do_OBUF[102]_inst 
       (.I(do_OBUF[102]),
        .O(do[102]));
  OBUF \do_OBUF[103]_inst 
       (.I(do_OBUF[103]),
        .O(do[103]));
  OBUF \do_OBUF[104]_inst 
       (.I(do_OBUF[104]),
        .O(do[104]));
  OBUF \do_OBUF[105]_inst 
       (.I(do_OBUF[105]),
        .O(do[105]));
  OBUF \do_OBUF[106]_inst 
       (.I(do_OBUF[106]),
        .O(do[106]));
  OBUF \do_OBUF[107]_inst 
       (.I(do_OBUF[107]),
        .O(do[107]));
  OBUF \do_OBUF[108]_inst 
       (.I(do_OBUF[108]),
        .O(do[108]));
  OBUF \do_OBUF[109]_inst 
       (.I(do_OBUF[109]),
        .O(do[109]));
  OBUF \do_OBUF[10]_inst 
       (.I(do_OBUF[10]),
        .O(do[10]));
  OBUF \do_OBUF[110]_inst 
       (.I(do_OBUF[110]),
        .O(do[110]));
  OBUF \do_OBUF[111]_inst 
       (.I(do_OBUF[111]),
        .O(do[111]));
  OBUF \do_OBUF[112]_inst 
       (.I(do_OBUF[112]),
        .O(do[112]));
  OBUF \do_OBUF[113]_inst 
       (.I(do_OBUF[113]),
        .O(do[113]));
  OBUF \do_OBUF[114]_inst 
       (.I(do_OBUF[114]),
        .O(do[114]));
  OBUF \do_OBUF[115]_inst 
       (.I(do_OBUF[115]),
        .O(do[115]));
  OBUF \do_OBUF[116]_inst 
       (.I(do_OBUF[116]),
        .O(do[116]));
  OBUF \do_OBUF[117]_inst 
       (.I(do_OBUF[117]),
        .O(do[117]));
  OBUF \do_OBUF[118]_inst 
       (.I(do_OBUF[118]),
        .O(do[118]));
  OBUF \do_OBUF[119]_inst 
       (.I(do_OBUF[119]),
        .O(do[119]));
  OBUF \do_OBUF[11]_inst 
       (.I(do_OBUF[11]),
        .O(do[11]));
  OBUF \do_OBUF[120]_inst 
       (.I(do_OBUF[120]),
        .O(do[120]));
  OBUF \do_OBUF[121]_inst 
       (.I(do_OBUF[121]),
        .O(do[121]));
  OBUF \do_OBUF[122]_inst 
       (.I(do_OBUF[122]),
        .O(do[122]));
  OBUF \do_OBUF[123]_inst 
       (.I(do_OBUF[123]),
        .O(do[123]));
  OBUF \do_OBUF[124]_inst 
       (.I(do_OBUF[124]),
        .O(do[124]));
  OBUF \do_OBUF[125]_inst 
       (.I(do_OBUF[125]),
        .O(do[125]));
  OBUF \do_OBUF[126]_inst 
       (.I(do_OBUF[126]),
        .O(do[126]));
  OBUF \do_OBUF[127]_inst 
       (.I(do_OBUF[127]),
        .O(do[127]));
  OBUF \do_OBUF[128]_inst 
       (.I(do_OBUF[128]),
        .O(do[128]));
  OBUF \do_OBUF[129]_inst 
       (.I(do_OBUF[129]),
        .O(do[129]));
  OBUF \do_OBUF[12]_inst 
       (.I(do_OBUF[12]),
        .O(do[12]));
  OBUF \do_OBUF[130]_inst 
       (.I(do_OBUF[130]),
        .O(do[130]));
  OBUF \do_OBUF[131]_inst 
       (.I(do_OBUF[131]),
        .O(do[131]));
  OBUF \do_OBUF[132]_inst 
       (.I(do_OBUF[132]),
        .O(do[132]));
  OBUF \do_OBUF[133]_inst 
       (.I(do_OBUF[133]),
        .O(do[133]));
  OBUF \do_OBUF[134]_inst 
       (.I(do_OBUF[134]),
        .O(do[134]));
  OBUF \do_OBUF[135]_inst 
       (.I(do_OBUF[135]),
        .O(do[135]));
  OBUF \do_OBUF[136]_inst 
       (.I(do_OBUF[136]),
        .O(do[136]));
  OBUF \do_OBUF[137]_inst 
       (.I(do_OBUF[137]),
        .O(do[137]));
  OBUF \do_OBUF[138]_inst 
       (.I(do_OBUF[138]),
        .O(do[138]));
  OBUF \do_OBUF[139]_inst 
       (.I(do_OBUF[139]),
        .O(do[139]));
  OBUF \do_OBUF[13]_inst 
       (.I(do_OBUF[13]),
        .O(do[13]));
  OBUF \do_OBUF[140]_inst 
       (.I(do_OBUF[140]),
        .O(do[140]));
  OBUF \do_OBUF[141]_inst 
       (.I(do_OBUF[141]),
        .O(do[141]));
  OBUF \do_OBUF[142]_inst 
       (.I(do_OBUF[142]),
        .O(do[142]));
  OBUF \do_OBUF[143]_inst 
       (.I(do_OBUF[143]),
        .O(do[143]));
  OBUF \do_OBUF[144]_inst 
       (.I(do_OBUF[144]),
        .O(do[144]));
  OBUF \do_OBUF[145]_inst 
       (.I(do_OBUF[145]),
        .O(do[145]));
  OBUF \do_OBUF[146]_inst 
       (.I(do_OBUF[146]),
        .O(do[146]));
  OBUF \do_OBUF[147]_inst 
       (.I(do_OBUF[147]),
        .O(do[147]));
  OBUF \do_OBUF[148]_inst 
       (.I(do_OBUF[148]),
        .O(do[148]));
  OBUF \do_OBUF[149]_inst 
       (.I(do_OBUF[149]),
        .O(do[149]));
  OBUF \do_OBUF[14]_inst 
       (.I(do_OBUF[14]),
        .O(do[14]));
  OBUF \do_OBUF[150]_inst 
       (.I(do_OBUF[150]),
        .O(do[150]));
  OBUF \do_OBUF[151]_inst 
       (.I(do_OBUF[151]),
        .O(do[151]));
  OBUF \do_OBUF[152]_inst 
       (.I(do_OBUF[152]),
        .O(do[152]));
  OBUF \do_OBUF[153]_inst 
       (.I(do_OBUF[153]),
        .O(do[153]));
  OBUF \do_OBUF[154]_inst 
       (.I(do_OBUF[154]),
        .O(do[154]));
  OBUF \do_OBUF[155]_inst 
       (.I(do_OBUF[155]),
        .O(do[155]));
  OBUF \do_OBUF[156]_inst 
       (.I(do_OBUF[156]),
        .O(do[156]));
  OBUF \do_OBUF[157]_inst 
       (.I(do_OBUF[157]),
        .O(do[157]));
  OBUF \do_OBUF[158]_inst 
       (.I(do_OBUF[158]),
        .O(do[158]));
  OBUF \do_OBUF[159]_inst 
       (.I(do_OBUF[159]),
        .O(do[159]));
  OBUF \do_OBUF[15]_inst 
       (.I(do_OBUF[15]),
        .O(do[15]));
  OBUF \do_OBUF[16]_inst 
       (.I(do_OBUF[16]),
        .O(do[16]));
  OBUF \do_OBUF[17]_inst 
       (.I(do_OBUF[17]),
        .O(do[17]));
  OBUF \do_OBUF[18]_inst 
       (.I(do_OBUF[18]),
        .O(do[18]));
  OBUF \do_OBUF[19]_inst 
       (.I(do_OBUF[19]),
        .O(do[19]));
  OBUF \do_OBUF[1]_inst 
       (.I(do_OBUF[1]),
        .O(do[1]));
  OBUF \do_OBUF[20]_inst 
       (.I(do_OBUF[20]),
        .O(do[20]));
  OBUF \do_OBUF[21]_inst 
       (.I(do_OBUF[21]),
        .O(do[21]));
  OBUF \do_OBUF[22]_inst 
       (.I(do_OBUF[22]),
        .O(do[22]));
  OBUF \do_OBUF[23]_inst 
       (.I(do_OBUF[23]),
        .O(do[23]));
  OBUF \do_OBUF[24]_inst 
       (.I(do_OBUF[24]),
        .O(do[24]));
  OBUF \do_OBUF[25]_inst 
       (.I(do_OBUF[25]),
        .O(do[25]));
  OBUF \do_OBUF[26]_inst 
       (.I(do_OBUF[26]),
        .O(do[26]));
  OBUF \do_OBUF[27]_inst 
       (.I(do_OBUF[27]),
        .O(do[27]));
  OBUF \do_OBUF[28]_inst 
       (.I(do_OBUF[28]),
        .O(do[28]));
  OBUF \do_OBUF[29]_inst 
       (.I(do_OBUF[29]),
        .O(do[29]));
  OBUF \do_OBUF[2]_inst 
       (.I(do_OBUF[2]),
        .O(do[2]));
  OBUF \do_OBUF[30]_inst 
       (.I(do_OBUF[30]),
        .O(do[30]));
  OBUF \do_OBUF[31]_inst 
       (.I(do_OBUF[31]),
        .O(do[31]));
  OBUF \do_OBUF[32]_inst 
       (.I(do_OBUF[32]),
        .O(do[32]));
  OBUF \do_OBUF[33]_inst 
       (.I(do_OBUF[33]),
        .O(do[33]));
  OBUF \do_OBUF[34]_inst 
       (.I(do_OBUF[34]),
        .O(do[34]));
  OBUF \do_OBUF[35]_inst 
       (.I(do_OBUF[35]),
        .O(do[35]));
  OBUF \do_OBUF[36]_inst 
       (.I(do_OBUF[36]),
        .O(do[36]));
  OBUF \do_OBUF[37]_inst 
       (.I(do_OBUF[37]),
        .O(do[37]));
  OBUF \do_OBUF[38]_inst 
       (.I(do_OBUF[38]),
        .O(do[38]));
  OBUF \do_OBUF[39]_inst 
       (.I(do_OBUF[39]),
        .O(do[39]));
  OBUF \do_OBUF[3]_inst 
       (.I(do_OBUF[3]),
        .O(do[3]));
  OBUF \do_OBUF[40]_inst 
       (.I(do_OBUF[40]),
        .O(do[40]));
  OBUF \do_OBUF[41]_inst 
       (.I(do_OBUF[41]),
        .O(do[41]));
  OBUF \do_OBUF[42]_inst 
       (.I(do_OBUF[42]),
        .O(do[42]));
  OBUF \do_OBUF[43]_inst 
       (.I(do_OBUF[43]),
        .O(do[43]));
  OBUF \do_OBUF[44]_inst 
       (.I(do_OBUF[44]),
        .O(do[44]));
  OBUF \do_OBUF[45]_inst 
       (.I(do_OBUF[45]),
        .O(do[45]));
  OBUF \do_OBUF[46]_inst 
       (.I(do_OBUF[46]),
        .O(do[46]));
  OBUF \do_OBUF[47]_inst 
       (.I(do_OBUF[47]),
        .O(do[47]));
  OBUF \do_OBUF[48]_inst 
       (.I(do_OBUF[48]),
        .O(do[48]));
  OBUF \do_OBUF[49]_inst 
       (.I(do_OBUF[49]),
        .O(do[49]));
  OBUF \do_OBUF[4]_inst 
       (.I(do_OBUF[4]),
        .O(do[4]));
  OBUF \do_OBUF[50]_inst 
       (.I(do_OBUF[50]),
        .O(do[50]));
  OBUF \do_OBUF[51]_inst 
       (.I(do_OBUF[51]),
        .O(do[51]));
  OBUF \do_OBUF[52]_inst 
       (.I(do_OBUF[52]),
        .O(do[52]));
  OBUF \do_OBUF[53]_inst 
       (.I(do_OBUF[53]),
        .O(do[53]));
  OBUF \do_OBUF[54]_inst 
       (.I(do_OBUF[54]),
        .O(do[54]));
  OBUF \do_OBUF[55]_inst 
       (.I(do_OBUF[55]),
        .O(do[55]));
  OBUF \do_OBUF[56]_inst 
       (.I(do_OBUF[56]),
        .O(do[56]));
  OBUF \do_OBUF[57]_inst 
       (.I(do_OBUF[57]),
        .O(do[57]));
  OBUF \do_OBUF[58]_inst 
       (.I(do_OBUF[58]),
        .O(do[58]));
  OBUF \do_OBUF[59]_inst 
       (.I(do_OBUF[59]),
        .O(do[59]));
  OBUF \do_OBUF[5]_inst 
       (.I(do_OBUF[5]),
        .O(do[5]));
  OBUF \do_OBUF[60]_inst 
       (.I(do_OBUF[60]),
        .O(do[60]));
  OBUF \do_OBUF[61]_inst 
       (.I(do_OBUF[61]),
        .O(do[61]));
  OBUF \do_OBUF[62]_inst 
       (.I(do_OBUF[62]),
        .O(do[62]));
  OBUF \do_OBUF[63]_inst 
       (.I(do_OBUF[63]),
        .O(do[63]));
  OBUF \do_OBUF[64]_inst 
       (.I(do_OBUF[64]),
        .O(do[64]));
  OBUF \do_OBUF[65]_inst 
       (.I(do_OBUF[65]),
        .O(do[65]));
  OBUF \do_OBUF[66]_inst 
       (.I(do_OBUF[66]),
        .O(do[66]));
  OBUF \do_OBUF[67]_inst 
       (.I(do_OBUF[67]),
        .O(do[67]));
  OBUF \do_OBUF[68]_inst 
       (.I(do_OBUF[68]),
        .O(do[68]));
  OBUF \do_OBUF[69]_inst 
       (.I(do_OBUF[69]),
        .O(do[69]));
  OBUF \do_OBUF[6]_inst 
       (.I(do_OBUF[6]),
        .O(do[6]));
  OBUF \do_OBUF[70]_inst 
       (.I(do_OBUF[70]),
        .O(do[70]));
  OBUF \do_OBUF[71]_inst 
       (.I(do_OBUF[71]),
        .O(do[71]));
  OBUF \do_OBUF[72]_inst 
       (.I(do_OBUF[72]),
        .O(do[72]));
  OBUF \do_OBUF[73]_inst 
       (.I(do_OBUF[73]),
        .O(do[73]));
  OBUF \do_OBUF[74]_inst 
       (.I(do_OBUF[74]),
        .O(do[74]));
  OBUF \do_OBUF[75]_inst 
       (.I(do_OBUF[75]),
        .O(do[75]));
  OBUF \do_OBUF[76]_inst 
       (.I(do_OBUF[76]),
        .O(do[76]));
  OBUF \do_OBUF[77]_inst 
       (.I(do_OBUF[77]),
        .O(do[77]));
  OBUF \do_OBUF[78]_inst 
       (.I(do_OBUF[78]),
        .O(do[78]));
  OBUF \do_OBUF[79]_inst 
       (.I(do_OBUF[79]),
        .O(do[79]));
  OBUF \do_OBUF[7]_inst 
       (.I(do_OBUF[7]),
        .O(do[7]));
  OBUF \do_OBUF[80]_inst 
       (.I(do_OBUF[80]),
        .O(do[80]));
  OBUF \do_OBUF[81]_inst 
       (.I(do_OBUF[81]),
        .O(do[81]));
  OBUF \do_OBUF[82]_inst 
       (.I(do_OBUF[82]),
        .O(do[82]));
  OBUF \do_OBUF[83]_inst 
       (.I(do_OBUF[83]),
        .O(do[83]));
  OBUF \do_OBUF[84]_inst 
       (.I(do_OBUF[84]),
        .O(do[84]));
  OBUF \do_OBUF[85]_inst 
       (.I(do_OBUF[85]),
        .O(do[85]));
  OBUF \do_OBUF[86]_inst 
       (.I(do_OBUF[86]),
        .O(do[86]));
  OBUF \do_OBUF[87]_inst 
       (.I(do_OBUF[87]),
        .O(do[87]));
  OBUF \do_OBUF[88]_inst 
       (.I(do_OBUF[88]),
        .O(do[88]));
  OBUF \do_OBUF[89]_inst 
       (.I(do_OBUF[89]),
        .O(do[89]));
  OBUF \do_OBUF[8]_inst 
       (.I(do_OBUF[8]),
        .O(do[8]));
  OBUF \do_OBUF[90]_inst 
       (.I(do_OBUF[90]),
        .O(do[90]));
  OBUF \do_OBUF[91]_inst 
       (.I(do_OBUF[91]),
        .O(do[91]));
  OBUF \do_OBUF[92]_inst 
       (.I(do_OBUF[92]),
        .O(do[92]));
  OBUF \do_OBUF[93]_inst 
       (.I(do_OBUF[93]),
        .O(do[93]));
  OBUF \do_OBUF[94]_inst 
       (.I(do_OBUF[94]),
        .O(do[94]));
  OBUF \do_OBUF[95]_inst 
       (.I(do_OBUF[95]),
        .O(do[95]));
  OBUF \do_OBUF[96]_inst 
       (.I(do_OBUF[96]),
        .O(do[96]));
  OBUF \do_OBUF[97]_inst 
       (.I(do_OBUF[97]),
        .O(do[97]));
  OBUF \do_OBUF[98]_inst 
       (.I(do_OBUF[98]),
        .O(do[98]));
  OBUF \do_OBUF[99]_inst 
       (.I(do_OBUF[99]),
        .O(do[99]));
  OBUF \do_OBUF[9]_inst 
       (.I(do_OBUF[9]),
        .O(do[9]));
  OBUF done_OBUF_inst
       (.I(done_OBUF),
        .O(done));
  IBUF enHashIn_IBUF_inst
       (.I(enHashIn),
        .O(enHashIn_IBUF));
  IBUF enMsgIn_IBUF_inst
       (.I(enMsgIn),
        .O(enMsgIn_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module blk_mem_gen_0_blk_mem_gen_generic_cstr
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input ena;
  input [7:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire [7:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input ena;
  input [7:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire [7:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input ena;
  input [7:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_32 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_33 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_34 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_35 ;
  wire [7:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
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
    .INIT_00(256'h000000000000000000000000C3D2E1F01032547698BADCFEEFCDAB8967452301),
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
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram 
       (.ADDRARDADDR({1'b0,addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,addra,1'b1,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI(dina[15:0]),
        .DIBDI(dina[31:16]),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(douta[15:0]),
        .DOBDO(douta[31:16]),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_32 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_33 }),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_34 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_35 }),
        .ENARDEN(ena),
        .ENBWREN(ena),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,wea,wea}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module blk_mem_gen_0_blk_mem_gen_top
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input ena;
  input [7:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire [7:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "8" *) (* C_ADDRB_WIDTH = "8" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "1" *) 
(* C_COUNT_36K_BRAM = "0" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.53845 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
(* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "0" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "256" *) (* C_READ_DEPTH_B = "256" *) (* C_READ_WIDTH_A = "32" *) 
(* C_READ_WIDTH_B = "32" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "256" *) (* C_WRITE_DEPTH_B = "256" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "32" *) (* C_WRITE_WIDTH_B = "32" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_3_4" *) (* downgradeipidentifiedwarnings = "yes" *) 
module blk_mem_gen_0_blk_mem_gen_v8_3_4
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [7:0]addra;
  input [31:0]dina;
  output [31:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [7:0]addrb;
  input [31:0]dinb;
  output [31:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [7:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [7:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [7:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;

  assign dbiterr = \<const0> ;
  assign doutb[31] = \<const0> ;
  assign doutb[30] = \<const0> ;
  assign doutb[29] = \<const0> ;
  assign doutb[28] = \<const0> ;
  assign doutb[27] = \<const0> ;
  assign doutb[26] = \<const0> ;
  assign doutb[25] = \<const0> ;
  assign doutb[24] = \<const0> ;
  assign doutb[23] = \<const0> ;
  assign doutb[22] = \<const0> ;
  assign doutb[21] = \<const0> ;
  assign doutb[20] = \<const0> ;
  assign doutb[19] = \<const0> ;
  assign doutb[18] = \<const0> ;
  assign doutb[17] = \<const0> ;
  assign doutb[16] = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  blk_mem_gen_0_blk_mem_gen_v8_3_4_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_3_4_synth" *) 
module blk_mem_gen_0_blk_mem_gen_v8_3_4_synth
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input ena;
  input [7:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire [7:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module blk_mem_gen_1_blk_mem_gen_generic_cstr
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input ena;
  input [7:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire [7:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;

  blk_mem_gen_1_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_1_blk_mem_gen_prim_width
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input ena;
  input [7:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire [7:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;

  blk_mem_gen_1_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_1_blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input ena;
  input [7:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_32 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_33 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_34 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_35 ;
  wire [7:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
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
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000061626300),
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
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram 
       (.ADDRARDADDR({1'b0,addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,addra,1'b1,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI(dina[15:0]),
        .DIBDI(dina[31:16]),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(douta[15:0]),
        .DOBDO(douta[31:16]),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_32 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_33 }),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_34 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_35 }),
        .ENARDEN(ena),
        .ENBWREN(ena),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,wea,wea}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module blk_mem_gen_1_blk_mem_gen_top
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input ena;
  input [7:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire [7:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;

  blk_mem_gen_1_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "8" *) (* C_ADDRB_WIDTH = "8" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "1" *) 
(* C_COUNT_36K_BRAM = "0" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.53845 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
(* C_INIT_FILE_NAME = "blk_mem_gen_1.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "0" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "256" *) (* C_READ_DEPTH_B = "256" *) (* C_READ_WIDTH_A = "32" *) 
(* C_READ_WIDTH_B = "32" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "256" *) (* C_WRITE_DEPTH_B = "256" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "32" *) (* C_WRITE_WIDTH_B = "32" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_3_4" *) (* downgradeipidentifiedwarnings = "yes" *) 
module blk_mem_gen_1_blk_mem_gen_v8_3_4
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [7:0]addra;
  input [31:0]dina;
  output [31:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [7:0]addrb;
  input [31:0]dinb;
  output [31:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [7:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [7:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [7:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;

  assign dbiterr = \<const0> ;
  assign doutb[31] = \<const0> ;
  assign doutb[30] = \<const0> ;
  assign doutb[29] = \<const0> ;
  assign doutb[28] = \<const0> ;
  assign doutb[27] = \<const0> ;
  assign doutb[26] = \<const0> ;
  assign doutb[25] = \<const0> ;
  assign doutb[24] = \<const0> ;
  assign doutb[23] = \<const0> ;
  assign doutb[22] = \<const0> ;
  assign doutb[21] = \<const0> ;
  assign doutb[20] = \<const0> ;
  assign doutb[19] = \<const0> ;
  assign doutb[18] = \<const0> ;
  assign doutb[17] = \<const0> ;
  assign doutb[16] = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  blk_mem_gen_1_blk_mem_gen_v8_3_4_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_3_4_synth" *) 
module blk_mem_gen_1_blk_mem_gen_v8_3_4_synth
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input ena;
  input [7:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire [7:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;

  blk_mem_gen_1_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule
`endif
