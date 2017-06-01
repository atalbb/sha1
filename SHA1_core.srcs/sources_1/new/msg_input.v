`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2017 05:33:19 PM
// Design Name: 
// Module Name: msg_input
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


module msg_input(output wire[511:0]msg,
                 output wire[9:0]msg_len
    );
wire [511:0]temp;
assign temp = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
assign msg = temp << (512-416);// 24 because "abc" has 24 
assign msg_len = 416;//change this according to input bits for now
endmodule
