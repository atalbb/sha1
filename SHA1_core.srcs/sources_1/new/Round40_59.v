`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2017 03:32:50 PM
// Design Name: 
// Module Name: Round40_59
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


module Round40_59(input wire [31:0]ain,
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
parameter k = 32'h8f1bbcdc;
assign eout = din;
assign dout = cin;
assign cout = {bin[1:0],bin[31:2]};
assign bout = ain;
assign aout = {ain[26:0],ain[31:27]} + ((bin & cin)|(bin & din)|(cin & din)) + ein + w + k; 
endmodule
