`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2017 01:18:07 PM
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
            input chEnable,
            input [31:0]hashIn,
            output hashInDone,
            output [159:0]hashInDo,
            input cmEnable,
            input [31:0]msgIn,
            output msgInDone,
            output [511:0]msgInDo

    );
wire [4:0]hashCount;
wire [4:0]msgCount;
counter C1(clk,rst,chEnable,hashCount);
counter C2(clk,rst,cmEnable,msgCount);
HashIn H1(clk,rst,chEnable,hashCount,hashIn,hashInDone,hashInDo);
MsgIn M1(clk,rst,cmEnable,msgCount,msgIn,msgInDone,msgInDo);
endmodule
