`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/07/2017 05:03:42 PM
// Design Name: 
// Module Name: W16_19
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


module W16_79(input [31:0]block_in1,
                  input [31:0]block_in2,
                  input [31:0]block_in3,
                  input [31:0]block_in4,
                  output [31:0]block_out  
    );
wire [31:0]block_temp;
assign block_temp = block_in1 ^ block_in2 ^ block_in3 ^ block_in4;
assign block_out =  {block_temp[30:0],block_temp[31]};   // block_temp << 1
endmodule
