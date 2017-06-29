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




module top(input wire clk,
           input wire rst,
           input wire enHashIn,
           //input wire enMsgIn,
           input wire [31:0]msgLenBits,
           output wire HashDone,
           output wire [31:0]Out
           );
           
wire Hdone;
wire [159:0]Hdo;
wire Mdone;
wire [511:0]Mdo;
wire [31:0]hashInBRAMOUT;
//wire [31:0]MsgInBRAMOUT;
wire [7:0]hashAddr;//,msgInAddr;
wire digestDone;
wire [159:0]digest;
counter C0(clk,rst,enHashIn,hashAddr);
blk_mem_gen_0 B0(clk,enHashIn,0,hashAddr,32'h0,hashInBRAMOUT);//BRAM for HashIn
//counter C1(clk,rst,enMsgIn,msgInAddr);
//blk_mem_gen_1 B1(clk,enMsgIn,0,msgInAddr,32'h0,MsgInBRAMOUT);//BRAM for MsgIn;
HashIn HI1(clk,rst,enHashIn,hashAddr,hashInBRAMOUT,Hdone,Hdo);
MsgIn M1(clk,rst,Hdone,hashAddr,hashInBRAMOUT,Mdone,Mdo);
SHA1Core SH1(clk,rst,Hdone,Hdo,Mdone,msgLenBits,Mdo,digestDone,digest);
HashOut HO1(clk,rst,digestDone,digest,HashDone,Out);
endmodule

//module top(input wire clk,
//           input wire rst,
//           input en,
//           input[7:0]addr,
//           output wire [31:0]Out
//            );
//blk_mem_gen_0 B1(clk,en,0,addr,32'h0,Out);

//endmodule
