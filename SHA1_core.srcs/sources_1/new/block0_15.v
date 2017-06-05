`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2017 07:19:25 PM
// Design Name: 
// Module Name: block0_15
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


module W0_15(input wire [511:0]w,
             output wire [31:0]w0,
             output wire [31:0]w1,
             output wire [31:0]w2,
             output wire [31:0]w3,
             output wire [31:0]w4,
             output wire [31:0]w5,
             output wire [31:0]w6,
             output wire [31:0]w7,
             output wire [31:0]w8,
             output wire [31:0]w9,
             output wire [31:0]w10,
             output wire [31:0]w11,
             output wire [31:0]w12,
             output wire [31:0]w13,
             output wire [31:0]w14,
             output wire [31:0]w15   
);

assign w0 = w[511:480];
assign w1 = w[479:448];
assign w2 = w[447:416];
assign w3 = w[415:384];
assign w4 = w[383:352];
assign w5 = w[351:320];
assign w6 = w[319:288];
assign w7 = w[287:256];
assign w8 = w[255:224];
assign w9 = w[223:192];
assign w10 = w[191:160];
assign w11 = w[159:128];
assign w12 = w[127:96];
assign w13 = w[95:64];
assign w14 = w[63:32];
assign w15 = w[31:0];
endmodule
