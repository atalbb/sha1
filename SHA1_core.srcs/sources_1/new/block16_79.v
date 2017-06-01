`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2017 07:47:39 PM
// Design Name: 
// Module Name: block16_79
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


module W16_79(input wire[31:0]block_in1,
                  input wire[31:0]block_in2,
                  input wire[31:0]block_in3,
                  input wire[31:0]block_in4,
                  output wire[31:0]block_out  
    );
wire [31:0]block_temp;
assign block_temp = block_in1 ^ block_in2 ^ block_in3 ^ block_in4;
assign block_out =  {block_temp[30:0],block_temp[31]};   // block_temp << 1
endmodule
