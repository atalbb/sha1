`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2017 10:58:46 AM
// Design Name: 
// Module Name: Func0
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


module Round0_19(input wire [31:0]ain,
             input wire [31:0]bin,
             input wire [31:0]cin,
             input wire [31:0]din,   
             input wire [31:0]ein,
             input wire [31:0]w,
             output wire [31:0]aout,
             output wire [31:0]bout,
             output wire [31:0]cout,
             output wire [31:0]dout,   
             output wire [31:0]eout
    );
//wire [31:0]temp;
parameter k = 32'h5a827999;
//{a[0][26:0],a[0][31:27]} + ((b[0] & c[0]) | ((~b[0]) & d[0])) + e[0] + w[0] + k[0] ;
//{b[1][1:0],b[1][31:2]}; 
//assign temp = {ain[26:0],ain[31:27]} + ((bin & cin) | ((~bin) & din)) + ein + w + k;
assign eout = din;
assign dout = cin;
assign cout = {bin[1:0],bin[31:2]};
assign bout = ain;
assign aout = {ain[26:0],ain[31:27]} + ((bin & cin) | ((~bin) & din)) + ein + w + k; 

endmodule
