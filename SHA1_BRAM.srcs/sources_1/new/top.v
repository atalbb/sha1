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
           //output digestDone,
           //output [159:0]digest
           output HashDone,
           output [31:0]Out
           );
           
wire Hdone;
wire [159:0]Hdo;
wire [511:0]Mdo;
wire [31:0]hashInBRAMOUT;
wire [31:0]hashAddr;
wire digestDone;
wire [159:0]digest;
counter C0(clk,rst,enHashIn,hashAddr);
blk_mem_gen_0 B0(clk,enHashIn,0,hashAddr,32'h0,hashInBRAMOUT);//BRAM for HashIn
HashMsgIn HM1(clk,rst,enHashIn,hashAddr,hashInBRAMOUT,Hdone,Hdo,Mdo);
core_logic SHA1(clk,rst,Hdone,Hdo,Mdo,digestDone,digest);
HashOut HO1(clk,rst,digestDone,digest,HashDone,Out);
endmodule


