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
parameter FULL_CLK = 2*HALF_CLK;
parameter _5_FULL_CLK = 5 * FULL_CLK;
parameter _16_FULL_CLK = 16 * FULL_CLK;
parameter _17_FULL_CLK = 17 * FULL_CLK;
//parameter
reg clk,enb,enbh;
reg [7:0]read_addr;
reg rst;
wire DONE;
wire [31:0]OUT;


top T(clk,rst,enbh,440,DONE,OUT);
initial begin
    clk = 0;
    rst = 1;
    enbh = 0;
    #100 rst = 0;
    #100 rst = 1;
    #100 enbh = 1;
    #_5_FULL_CLK //enbm = 1; // 5 clks to read Initial Hash
    #_16_FULL_CLK // 16 clks to read Data
    #_17_FULL_CLK// 16 clocks for SHA1 conversiona & serializing to five 32-bit data
    #FULL_CLK  $finish; // 1 clk for done signal to go down
end

always
    #HALF_CLK clk = ~clk;

endmodule
