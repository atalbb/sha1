`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2017 05:18:39 PM
// Design Name: 
// Module Name: SHA1_out
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


module HashOut(input clk,
                input rst,
                input start,
                input [159:0]digest_in,
                output reg done,
                output reg [31:0]hash_out
    );
reg [159:0]temp;
parameter RESET = 0;
parameter HASH_READ = 1;
parameter HASH_OUT0 = 2;
parameter HASH_OUT1 = 3;
parameter HASH_OUT2 = 4;
parameter HASH_OUT3 = 5;
parameter HASH_OUT4 = 6;
parameter HASH_OUT_DONE = 7;
reg [3:0] curr_state, next_state;
reg [3:0] flag;
reg [3:0]count;
    
always@(posedge clk or negedge rst) begin
     if(!rst) begin
        count <= 0;
        done <= 0;
     end else begin
        if(start) begin
            if(count == 0) begin
                done <= 1;
                count <= count + 1;
            end else if(count < 6) 
                count <= count + 1;
            end
     end      
end
always@(*)begin
    if(count == 1) 
        hash_out = digest_in[159:128];
    else if(count == 2)
            hash_out = digest_in[127:96];
    else if(count == 3)
            hash_out = digest_in[95:64];
    else if(count == 4)
            hash_out = digest_in[63:32];
    else if(count == 5)
            hash_out = digest_in[31:0];
    end
endmodule