// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Wed May 31 18:33:29 2017
// Host        : LAPTOP-L1N8U9P6 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/College/Thesis/VivadoProjects/SHA1_core/SHA1_core.sim/sim_1/synth/timing/SHA1_core_tb_time_synth.v
// Design      : SHA1_core
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* SHA1_ABCDE_INIT = "3" *) (* SHA1_DIGEST = "9" *) (* SHA1_F0_ROUNDS = "4" *) 
(* SHA1_F1_ROUNDS = "5" *) (* SHA1_F2_ROUNDS = "6" *) (* SHA1_F3_ROUNDS = "7" *) 
(* SHA1_FINAL = "8" *) (* SHA1_INIT = "1" *) (* SHA1_RESET = "0" *) 
(* SHA1_W_ROUNDS = "2" *) 
(* NotValidForBitStream *)
module SHA1_core
   (clk,
    rst,
    block_in,
    done,
    digest_out);
  input clk;
  input rst;
  input [511:0]block_in;
  output done;
  output [159:0]digest_out;

  wire [159:0]digest_out;
  wire done;

initial begin
 $sdf_annotate("SHA1_core_tb_time_synth.sdf",,,,"tool_control");
end
  OBUF \digest_out_OBUF[0]_inst 
       (.I(1'b0),
        .O(digest_out[0]));
  OBUF \digest_out_OBUF[100]_inst 
       (.I(1'b0),
        .O(digest_out[100]));
  OBUF \digest_out_OBUF[101]_inst 
       (.I(1'b0),
        .O(digest_out[101]));
  OBUF \digest_out_OBUF[102]_inst 
       (.I(1'b0),
        .O(digest_out[102]));
  OBUF \digest_out_OBUF[103]_inst 
       (.I(1'b0),
        .O(digest_out[103]));
  OBUF \digest_out_OBUF[104]_inst 
       (.I(1'b0),
        .O(digest_out[104]));
  OBUF \digest_out_OBUF[105]_inst 
       (.I(1'b0),
        .O(digest_out[105]));
  OBUF \digest_out_OBUF[106]_inst 
       (.I(1'b0),
        .O(digest_out[106]));
  OBUF \digest_out_OBUF[107]_inst 
       (.I(1'b0),
        .O(digest_out[107]));
  OBUF \digest_out_OBUF[108]_inst 
       (.I(1'b0),
        .O(digest_out[108]));
  OBUF \digest_out_OBUF[109]_inst 
       (.I(1'b0),
        .O(digest_out[109]));
  OBUF \digest_out_OBUF[10]_inst 
       (.I(1'b0),
        .O(digest_out[10]));
  OBUF \digest_out_OBUF[110]_inst 
       (.I(1'b0),
        .O(digest_out[110]));
  OBUF \digest_out_OBUF[111]_inst 
       (.I(1'b0),
        .O(digest_out[111]));
  OBUF \digest_out_OBUF[112]_inst 
       (.I(1'b0),
        .O(digest_out[112]));
  OBUF \digest_out_OBUF[113]_inst 
       (.I(1'b0),
        .O(digest_out[113]));
  OBUF \digest_out_OBUF[114]_inst 
       (.I(1'b0),
        .O(digest_out[114]));
  OBUF \digest_out_OBUF[115]_inst 
       (.I(1'b0),
        .O(digest_out[115]));
  OBUF \digest_out_OBUF[116]_inst 
       (.I(1'b0),
        .O(digest_out[116]));
  OBUF \digest_out_OBUF[117]_inst 
       (.I(1'b0),
        .O(digest_out[117]));
  OBUF \digest_out_OBUF[118]_inst 
       (.I(1'b0),
        .O(digest_out[118]));
  OBUF \digest_out_OBUF[119]_inst 
       (.I(1'b0),
        .O(digest_out[119]));
  OBUF \digest_out_OBUF[11]_inst 
       (.I(1'b0),
        .O(digest_out[11]));
  OBUF \digest_out_OBUF[120]_inst 
       (.I(1'b0),
        .O(digest_out[120]));
  OBUF \digest_out_OBUF[121]_inst 
       (.I(1'b0),
        .O(digest_out[121]));
  OBUF \digest_out_OBUF[122]_inst 
       (.I(1'b0),
        .O(digest_out[122]));
  OBUF \digest_out_OBUF[123]_inst 
       (.I(1'b0),
        .O(digest_out[123]));
  OBUF \digest_out_OBUF[124]_inst 
       (.I(1'b0),
        .O(digest_out[124]));
  OBUF \digest_out_OBUF[125]_inst 
       (.I(1'b0),
        .O(digest_out[125]));
  OBUF \digest_out_OBUF[126]_inst 
       (.I(1'b0),
        .O(digest_out[126]));
  OBUF \digest_out_OBUF[127]_inst 
       (.I(1'b0),
        .O(digest_out[127]));
  OBUF \digest_out_OBUF[128]_inst 
       (.I(1'b0),
        .O(digest_out[128]));
  OBUF \digest_out_OBUF[129]_inst 
       (.I(1'b0),
        .O(digest_out[129]));
  OBUF \digest_out_OBUF[12]_inst 
       (.I(1'b0),
        .O(digest_out[12]));
  OBUF \digest_out_OBUF[130]_inst 
       (.I(1'b0),
        .O(digest_out[130]));
  OBUF \digest_out_OBUF[131]_inst 
       (.I(1'b0),
        .O(digest_out[131]));
  OBUF \digest_out_OBUF[132]_inst 
       (.I(1'b0),
        .O(digest_out[132]));
  OBUF \digest_out_OBUF[133]_inst 
       (.I(1'b0),
        .O(digest_out[133]));
  OBUF \digest_out_OBUF[134]_inst 
       (.I(1'b0),
        .O(digest_out[134]));
  OBUF \digest_out_OBUF[135]_inst 
       (.I(1'b0),
        .O(digest_out[135]));
  OBUF \digest_out_OBUF[136]_inst 
       (.I(1'b0),
        .O(digest_out[136]));
  OBUF \digest_out_OBUF[137]_inst 
       (.I(1'b0),
        .O(digest_out[137]));
  OBUF \digest_out_OBUF[138]_inst 
       (.I(1'b0),
        .O(digest_out[138]));
  OBUF \digest_out_OBUF[139]_inst 
       (.I(1'b0),
        .O(digest_out[139]));
  OBUF \digest_out_OBUF[13]_inst 
       (.I(1'b0),
        .O(digest_out[13]));
  OBUF \digest_out_OBUF[140]_inst 
       (.I(1'b0),
        .O(digest_out[140]));
  OBUF \digest_out_OBUF[141]_inst 
       (.I(1'b0),
        .O(digest_out[141]));
  OBUF \digest_out_OBUF[142]_inst 
       (.I(1'b0),
        .O(digest_out[142]));
  OBUF \digest_out_OBUF[143]_inst 
       (.I(1'b0),
        .O(digest_out[143]));
  OBUF \digest_out_OBUF[144]_inst 
       (.I(1'b0),
        .O(digest_out[144]));
  OBUF \digest_out_OBUF[145]_inst 
       (.I(1'b0),
        .O(digest_out[145]));
  OBUF \digest_out_OBUF[146]_inst 
       (.I(1'b0),
        .O(digest_out[146]));
  OBUF \digest_out_OBUF[147]_inst 
       (.I(1'b0),
        .O(digest_out[147]));
  OBUF \digest_out_OBUF[148]_inst 
       (.I(1'b0),
        .O(digest_out[148]));
  OBUF \digest_out_OBUF[149]_inst 
       (.I(1'b0),
        .O(digest_out[149]));
  OBUF \digest_out_OBUF[14]_inst 
       (.I(1'b0),
        .O(digest_out[14]));
  OBUF \digest_out_OBUF[150]_inst 
       (.I(1'b0),
        .O(digest_out[150]));
  OBUF \digest_out_OBUF[151]_inst 
       (.I(1'b0),
        .O(digest_out[151]));
  OBUF \digest_out_OBUF[152]_inst 
       (.I(1'b0),
        .O(digest_out[152]));
  OBUF \digest_out_OBUF[153]_inst 
       (.I(1'b0),
        .O(digest_out[153]));
  OBUF \digest_out_OBUF[154]_inst 
       (.I(1'b0),
        .O(digest_out[154]));
  OBUF \digest_out_OBUF[155]_inst 
       (.I(1'b0),
        .O(digest_out[155]));
  OBUF \digest_out_OBUF[156]_inst 
       (.I(1'b0),
        .O(digest_out[156]));
  OBUF \digest_out_OBUF[157]_inst 
       (.I(1'b0),
        .O(digest_out[157]));
  OBUF \digest_out_OBUF[158]_inst 
       (.I(1'b0),
        .O(digest_out[158]));
  OBUF \digest_out_OBUF[159]_inst 
       (.I(1'b0),
        .O(digest_out[159]));
  OBUF \digest_out_OBUF[15]_inst 
       (.I(1'b0),
        .O(digest_out[15]));
  OBUF \digest_out_OBUF[16]_inst 
       (.I(1'b0),
        .O(digest_out[16]));
  OBUF \digest_out_OBUF[17]_inst 
       (.I(1'b0),
        .O(digest_out[17]));
  OBUF \digest_out_OBUF[18]_inst 
       (.I(1'b0),
        .O(digest_out[18]));
  OBUF \digest_out_OBUF[19]_inst 
       (.I(1'b0),
        .O(digest_out[19]));
  OBUF \digest_out_OBUF[1]_inst 
       (.I(1'b0),
        .O(digest_out[1]));
  OBUF \digest_out_OBUF[20]_inst 
       (.I(1'b0),
        .O(digest_out[20]));
  OBUF \digest_out_OBUF[21]_inst 
       (.I(1'b0),
        .O(digest_out[21]));
  OBUF \digest_out_OBUF[22]_inst 
       (.I(1'b0),
        .O(digest_out[22]));
  OBUF \digest_out_OBUF[23]_inst 
       (.I(1'b0),
        .O(digest_out[23]));
  OBUF \digest_out_OBUF[24]_inst 
       (.I(1'b0),
        .O(digest_out[24]));
  OBUF \digest_out_OBUF[25]_inst 
       (.I(1'b0),
        .O(digest_out[25]));
  OBUF \digest_out_OBUF[26]_inst 
       (.I(1'b0),
        .O(digest_out[26]));
  OBUF \digest_out_OBUF[27]_inst 
       (.I(1'b0),
        .O(digest_out[27]));
  OBUF \digest_out_OBUF[28]_inst 
       (.I(1'b0),
        .O(digest_out[28]));
  OBUF \digest_out_OBUF[29]_inst 
       (.I(1'b0),
        .O(digest_out[29]));
  OBUF \digest_out_OBUF[2]_inst 
       (.I(1'b0),
        .O(digest_out[2]));
  OBUF \digest_out_OBUF[30]_inst 
       (.I(1'b0),
        .O(digest_out[30]));
  OBUF \digest_out_OBUF[31]_inst 
       (.I(1'b0),
        .O(digest_out[31]));
  OBUF \digest_out_OBUF[32]_inst 
       (.I(1'b0),
        .O(digest_out[32]));
  OBUF \digest_out_OBUF[33]_inst 
       (.I(1'b0),
        .O(digest_out[33]));
  OBUF \digest_out_OBUF[34]_inst 
       (.I(1'b0),
        .O(digest_out[34]));
  OBUF \digest_out_OBUF[35]_inst 
       (.I(1'b0),
        .O(digest_out[35]));
  OBUF \digest_out_OBUF[36]_inst 
       (.I(1'b0),
        .O(digest_out[36]));
  OBUF \digest_out_OBUF[37]_inst 
       (.I(1'b0),
        .O(digest_out[37]));
  OBUF \digest_out_OBUF[38]_inst 
       (.I(1'b0),
        .O(digest_out[38]));
  OBUF \digest_out_OBUF[39]_inst 
       (.I(1'b0),
        .O(digest_out[39]));
  OBUF \digest_out_OBUF[3]_inst 
       (.I(1'b0),
        .O(digest_out[3]));
  OBUF \digest_out_OBUF[40]_inst 
       (.I(1'b0),
        .O(digest_out[40]));
  OBUF \digest_out_OBUF[41]_inst 
       (.I(1'b0),
        .O(digest_out[41]));
  OBUF \digest_out_OBUF[42]_inst 
       (.I(1'b0),
        .O(digest_out[42]));
  OBUF \digest_out_OBUF[43]_inst 
       (.I(1'b0),
        .O(digest_out[43]));
  OBUF \digest_out_OBUF[44]_inst 
       (.I(1'b0),
        .O(digest_out[44]));
  OBUF \digest_out_OBUF[45]_inst 
       (.I(1'b0),
        .O(digest_out[45]));
  OBUF \digest_out_OBUF[46]_inst 
       (.I(1'b0),
        .O(digest_out[46]));
  OBUF \digest_out_OBUF[47]_inst 
       (.I(1'b0),
        .O(digest_out[47]));
  OBUF \digest_out_OBUF[48]_inst 
       (.I(1'b0),
        .O(digest_out[48]));
  OBUF \digest_out_OBUF[49]_inst 
       (.I(1'b0),
        .O(digest_out[49]));
  OBUF \digest_out_OBUF[4]_inst 
       (.I(1'b0),
        .O(digest_out[4]));
  OBUF \digest_out_OBUF[50]_inst 
       (.I(1'b0),
        .O(digest_out[50]));
  OBUF \digest_out_OBUF[51]_inst 
       (.I(1'b0),
        .O(digest_out[51]));
  OBUF \digest_out_OBUF[52]_inst 
       (.I(1'b0),
        .O(digest_out[52]));
  OBUF \digest_out_OBUF[53]_inst 
       (.I(1'b0),
        .O(digest_out[53]));
  OBUF \digest_out_OBUF[54]_inst 
       (.I(1'b0),
        .O(digest_out[54]));
  OBUF \digest_out_OBUF[55]_inst 
       (.I(1'b0),
        .O(digest_out[55]));
  OBUF \digest_out_OBUF[56]_inst 
       (.I(1'b0),
        .O(digest_out[56]));
  OBUF \digest_out_OBUF[57]_inst 
       (.I(1'b0),
        .O(digest_out[57]));
  OBUF \digest_out_OBUF[58]_inst 
       (.I(1'b0),
        .O(digest_out[58]));
  OBUF \digest_out_OBUF[59]_inst 
       (.I(1'b0),
        .O(digest_out[59]));
  OBUF \digest_out_OBUF[5]_inst 
       (.I(1'b0),
        .O(digest_out[5]));
  OBUF \digest_out_OBUF[60]_inst 
       (.I(1'b0),
        .O(digest_out[60]));
  OBUF \digest_out_OBUF[61]_inst 
       (.I(1'b0),
        .O(digest_out[61]));
  OBUF \digest_out_OBUF[62]_inst 
       (.I(1'b0),
        .O(digest_out[62]));
  OBUF \digest_out_OBUF[63]_inst 
       (.I(1'b0),
        .O(digest_out[63]));
  OBUF \digest_out_OBUF[64]_inst 
       (.I(1'b0),
        .O(digest_out[64]));
  OBUF \digest_out_OBUF[65]_inst 
       (.I(1'b0),
        .O(digest_out[65]));
  OBUF \digest_out_OBUF[66]_inst 
       (.I(1'b0),
        .O(digest_out[66]));
  OBUF \digest_out_OBUF[67]_inst 
       (.I(1'b0),
        .O(digest_out[67]));
  OBUF \digest_out_OBUF[68]_inst 
       (.I(1'b0),
        .O(digest_out[68]));
  OBUF \digest_out_OBUF[69]_inst 
       (.I(1'b0),
        .O(digest_out[69]));
  OBUF \digest_out_OBUF[6]_inst 
       (.I(1'b0),
        .O(digest_out[6]));
  OBUF \digest_out_OBUF[70]_inst 
       (.I(1'b0),
        .O(digest_out[70]));
  OBUF \digest_out_OBUF[71]_inst 
       (.I(1'b0),
        .O(digest_out[71]));
  OBUF \digest_out_OBUF[72]_inst 
       (.I(1'b0),
        .O(digest_out[72]));
  OBUF \digest_out_OBUF[73]_inst 
       (.I(1'b0),
        .O(digest_out[73]));
  OBUF \digest_out_OBUF[74]_inst 
       (.I(1'b0),
        .O(digest_out[74]));
  OBUF \digest_out_OBUF[75]_inst 
       (.I(1'b0),
        .O(digest_out[75]));
  OBUF \digest_out_OBUF[76]_inst 
       (.I(1'b0),
        .O(digest_out[76]));
  OBUF \digest_out_OBUF[77]_inst 
       (.I(1'b0),
        .O(digest_out[77]));
  OBUF \digest_out_OBUF[78]_inst 
       (.I(1'b0),
        .O(digest_out[78]));
  OBUF \digest_out_OBUF[79]_inst 
       (.I(1'b0),
        .O(digest_out[79]));
  OBUF \digest_out_OBUF[7]_inst 
       (.I(1'b0),
        .O(digest_out[7]));
  OBUF \digest_out_OBUF[80]_inst 
       (.I(1'b0),
        .O(digest_out[80]));
  OBUF \digest_out_OBUF[81]_inst 
       (.I(1'b0),
        .O(digest_out[81]));
  OBUF \digest_out_OBUF[82]_inst 
       (.I(1'b0),
        .O(digest_out[82]));
  OBUF \digest_out_OBUF[83]_inst 
       (.I(1'b0),
        .O(digest_out[83]));
  OBUF \digest_out_OBUF[84]_inst 
       (.I(1'b0),
        .O(digest_out[84]));
  OBUF \digest_out_OBUF[85]_inst 
       (.I(1'b0),
        .O(digest_out[85]));
  OBUF \digest_out_OBUF[86]_inst 
       (.I(1'b0),
        .O(digest_out[86]));
  OBUF \digest_out_OBUF[87]_inst 
       (.I(1'b0),
        .O(digest_out[87]));
  OBUF \digest_out_OBUF[88]_inst 
       (.I(1'b0),
        .O(digest_out[88]));
  OBUF \digest_out_OBUF[89]_inst 
       (.I(1'b0),
        .O(digest_out[89]));
  OBUF \digest_out_OBUF[8]_inst 
       (.I(1'b0),
        .O(digest_out[8]));
  OBUF \digest_out_OBUF[90]_inst 
       (.I(1'b0),
        .O(digest_out[90]));
  OBUF \digest_out_OBUF[91]_inst 
       (.I(1'b0),
        .O(digest_out[91]));
  OBUF \digest_out_OBUF[92]_inst 
       (.I(1'b0),
        .O(digest_out[92]));
  OBUF \digest_out_OBUF[93]_inst 
       (.I(1'b0),
        .O(digest_out[93]));
  OBUF \digest_out_OBUF[94]_inst 
       (.I(1'b0),
        .O(digest_out[94]));
  OBUF \digest_out_OBUF[95]_inst 
       (.I(1'b0),
        .O(digest_out[95]));
  OBUF \digest_out_OBUF[96]_inst 
       (.I(1'b0),
        .O(digest_out[96]));
  OBUF \digest_out_OBUF[97]_inst 
       (.I(1'b0),
        .O(digest_out[97]));
  OBUF \digest_out_OBUF[98]_inst 
       (.I(1'b0),
        .O(digest_out[98]));
  OBUF \digest_out_OBUF[99]_inst 
       (.I(1'b0),
        .O(digest_out[99]));
  OBUF \digest_out_OBUF[9]_inst 
       (.I(1'b0),
        .O(digest_out[9]));
  OBUFT done_OBUF_inst
       (.I(1'b0),
        .O(done),
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