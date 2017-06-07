`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/07/2017 05:50:29 PM
// Design Name: 
// Module Name: Final_hash
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


module Final_hash(  input  [31:0]prev_hash0,
                    input  [31:0]prev_hash1,
                    input  [31:0]prev_hash2,
                    input  [31:0]prev_hash3,
                    input  [31:0]prev_hash4,
                    input  [31:0]final_A,
                    input  [31:0]final_B,
                    input  [31:0]final_C,
                    input  [31:0]final_D,
                    input  [31:0]final_E,
                    output [31:0]curr_hash0,
                    output [31:0]curr_hash1,
                    output [31:0]curr_hash2,
                    output [31:0]curr_hash3,
                    output [31:0]curr_hash4

    );
assign curr_hash0 = prev_hash0 + final_A;
assign curr_hash1 = prev_hash1 + final_B;
assign curr_hash2 = prev_hash2 + final_C;
assign curr_hash3 = prev_hash3 + final_D;
assign curr_hash4 = prev_hash4 + final_E; 


endmodule
