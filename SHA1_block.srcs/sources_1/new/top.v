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
            input cEnable,
            input [31:0]hashIn,
            output hashInDone,
            output [159:0]hashInDo

    );
wire [4:0]count;
counter C1(clk,rst,cEnable,count);
HashIn H1(clk,rst,cEnable,count,hashIn,hashInDone,hashInDo);
endmodule
