`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/30/2017 01:38:40 PM
// Design Name: 
// Module Name: SHA1_core_tb
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


module SHA1_core_tb(

    );
reg clk,rst;
reg i_hash_in_start;
reg [31:0]i_hash_in;
wire [159:0]i_hash_out;
wire i_hash_out_done;
wire digest_done;
wire [159:0]digest;
wire f_hash_done;
wire [31:0]f_hash_out;
Initial_Hash_In I1(clk,rst,i_hash_in_start,i_hash_in,i_hash_out_done,i_hash_out);
SHA1_core S1(clk,rst,i_hash_out_done,i_hash_out,digest_done,digest);
SHA1_out O1(clk,rst,digest_done,digest,f_hash_done,f_hash_out);
initial begin
    clk = 0;
    #5 rst = 0;
    #10 rst = 1;
    #10 i_hash_in_start = 1;
        i_hash_in = 32'h67452301;
    #10 i_hash_in = 32'hefcdab89;
    #10 i_hash_in = 32'h98badcfe;
    #10 i_hash_in = 32'h10325476;
    #10 i_hash_in = 32'hc3d2e1f0;    
    #6000 $finish;
end
always begin
    #5 clk = ~clk;
end
endmodule
