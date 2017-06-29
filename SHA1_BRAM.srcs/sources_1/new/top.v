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


//module top(input clk,
//           input rst,
//           input hashStart,
//           input [159:0]iHashIn,
//           input msgStart,
//           input [31:0]msgLenBits,
//           input [511:0]msgIn,
//           output digestDone,
//           output [159:0]digest
////           output Hdone,
////           output [159:0]Hdo,
////           output Mdone,
////           output [511:0]Mdo
//           );
//module SHA1Core(
//                 input clk,
//                 input rst,
//                 input initial_hash_start,
//                 input [159:0]initial_hash,
//                 input msg_in_start,
//                 input [9:0]msg_len,
//                 input [511:0]msg,
//                 output reg digest_done,
//                 output reg [159:0]digest_out
//               );

module top(input clk,
           input rst,
           input enHashIn,
           input enMsgIn,
           input [31:0]msgLenBits,
           output digestDone,
           output [159:0]digest
//           output Hdone,
//           output [159:0]Hdo,
//           output Mdone,
//           output [511:0]Mdo
           );
           
wire Hdone;
wire [159:0]Hdo;
wire Mdone;
wire [511:0]Mdo;
wire [31:0]hashInBRAMOUT;
wire [31:0]MsgInBRAMOUT;
wire [7:0]hashAddr,msgInAddr;
counter C0(clk,rst,enHashIn,hashAddr);
blk_mem_gen_0 B0(clk,enHashIn,0,hashAddr,32'h0,hashInBRAMOUT);//BRAM for HashIn
counter C1(clk,rst,enMsgIn,msgInAddr);
blk_mem_gen_1 B1(clk,enMsgIn,0,msgInAddr,32'h0,MsgInBRAMOUT);//BRAM for MsgIn;
HashIn H1(clk,rst,enHashIn,hashAddr,hashInBRAMOUT,Hdone,Hdo);
MsgIn M1(clk,rst,enMsgIn,msgInAddr,MsgInBRAMOUT,Mdone,Mdo);
SHA1Core SH1(clk,rst,Hdone,Hdo,Mdone,msgLenBits,Mdo,digestDone,digest);
endmodule
