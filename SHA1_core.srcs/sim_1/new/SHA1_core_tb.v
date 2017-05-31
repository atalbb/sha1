`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/30/2017 01:38:40 PM
// Design Name: 
// Module Name: SHA1_core_tb
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


module SHA1_core_tb(

    );
reg clk,rst;
//reg [511:0]blk;
wire done;
wire [159:0]digest;
SHA1_core S1(clk,rst,done,digest);
initial begin
    clk = 0;
    #5 rst = 0;
    #10 rst = 1;
    #6000 $finish;
end
always begin
    #5 clk = ~clk;
end
endmodule
