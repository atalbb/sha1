`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2017 11:16:18 AM
// Design Name: 
// Module Name: init_ABCDE
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


module init_ABCDE(input wire [31:0]h0,
                  input wire [31:0]h1,
                  input wire [31:0]h2,
                  input wire [31:0]h3,
                  input wire [31:0]h4,
                  output wire [31:0]a,
                  output wire [31:0]b,
                  output wire [31:0]c,
                  output wire [31:0]d,
                  output wire [31:0]e
    );
assign a = h0;
assign b = h1;
assign c = h2;
assign d = h3;
assign e = h4;
endmodule
