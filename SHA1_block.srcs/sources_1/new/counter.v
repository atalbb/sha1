`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2017 12:39:20 PM
// Design Name: 
// Module Name: counter
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


module counter(input clk,
                input rst,
                 input en,
                 output reg [9:0]out
    );
always @(posedge clk or negedge rst)
 if (!rst) begin
   out <= 10'b0 ;
 end else if (en) begin
   out <= out + 1;
 end
endmodule
