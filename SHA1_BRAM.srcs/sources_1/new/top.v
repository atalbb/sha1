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
           output Hdone,
           output [159:0]Hdo,
           output Mdone,
           output [511:0]Mdo
           );
        
wire [31:0]hashInBRAMOUT;
wire [31:0]MsgInBRAMOUT;
wire [7:0]hashAddr,msgInAddr;
counter C0(clk,rst,enHashIn,hashAddr);
blk_mem_gen_0 B0(clk,enHashIn,0,hashAddr,32'h0,hashInBRAMOUT);//BRAM for HashIn
counter C1(clk,rst,enMsgIn,msgInAddr);
blk_mem_gen_1 B1(clk,enMsgIn,0,msgInAddr,32'h0,MsgInBRAMOUT);//BRAM for MsgIn;
HashIn H1(clk,rst,enHashIn,hashAddr,hashInBRAMOUT,Hdone,Hdo);
MsgIn M1(clk,rst,enMsgIn,msgInAddr,MsgInBRAMOUT,Mdone,Mdo);
endmodule
