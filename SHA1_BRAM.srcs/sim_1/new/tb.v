`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/28/2017 05:59:29 PM
// Design Name: 
// Module Name: tb
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


module tb(

    );
parameter HALF_CLK = 5;
parameter FULL_CLK = 10;
reg clk,enbh,enbm;
reg [7:0]read_addr;
reg rst;
//reg [31:0]msgLenBits;
//wire [31:0]outH,outM;
//wire HashInDone,MsgInDone;
//wire [159:0]HashInDo;
//wire [511:0]MsgInDo;
wire DONE;
wire [159:0]OUT;

//module top(input clk,
//           input rst,
//           input enHashIn,
//           input enMsgIn,
//           output digestDone,
//           output [159:0]digest

//           );
top T(clk,rst,enbh,enbm,24,DONE,OUT);
initial begin
    clk = 0;
    rst = 1;
    enbh = 0;
    enbm = 0;
    read_addr = 0;
    #100 rst = 0;
    #100 rst = 1;
    #110 enbh = 1;
    #FULL_CLK read_addr = 0;
    #FULL_CLK read_addr = 1;
    #FULL_CLK read_addr = 2;
    #FULL_CLK read_addr = 3;
    #FULL_CLK read_addr = 4;
    //#FULL_CLK enbh = 0;
    #FULL_CLK enbm = 1;
    #FULL_CLK read_addr = 0;
    #FULL_CLK read_addr = 1;
    #FULL_CLK read_addr = 2;
    #FULL_CLK read_addr = 3;
    #FULL_CLK read_addr = 4;
    #FULL_CLK read_addr = 5;
    #FULL_CLK read_addr = 6;
    #FULL_CLK read_addr = 7;
    #FULL_CLK read_addr = 8;
    #FULL_CLK read_addr = 9;
    #FULL_CLK read_addr = 10;
    #FULL_CLK read_addr = 11;
    #FULL_CLK read_addr = 12;
    #FULL_CLK read_addr = 13;
    #FULL_CLK read_addr = 14;
    #FULL_CLK read_addr = 15;
    //#FULL_CLK enbm = 1;

    
              
    #100 $finish;
end
always
    #HALF_CLK clk = ~clk;

endmodule
