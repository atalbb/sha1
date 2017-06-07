`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/07/2017 05:23:46 PM
// Design Name: 
// Module Name: R20_39
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


module Round20_39(input  [31:0]ain,
             input  [31:0]bin,
             input  [31:0]cin,
             input  [31:0]din,   
             input  [31:0]ein,
             input  [31:0]w,
             output  [31:0]aout,
             output  [31:0]bout,
             output  [31:0]cout,
             output  [31:0]dout,   
             output  [31:0]eout
    );
parameter k = 32'h6ed9eba1;
assign eout = din;
assign dout = cin;
assign cout = {bin[1:0],bin[31:2]};
assign bout = ain;
assign aout = {ain[26:0],ain[31:27]} + (bin ^ cin ^ din) + ein + w + k; 

endmodule
