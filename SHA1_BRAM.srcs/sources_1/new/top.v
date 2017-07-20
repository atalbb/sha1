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
           input wire ready,
           output TxD,
           output led0,
           output [7:0]ledout
           );
           
wire Hdone;
wire [159:0]Hdo;
wire [511:0]Mdo;
wire [31:0]hashInBRAMOUT;
wire [7:0]hashAddr;
wire digestDone;
wire [159:0]digest;
counter C0(clk,rst,enHashIn,hashAddr);
blk_mem_gen_0 B0(clk,enHashIn,0,hashAddr,32'h0,hashInBRAMOUT);//BRAM for HashIn
HashMsgIn HM1(clk,rst,enHashIn,hashAddr,hashInBRAMOUT,Hdone,Hdo,Mdo);
core_logic SHA1(clk,rst,Hdone,Hdo,Mdo,digestDone,digest,led0,ledout);//,led1);
uart_tx U1(clk,rst,digest,ready,TxD);

endmodule


