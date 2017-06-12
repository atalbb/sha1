// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Mon Jun 12 16:47:40 2017
// Host        : LAPTOP-L1N8U9P6 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/College/Thesis/VivadoProjects/SHA1_sequential/SHA1_sequential.sim/sim_1/synth/func/SHA1_tb_func_synth.v
// Design      : SHA1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* append_msg_size = "3'b101" *) (* append_one = "3'b100" *) (* append_zero = "3'b011" *) 
(* idle = "3'b000" *) (* read_32bit_msgs = "3'b010" *) (* reset = "3'b001" *) 
(* NotValidForBitStream *)
module SHA1
   (clk,
    rst,
    msg_in,
    msg_out);
  input clk;
  input rst;
  input [31:0]msg_in;
  output [31:0]msg_out;

  wire [31:0]msg_out;

  OBUFT \msg_out_OBUF[0]_inst 
       (.I(1'b0),
        .O(msg_out[0]),
        .T(1'b1));
  OBUFT \msg_out_OBUF[10]_inst 
       (.I(1'b0),
        .O(msg_out[10]),
        .T(1'b1));
  OBUFT \msg_out_OBUF[11]_inst 
       (.I(1'b0),
        .O(msg_out[11]),
        .T(1'b1));
  OBUFT \msg_out_OBUF[12]_inst 
       (.I(1'b0),
        .O(msg_out[12]),
        .T(1'b1));
  OBUFT \msg_out_OBUF[13]_inst 
       (.I(1'b0),
        .O(msg_out[13]),
        .T(1'b1));
  OBUFT \msg_out_OBUF[14]_inst 
       (.I(1'b0),
        .O(msg_out[14]),
        .T(1'b1));
  OBUFT \msg_out_OBUF[15]_inst 
       (.I(1'b0),
        .O(msg_out[15]),
        .T(1'b1));
  OBUFT \msg_out_OBUF[16]_inst 
       (.I(1'b0),
        .O(msg_out[16]),
        .T(1'b1));
  OBUFT \msg_out_OBUF[17]_inst 
       (.I(1'b0),
        .O(msg_out[17]),
        .T(1'b1));
  OBUFT \msg_out_OBUF[18]_inst 
       (.I(1'b0),
        .O(msg_out[18]),
        .T(1'b1));
  OBUFT \msg_out_OBUF[19]_inst 
       (.I(1'b0),
        .O(msg_out[19]),
        .T(1'b1));
  OBUFT \msg_out_OBUF[1]_inst 
       (.I(1'b0),
        .O(msg_out[1]),
        .T(1'b1));
  OBUFT \msg_out_OBUF[20]_inst 
       (.I(1'b0),
        .O(msg_out[20]),
        .T(1'b1));
  OBUFT \msg_out_OBUF[21]_inst 
       (.I(1'b0),
        .O(msg_out[21]),
        .T(1'b1));
  OBUFT \msg_out_OBUF[22]_inst 
       (.I(1'b0),
        .O(msg_out[22]),
        .T(1'b1));
  OBUFT \msg_out_OBUF[23]_inst 
       (.I(1'b0),
        .O(msg_out[23]),
        .T(1'b1));
  OBUFT \msg_out_OBUF[24]_inst 
       (.I(1'b0),
        .O(msg_out[24]),
        .T(1'b1));
  OBUFT \msg_out_OBUF[25]_inst 
       (.I(1'b0),
        .O(msg_out[25]),
        .T(1'b1));
  OBUFT \msg_out_OBUF[26]_inst 
       (.I(1'b0),
        .O(msg_out[26]),
        .T(1'b1));
  OBUFT \msg_out_OBUF[27]_inst 
       (.I(1'b0),
        .O(msg_out[27]),
        .T(1'b1));
  OBUFT \msg_out_OBUF[28]_inst 
       (.I(1'b0),
        .O(msg_out[28]),
        .T(1'b1));
  OBUFT \msg_out_OBUF[29]_inst 
       (.I(1'b0),
        .O(msg_out[29]),
        .T(1'b1));
  OBUFT \msg_out_OBUF[2]_inst 
       (.I(1'b0),
        .O(msg_out[2]),
        .T(1'b1));
  OBUFT \msg_out_OBUF[30]_inst 
       (.I(1'b0),
        .O(msg_out[30]),
        .T(1'b1));
  OBUFT \msg_out_OBUF[31]_inst 
       (.I(1'b0),
        .O(msg_out[31]),
        .T(1'b1));
  OBUFT \msg_out_OBUF[3]_inst 
       (.I(1'b0),
        .O(msg_out[3]),
        .T(1'b1));
  OBUFT \msg_out_OBUF[4]_inst 
       (.I(1'b0),
        .O(msg_out[4]),
        .T(1'b1));
  OBUFT \msg_out_OBUF[5]_inst 
       (.I(1'b0),
        .O(msg_out[5]),
        .T(1'b1));
  OBUFT \msg_out_OBUF[6]_inst 
       (.I(1'b0),
        .O(msg_out[6]),
        .T(1'b1));
  OBUFT \msg_out_OBUF[7]_inst 
       (.I(1'b0),
        .O(msg_out[7]),
        .T(1'b1));
  OBUFT \msg_out_OBUF[8]_inst 
       (.I(1'b0),
        .O(msg_out[8]),
        .T(1'b1));
  OBUFT \msg_out_OBUF[9]_inst 
       (.I(1'b0),
        .O(msg_out[9]),
        .T(1'b1));
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
