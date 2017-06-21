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
//wire [4:0]count;
reg [31:0]hashIn;
wire hashInDone;
wire [159:0]hashInDo;
top T1(clk,rst,counterEn,hashIn,hashInDone,hashInDo);

//counter C1(clk,rst,counterEn,count);
//HashIn H1(clk,rst,counterEn,count,hashIn,hashInDone,hashInDo);
initial begin
    clk  = 0;
    rst = 1;
    counterEn = 0;
    #60 rst = 0;
    #60 rst = 1;
    counterEn =1;
    hashIn = 32'h67452301;
    #10 hashIn = 32'hefcdab89;
    #10 hashIn = 32'h98badcfe;
    #10 hashIn = 32'h10325476;
    #10 hashIn = 32'hc3d2e1f0;
    #40 $finish;   
end
always
    #5 clk = ~clk;
endmodule
