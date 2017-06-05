`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/05/2017 04:31:56 PM
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(input wire [511:0]msg,
           input wire [9:0]msg_len,
           output wire [159:0]digest_out
    );
wire [511:0]msg,msgPad,temp;
    wire [9:0]msg_len;
    wire [31:0]w[79:0];
    wire [31:0]ph[4:0];
    wire [31:0]fh[4:0];
    wire [31:0]a,b,c,d,e;
    wire [31:0]ao[79:0],bo[79:0],co[79:0],do[79:0],eo[79:0];
    //msg_input MSG1(msg,msg_len);
    assign temp = msg << (512-msg_len);
    pad P1(temp,msg_len,msgPad); 
    W0_15 W(msgPad,w[0],w[1],w[2],w[3],w[4],w[5],w[6],w[7],w[8],w[9],w[10],w[11],w[12],w[13],w[14],w[15]);
    init_H01234 H(ph[0],ph[1],ph[2],ph[3],ph[4]);// needs to be modified
    init_ABCDE  A1(ph[0],ph[1],ph[2],ph[3],ph[4],a,b,c,d,e);
    // wt calculations starts
    W16_79 W16(w[13],w[8],w[2],w[0],w[16]);
    W16_79 W17(w[14],w[9],w[3],w[1],w[17]);
    W16_79 W18(w[15],w[10],w[4],w[2],w[18]);
    W16_79 W19(w[16],w[11],w[5],w[3],w[19]);
    W16_79 W20(w[17],w[12],w[6],w[4],w[20]);
    W16_79 W21(w[18],w[13],w[7],w[5],w[21]);
    W16_79 W22(w[19],w[14],w[8],w[6],w[22]);
    W16_79 W23(w[20],w[15],w[9],w[7],w[23]);
    W16_79 W24(w[21],w[16],w[10],w[8],w[24]);
    W16_79 W25(w[22],w[17],w[11],w[9],w[25]);
    W16_79 W26(w[23],w[18],w[12],w[10],w[26]);
    W16_79 W27(w[24],w[19],w[13],w[11],w[27]);
    W16_79 W28(w[25],w[20],w[14],w[12],w[28]);
    W16_79 W29(w[26],w[21],w[15],w[13],w[29]);
    W16_79 W30(w[27],w[22],w[16],w[14],w[30]);
    W16_79 W31(w[28],w[23],w[17],w[15],w[31]);
    W16_79 W32(w[29],w[24],w[18],w[16],w[32]);
    W16_79 W33(w[30],w[25],w[19],w[17],w[33]);
    W16_79 W34(w[31],w[26],w[20],w[18],w[34]);
    W16_79 W35(w[32],w[27],w[21],w[19],w[35]);
    W16_79 W36(w[33],w[28],w[22],w[20],w[36]);
    W16_79 W37(w[34],w[29],w[23],w[21],w[37]);
    W16_79 W38(w[35],w[30],w[24],w[22],w[38]);
    W16_79 W39(w[36],w[31],w[25],w[23],w[39]);
    W16_79 W40(w[37],w[32],w[26],w[24],w[40]);
    W16_79 W41(w[38],w[33],w[27],w[25],w[41]);
    W16_79 W42(w[39],w[34],w[28],w[26],w[42]);
    W16_79 W43(w[40],w[35],w[29],w[27],w[43]);
    W16_79 W44(w[41],w[36],w[30],w[28],w[44]);
    W16_79 W45(w[42],w[37],w[31],w[29],w[45]);
    W16_79 W46(w[43],w[38],w[32],w[30],w[46]);
    W16_79 W47(w[44],w[39],w[33],w[31],w[47]);
    W16_79 W48(w[45],w[40],w[34],w[32],w[48]);
    W16_79 W49(w[46],w[41],w[35],w[33],w[49]);
    W16_79 W50(w[47],w[42],w[36],w[34],w[50]);
    W16_79 W51(w[48],w[43],w[37],w[35],w[51]);
    W16_79 W52(w[49],w[44],w[38],w[36],w[52]);
    W16_79 W53(w[50],w[45],w[39],w[37],w[53]);
    W16_79 W54(w[51],w[46],w[40],w[38],w[54]);
    W16_79 W55(w[52],w[47],w[41],w[39],w[55]);
    W16_79 W56(w[53],w[48],w[42],w[40],w[56]);
    W16_79 W57(w[54],w[49],w[43],w[41],w[57]);
    W16_79 W58(w[55],w[50],w[44],w[42],w[58]);
    W16_79 W59(w[56],w[51],w[45],w[43],w[59]);
    W16_79 W60(w[57],w[52],w[46],w[44],w[60]);
    W16_79 W61(w[58],w[53],w[47],w[45],w[61]);
    W16_79 W62(w[59],w[54],w[48],w[46],w[62]);
    W16_79 W63(w[60],w[55],w[49],w[47],w[63]);
    W16_79 W64(w[61],w[56],w[50],w[48],w[64]);
    W16_79 W65(w[62],w[57],w[51],w[49],w[65]);
    W16_79 W66(w[63],w[58],w[52],w[50],w[66]);
    W16_79 W67(w[64],w[59],w[53],w[51],w[67]);
    W16_79 W68(w[65],w[60],w[54],w[52],w[68]);
    W16_79 W69(w[66],w[61],w[55],w[53],w[69]);
    W16_79 W70(w[67],w[62],w[56],w[54],w[70]);
    W16_79 W71(w[68],w[63],w[57],w[55],w[71]);
    W16_79 W72(w[69],w[64],w[58],w[56],w[72]);
    W16_79 W73(w[70],w[65],w[59],w[57],w[73]);
    W16_79 W74(w[71],w[66],w[60],w[58],w[74]);
    W16_79 W75(w[72],w[67],w[61],w[59],w[75]);
    W16_79 W76(w[73],w[68],w[62],w[60],w[76]);
    W16_79 W77(w[74],w[69],w[63],w[61],w[77]);
    W16_79 W78(w[75],w[70],w[64],w[62],w[78]);
    W16_79 W79(w[76],w[71],w[65],w[63],w[79]);
    // Hash rounds 0 to 19 starts
    Round0_19 R0(a,b,c,d,e,w[0],ao[0],bo[0],co[0],do[0],eo[0]);
    Round0_19 R1(ao[0],bo[0],co[0],do[0],eo[0],w[1],ao[1],bo[1],co[1],do[1],eo[1]);
    Round0_19 R2(ao[1],bo[1],co[1],do[1],eo[1],w[2],ao[2],bo[2],co[2],do[2],eo[2]);
    Round0_19 R3(ao[2],bo[2],co[2],do[2],eo[2],w[3],ao[3],bo[3],co[3],do[3],eo[3]);
    Round0_19 R4(ao[3],bo[3],co[3],do[3],eo[3],w[4],ao[4],bo[4],co[4],do[4],eo[4]);
    Round0_19 R5(ao[4],bo[4],co[4],do[4],eo[4],w[5],ao[5],bo[5],co[5],do[5],eo[5]);
    Round0_19 R6(ao[5],bo[5],co[5],do[5],eo[5],w[6],ao[6],bo[6],co[6],do[6],eo[6]);
    Round0_19 R7(ao[6],bo[6],co[6],do[6],eo[6],w[7],ao[7],bo[7],co[7],do[7],eo[7]);
    Round0_19 R8(ao[7],bo[7],co[7],do[7],eo[7],w[8],ao[8],bo[8],co[8],do[8],eo[8]);
    Round0_19 R9(ao[8],bo[8],co[8],do[8],eo[8],w[9],ao[9],bo[9],co[9],do[9],eo[9]);
    Round0_19 R10(ao[9],bo[9],co[9],do[9],eo[9],w[10],ao[10],bo[10],co[10],do[10],eo[10]);
    Round0_19 R11(ao[10],bo[10],co[10],do[10],eo[10],w[11],ao[11],bo[11],co[11],do[11],eo[11]);
    Round0_19 R12(ao[11],bo[11],co[11],do[11],eo[11],w[12],ao[12],bo[12],co[12],do[12],eo[12]);
    Round0_19 R13(ao[12],bo[12],co[12],do[12],eo[12],w[13],ao[13],bo[13],co[13],do[13],eo[13]);
    Round0_19 R14(ao[13],bo[13],co[13],do[13],eo[13],w[14],ao[14],bo[14],co[14],do[14],eo[14]);
    Round0_19 R15(ao[14],bo[14],co[14],do[14],eo[14],w[15],ao[15],bo[15],co[15],do[15],eo[15]);
    Round0_19 R16(ao[15],bo[15],co[15],do[15],eo[15],w[16],ao[16],bo[16],co[16],do[16],eo[16]);
    Round0_19 R17(ao[16],bo[16],co[16],do[16],eo[16],w[17],ao[17],bo[17],co[17],do[17],eo[17]);
    Round0_19 R18(ao[17],bo[17],co[17],do[17],eo[17],w[18],ao[18],bo[18],co[18],do[18],eo[18]);
    Round0_19 R19(ao[18],bo[18],co[18],do[18],eo[18],w[19],ao[19],bo[19],co[19],do[19],eo[19]);
    // Hash rounds 20 to 39 starts
    Round20_39 R20(ao[19],bo[19],co[19],do[19],eo[19],w[20],ao[20],bo[20],co[20],do[20],eo[20]);
    Round20_39 R21(ao[20],bo[20],co[20],do[20],eo[20],w[21],ao[21],bo[21],co[21],do[21],eo[21]);
    Round20_39 R22(ao[21],bo[21],co[21],do[21],eo[21],w[22],ao[22],bo[22],co[22],do[22],eo[22]);
    Round20_39 R23(ao[22],bo[22],co[22],do[22],eo[22],w[23],ao[23],bo[23],co[23],do[23],eo[23]);
    Round20_39 R24(ao[23],bo[23],co[23],do[23],eo[23],w[24],ao[24],bo[24],co[24],do[24],eo[24]);
    Round20_39 R25(ao[24],bo[24],co[24],do[24],eo[24],w[25],ao[25],bo[25],co[25],do[25],eo[25]);
    Round20_39 R26(ao[25],bo[25],co[25],do[25],eo[25],w[26],ao[26],bo[26],co[26],do[26],eo[26]);
    Round20_39 R27(ao[26],bo[26],co[26],do[26],eo[26],w[27],ao[27],bo[27],co[27],do[27],eo[27]);
    Round20_39 R28(ao[27],bo[27],co[27],do[27],eo[27],w[28],ao[28],bo[28],co[28],do[28],eo[28]);
    Round20_39 R29(ao[28],bo[28],co[28],do[28],eo[28],w[29],ao[29],bo[29],co[29],do[29],eo[29]);
    Round20_39 R30(ao[29],bo[29],co[29],do[29],eo[29],w[30],ao[30],bo[30],co[30],do[30],eo[30]);
    Round20_39 R31(ao[30],bo[30],co[30],do[30],eo[30],w[31],ao[31],bo[31],co[31],do[31],eo[31]);
    Round20_39 R32(ao[31],bo[31],co[31],do[31],eo[31],w[32],ao[32],bo[32],co[32],do[32],eo[32]);
    Round20_39 R33(ao[32],bo[32],co[32],do[32],eo[32],w[33],ao[33],bo[33],co[33],do[33],eo[33]);
    Round20_39 R34(ao[33],bo[33],co[33],do[33],eo[33],w[34],ao[34],bo[34],co[34],do[34],eo[34]);
    Round20_39 R35(ao[34],bo[34],co[34],do[34],eo[34],w[35],ao[35],bo[35],co[35],do[35],eo[35]);
    Round20_39 R36(ao[35],bo[35],co[35],do[35],eo[35],w[36],ao[36],bo[36],co[36],do[36],eo[36]);
    Round20_39 R37(ao[36],bo[36],co[36],do[36],eo[36],w[37],ao[37],bo[37],co[37],do[37],eo[37]);
    Round20_39 R38(ao[37],bo[37],co[37],do[37],eo[37],w[38],ao[38],bo[38],co[38],do[38],eo[38]);
    Round20_39 R39(ao[38],bo[38],co[38],do[38],eo[38],w[39],ao[39],bo[39],co[39],do[39],eo[39]);
    // Hash rounds 40 to 59 starts
    Round40_59 R40(ao[39],bo[39],co[39],do[39],eo[39],w[40],ao[40],bo[40],co[40],do[40],eo[40]);
    Round40_59 R41(ao[40],bo[40],co[40],do[40],eo[40],w[41],ao[41],bo[41],co[41],do[41],eo[41]);
    Round40_59 R42(ao[41],bo[41],co[41],do[41],eo[41],w[42],ao[42],bo[42],co[42],do[42],eo[42]);
    Round40_59 R43(ao[42],bo[42],co[42],do[42],eo[42],w[43],ao[43],bo[43],co[43],do[43],eo[43]);
    Round40_59 R44(ao[43],bo[43],co[43],do[43],eo[43],w[44],ao[44],bo[44],co[44],do[44],eo[44]);
    Round40_59 R45(ao[44],bo[44],co[44],do[44],eo[44],w[45],ao[45],bo[45],co[45],do[45],eo[45]);
    Round40_59 R46(ao[45],bo[45],co[45],do[45],eo[45],w[46],ao[46],bo[46],co[46],do[46],eo[46]);
    Round40_59 R47(ao[46],bo[46],co[46],do[46],eo[46],w[47],ao[47],bo[47],co[47],do[47],eo[47]);
    Round40_59 R48(ao[47],bo[47],co[47],do[47],eo[47],w[48],ao[48],bo[48],co[48],do[48],eo[48]);
    Round40_59 R49(ao[48],bo[48],co[48],do[48],eo[48],w[49],ao[49],bo[49],co[49],do[49],eo[49]);
    Round40_59 R50(ao[49],bo[49],co[49],do[49],eo[49],w[50],ao[50],bo[50],co[50],do[50],eo[50]);
    Round40_59 R51(ao[50],bo[50],co[50],do[50],eo[50],w[51],ao[51],bo[51],co[51],do[51],eo[51]);
    Round40_59 R52(ao[51],bo[51],co[51],do[51],eo[51],w[52],ao[52],bo[52],co[52],do[52],eo[52]);
    Round40_59 R53(ao[52],bo[52],co[52],do[52],eo[52],w[53],ao[53],bo[53],co[53],do[53],eo[53]);
    Round40_59 R54(ao[53],bo[53],co[53],do[53],eo[53],w[54],ao[54],bo[54],co[54],do[54],eo[54]);
    Round40_59 R55(ao[54],bo[54],co[54],do[54],eo[54],w[55],ao[55],bo[55],co[55],do[55],eo[55]);
    Round40_59 R56(ao[55],bo[55],co[55],do[55],eo[55],w[56],ao[56],bo[56],co[56],do[56],eo[56]);
    Round40_59 R57(ao[56],bo[56],co[56],do[56],eo[56],w[57],ao[57],bo[57],co[57],do[57],eo[57]);
    Round40_59 R58(ao[57],bo[57],co[57],do[57],eo[57],w[58],ao[58],bo[58],co[58],do[58],eo[58]);
    Round40_59 R59(ao[58],bo[58],co[58],do[58],eo[58],w[59],ao[59],bo[59],co[59],do[59],eo[59]);
    // Hash rounds 60 to 79 starts
    Round60_79 R60(ao[59],bo[59],co[59],do[59],eo[59],w[60],ao[60],bo[60],co[60],do[60],eo[60]);
    Round60_79 R61(ao[60],bo[60],co[60],do[60],eo[60],w[61],ao[61],bo[61],co[61],do[61],eo[61]);
    Round60_79 R62(ao[61],bo[61],co[61],do[61],eo[61],w[62],ao[62],bo[62],co[62],do[62],eo[62]);
    Round60_79 R63(ao[62],bo[62],co[62],do[62],eo[62],w[63],ao[63],bo[63],co[63],do[63],eo[63]);
    Round60_79 R64(ao[63],bo[63],co[63],do[63],eo[63],w[64],ao[64],bo[64],co[64],do[64],eo[64]);
    Round60_79 R65(ao[64],bo[64],co[64],do[64],eo[64],w[65],ao[65],bo[65],co[65],do[65],eo[65]);
    Round60_79 R66(ao[65],bo[65],co[65],do[65],eo[65],w[66],ao[66],bo[66],co[66],do[66],eo[66]);
    Round60_79 R67(ao[66],bo[66],co[66],do[66],eo[66],w[67],ao[67],bo[67],co[67],do[67],eo[67]);
    Round60_79 R68(ao[67],bo[67],co[67],do[67],eo[67],w[68],ao[68],bo[68],co[68],do[68],eo[68]);
    Round60_79 R69(ao[68],bo[68],co[68],do[68],eo[68],w[69],ao[69],bo[69],co[69],do[69],eo[69]);
    Round60_79 R70(ao[69],bo[69],co[69],do[69],eo[69],w[70],ao[70],bo[70],co[70],do[70],eo[70]);
    Round60_79 R71(ao[70],bo[70],co[70],do[70],eo[70],w[71],ao[71],bo[71],co[71],do[71],eo[71]);
    Round60_79 R72(ao[71],bo[71],co[71],do[71],eo[71],w[72],ao[72],bo[72],co[72],do[72],eo[72]);
    Round60_79 R73(ao[72],bo[72],co[72],do[72],eo[72],w[73],ao[73],bo[73],co[73],do[73],eo[73]);
    Round60_79 R74(ao[73],bo[73],co[73],do[73],eo[73],w[74],ao[74],bo[74],co[74],do[74],eo[74]);
    Round60_79 R75(ao[74],bo[74],co[74],do[74],eo[74],w[75],ao[75],bo[75],co[75],do[75],eo[75]);
    Round60_79 R76(ao[75],bo[75],co[75],do[75],eo[75],w[76],ao[76],bo[76],co[76],do[76],eo[76]);
    Round60_79 R77(ao[76],bo[76],co[76],do[76],eo[76],w[77],ao[77],bo[77],co[77],do[77],eo[77]);
    Round60_79 R78(ao[77],bo[77],co[77],do[77],eo[77],w[78],ao[78],bo[78],co[78],do[78],eo[78]);
    Round60_79 R79(ao[78],bo[78],co[78],do[78],eo[78],w[79],ao[79],bo[79],co[79],do[79],eo[79]);
    // Final Hash
    Final_hash F1(ph[0],ph[1],ph[2],ph[3],ph[4],ao[79],bo[79],co[79],do[79],eo[79],fh[0],fh[1],fh[2],fh[3],fh[4]);
assign digest_out = {fh[0],fh[1],fh[2],fh[3],fh[4]};
endmodule
