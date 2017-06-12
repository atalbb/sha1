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

SHA1 S1(clk,rst,msgIn,13,msgOut);

initial begin
        clk = 0;
        rst = 1;
    #10 rst = 0;
    #5  rst = 1;
/* Assuming Big Endian*/
    #10 msgIn = ("abcd");
    #10 msgIn = ("efgh");
    #10 msgIn = ("ijkl");
    #10 msgIn = ("mnop");
    #10 msgIn = ("qrst");
    #10 msgIn = ("uvwx");
    #10 msgIn = ("yzAB");
    #10 msgIn = ("CDEF");
    #10 msgIn = ("GHIJ");
    #10 msgIn = ("KLMN");
    #10 msgIn = ("OPQR");
    #10 msgIn = ("STUV");
    #10 msgIn = ("WXYZ");
    
    #100 $stop;
end

always
   #5 clk = ~clk;
    
    

endmodule
