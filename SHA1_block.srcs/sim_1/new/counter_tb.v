`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2017 12:45:04 PM
// Design Name: 
// Module Name: counter_tb
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


module counter_tb(

    );
reg clk,rst,counterEn;
wire [9:0]count;
counter C1(clk,rst,counterEn,count);
initial begin
    clk  = 0;
    rst = 1;
    counterEn = 0;
    #10 rst = 0;
    #10 rst = 1;
    counterEn =1;
    #100 $finish;   
end
always
    #5 clk = ~clk;
endmodule
