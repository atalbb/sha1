`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2017 07:25:49 PM
// Design Name: 
// Module Name: block0_15_tb
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


module W0_15_tb(

    );

wire [31:0]w[79:0];
wire [31:0]h[4:0];
wire [31:0]ai[79:0],bi[79:0],ci[79:0],di[79:0],ei[79:0];
wire [31:0]ao[79:0],bo[79:0],co[79:0],do[79:0],eo[79:0];
//wire [31:0]a,b,c,d,e;
init_H01234 H(h[0],h[1],h[2],h[3],h[4]);
init_ABCDE  A1(h[0],h[1],h[2],h[3],h[4],ai[0],bi[0],ci[0],di[0],ei[0]);
W0_15 W(w[0],w[1],w[2],w[3],w[4],w[5],w[6],w[7],w[8],w[9],w[10],w[11],w[12],w[13],w[14],w[15]);
W16_79 W16(w[13],w[8],w[2],w[0],w[16]);
Round0_19 R0(ai[0],bi[0],ci[0],di[0],ei[0],w[0],ao[0],bo[0],co[0],do[0],eo[0]);

endmodule
