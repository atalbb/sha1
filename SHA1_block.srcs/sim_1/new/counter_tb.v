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
reg clk,rst,HashCounterEn,MsgCounterEn;
reg [31:0]hashIn,msgIn;
reg [9:0]MsgLenBits;
wire DONE;
wire [31:0]OUT;
//wire hashInDone,msgInDone;
//wire [159:0]hashInDo;
//wire [511:0]MsgInDo;
//top T1(clk,rst,HashCounterEn,hashIn,hashInDone,hashInDo,MsgCounterEn,msgIn,msgInDone,MsgInDo);
top T1(clk,rst,HashCounterEn,hashIn,MsgCounterEn,MsgLenBits,msgIn,DONE,OUT);

initial begin
    clk  = 0;
    rst = 1;
    HashCounterEn = 0;
    MsgCounterEn = 0;
    hashIn = 0;
    msgIn = 0;
    MsgLenBits = 0;
    #100 rst = 0;
    #100 rst = 1;
        MsgLenBits = 24;
        HashCounterEn =1;
        hashIn = 32'h67452301;
    #10 hashIn = 32'hefcdab89;
    #10 hashIn = 32'h98badcfe;
    #10 hashIn = 32'h10325476;
    #10 hashIn = 32'hc3d2e1f0;
    #10 MsgCounterEn = 1;
        msgIn = 32'h61626300;
    #10 msgIn = 0;
    #10 msgIn = 0;
    #10 msgIn = 0;
    #10 msgIn = 0;
    #10 msgIn = 0;
    #10 msgIn = 0;
    #10 msgIn = 0;
    #10 msgIn = 0;
    #10 msgIn = 0;
    #10 msgIn = 0;
    #10 msgIn = 0;
    #10 msgIn = 0;
    #10 msgIn = 0;
    #10 msgIn = 0;
    #10 msgIn = 0;
    #5000 $finish;   
end
always
    #5 clk = ~clk;
endmodule
