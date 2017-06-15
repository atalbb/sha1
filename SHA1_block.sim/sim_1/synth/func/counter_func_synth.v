// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Thu Jun 15 12:49:39 2017
// Host        : LAPTOP-L1N8U9P6 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/College/Thesis/VivadoProjects/SHA1_block/SHA1_block.sim/sim_1/synth/func/counter_func_synth.v
// Design      : counter
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module counter
   (clk,
    rst,
    en,
    out);
  input clk;
  input rst;
  input en;
  output [9:0]out;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire en;
  wire en_IBUF;
  wire [9:0]out;
  wire \out[9]_i_2_n_0 ;
  wire \out[9]_i_3_n_0 ;
  wire [9:0]out_OBUF;
  wire [9:0]p_0_in;
  wire rst;
  wire rst_IBUF;

  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF en_IBUF_inst
       (.I(en),
        .O(en_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \out[0]_i_1 
       (.I0(out_OBUF[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \out[1]_i_1 
       (.I0(out_OBUF[0]),
        .I1(out_OBUF[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \out[2]_i_1 
       (.I0(out_OBUF[0]),
        .I1(out_OBUF[1]),
        .I2(out_OBUF[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \out[3]_i_1 
       (.I0(out_OBUF[1]),
        .I1(out_OBUF[0]),
        .I2(out_OBUF[2]),
        .I3(out_OBUF[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \out[4]_i_1 
       (.I0(out_OBUF[2]),
        .I1(out_OBUF[0]),
        .I2(out_OBUF[1]),
        .I3(out_OBUF[3]),
        .I4(out_OBUF[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \out[5]_i_1 
       (.I0(out_OBUF[3]),
        .I1(out_OBUF[1]),
        .I2(out_OBUF[0]),
        .I3(out_OBUF[2]),
        .I4(out_OBUF[4]),
        .I5(out_OBUF[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \out[6]_i_1 
       (.I0(\out[9]_i_3_n_0 ),
        .I1(out_OBUF[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \out[7]_i_1 
       (.I0(\out[9]_i_3_n_0 ),
        .I1(out_OBUF[6]),
        .I2(out_OBUF[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \out[8]_i_1 
       (.I0(out_OBUF[6]),
        .I1(\out[9]_i_3_n_0 ),
        .I2(out_OBUF[7]),
        .I3(out_OBUF[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \out[9]_i_1 
       (.I0(out_OBUF[7]),
        .I1(\out[9]_i_3_n_0 ),
        .I2(out_OBUF[6]),
        .I3(out_OBUF[8]),
        .I4(out_OBUF[9]),
        .O(p_0_in[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[9]_i_2 
       (.I0(rst_IBUF),
        .O(\out[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \out[9]_i_3 
       (.I0(out_OBUF[5]),
        .I1(out_OBUF[3]),
        .I2(out_OBUF[1]),
        .I3(out_OBUF[0]),
        .I4(out_OBUF[2]),
        .I5(out_OBUF[4]),
        .O(\out[9]_i_3_n_0 ));
  OBUF \out_OBUF[0]_inst 
       (.I(out_OBUF[0]),
        .O(out[0]));
  OBUF \out_OBUF[1]_inst 
       (.I(out_OBUF[1]),
        .O(out[1]));
  OBUF \out_OBUF[2]_inst 
       (.I(out_OBUF[2]),
        .O(out[2]));
  OBUF \out_OBUF[3]_inst 
       (.I(out_OBUF[3]),
        .O(out[3]));
  OBUF \out_OBUF[4]_inst 
       (.I(out_OBUF[4]),
        .O(out[4]));
  OBUF \out_OBUF[5]_inst 
       (.I(out_OBUF[5]),
        .O(out[5]));
  OBUF \out_OBUF[6]_inst 
       (.I(out_OBUF[6]),
        .O(out[6]));
  OBUF \out_OBUF[7]_inst 
       (.I(out_OBUF[7]),
        .O(out[7]));
  OBUF \out_OBUF[8]_inst 
       (.I(out_OBUF[8]),
        .O(out[8]));
  OBUF \out_OBUF[9]_inst 
       (.I(out_OBUF[9]),
        .O(out[9]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(en_IBUF),
        .CLR(\out[9]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(out_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(en_IBUF),
        .CLR(\out[9]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(out_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(en_IBUF),
        .CLR(\out[9]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(out_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(en_IBUF),
        .CLR(\out[9]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(out_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(en_IBUF),
        .CLR(\out[9]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(out_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(en_IBUF),
        .CLR(\out[9]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(out_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(en_IBUF),
        .CLR(\out[9]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(out_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(en_IBUF),
        .CLR(\out[9]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(out_OBUF[7]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(en_IBUF),
        .CLR(\out[9]_i_2_n_0 ),
        .D(p_0_in[8]),
        .Q(out_OBUF[8]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(en_IBUF),
        .CLR(\out[9]_i_2_n_0 ),
        .D(p_0_in[9]),
        .Q(out_OBUF[9]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
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
