`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2017 04:22:07 PM
// Design Name: 
// Module Name: SHA1_tb
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


module SHA1_tb(

    );
reg clk,rst;
reg [31:0]msgIn;
wire [31:0] msgOut;

SHA1 S1(clk,rst,msgIn,3,msgOut);

initial begin
        clk = 0;
        rst = 0;
    #10 rst = 1;
    #5  rst = 0;
    msgIn = ("abc")<<8;
    #10 $stop;
end

always
   #5 clk = ~clk;
    
    

endmodule
