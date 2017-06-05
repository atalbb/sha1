`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2017 07:25:49 PM
// Design Name: 
// Module Name: block0_15_tb
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


module W0_15_tb(

    );
   // wire [511:0]msg="abc";
    //wire [9:0] msg_length_bits= 24;
    wire [511:0]msg = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    wire [9:0] msg_length_bits= 416;
    wire [159:0]digest;
    top T(msg,msg_length_bits,digest);
endmodule
