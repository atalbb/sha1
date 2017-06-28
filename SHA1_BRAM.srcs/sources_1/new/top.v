`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/28/2017 05:56:32 PM
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


module top(input clk,
           input rst,
           input enHashIn,
           input enMsgIn,
           output [31:0]hashInDo,
           output [31:0]MsgInDo
           );
wire [7:0]hashAddr,msgInAddr;
counter C0(clk,rst,enHashIn,hashAddr);
blk_mem_gen_0 B0(clk,enHashIn,0,hashAddr,32'h0,hashInDo);//BRAM for HashIn
counter C1(clk,rst,enMsgIn,msgInAddr);
blk_mem_gen_1 B1(clk,enMsgIn,0,msgInAddr,32'h0,MsgInDo);//BRAM for MsgIn;
endmodule
