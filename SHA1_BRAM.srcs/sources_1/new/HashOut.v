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


module HashOut(input wire clk,
                input wire rst,
                input wire start,
                input wire[159:0]digest_in,
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
                temp <= digest_in;
                done <= 1;
                count <= count + 1;
            end else if(count == 1) begin
                hash_out = temp[159:128];
                count <= count + 1;
            end else if(count == 2)begin
                hash_out = temp[127:96];
                count <= count + 1;
            end else if(count == 3)begin
                hash_out = temp[95:64];
                count <= count + 1;
            end else if(count == 4)begin
                hash_out = temp[63:32];
                count <= count + 1;
            end else if(count == 5)begin
                hash_out = temp[31:0];
                count <= count + 1;
            end else if(count ==6) begin
                done <= 0;
            end
        end
     end      
end
//always@(*)begin
//    if(count == 1) 
//        temp = digest_in;
//    else if(count == 2)    
//        hash_out = temp[159:128];
////    else begin end
//    else if(count == 3)
//            hash_out = temp[127:96];
//    else if(count == 4)
//            hash_out = temp[95:64];
//    else if(count == 5)
//            hash_out = temp[63:32];
//    else if(count == 6)
//            hash_out = temp[31:0];
//   end
endmodule