`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2017 04:12:58 PM
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


module Final_hash(  input wire [31:0]prev_hash0,
                    input wire [31:0]prev_hash1,
                    input wire [31:0]prev_hash2,
                    input wire [31:0]prev_hash3,
                    input wire [31:0]prev_hash4,
                    input wire [31:0]final_A,
                    input wire [31:0]final_B,
                    input wire [31:0]final_C,
                    input wire [31:0]final_D,
                    input wire [31:0]final_E,
                    output wire [31:0]curr_hash0,
                    output wire [31:0]curr_hash1,
                    output wire [31:0]curr_hash2,
                    output wire [31:0]curr_hash3,
                    output wire [31:0]curr_hash4
    );
assign curr_hash0 = prev_hash0 + final_A;
assign curr_hash1 = prev_hash1 + final_B;
assign curr_hash2 = prev_hash2 + final_C;
assign curr_hash3 = prev_hash3 + final_D;
assign curr_hash4 = prev_hash4 + final_E; 
endmodule
