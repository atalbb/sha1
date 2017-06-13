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
reg [31:0]hashIn;
wire [31:0] msgOut;

SHA1 S1(clk,rst,hashIn,msgIn,13,msgOut);

initial begin
        clk = 0;
        rst = 1;
    #10 rst = 0;
    #5  rst = 1;
/* Assuming Big Endian*/
    #10 msgIn = ("abcd");
        hashIn = 32'h67452301;
    #10 msgIn = ("efgh");
        hashIn = 32'hefcdab89;
    #10 msgIn = ("ijkl");
        hashIn = 32'h98badcfe;
    #10 msgIn = ("mnop");
        hashIn = 32'h10325476;
    #10 msgIn = ("qrst");
        hashIn = 32'hc3d2e1f0;    
    #10 msgIn = ("uvwx");
    #10 msgIn = ("yzAB");
    #10 msgIn = ("CDEF");
    #10 msgIn = ("GHIJ");
    #10 msgIn = ("KLMN");
    #10 msgIn = ("OPQR");
    #10 msgIn = ("STUV");
    #10 msgIn = ("WXYZ");
    
    #150 $stop;
end

always
   #5 clk = ~clk;
    
    

endmodule
