`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2017 11:22:07 AM
// Design Name: 
// Module Name: init_H01234
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


module init_H01234( //output wire [31:0]curr_h0,
                    //output wire [31:0]curr_h1,
                    //output wire [31:0]curr_h2,
                    //output wire [31:0]curr_h3,
                    //output wire [31:0]curr_h4
                    output wire [31:0]prev_h0,
                    output wire [31:0]prev_h1,
                    output wire [31:0]prev_h2,
                    output wire [31:0]prev_h3,
                    output wire [31:0]prev_h4
                    );
assign prev_h0 = 32'h67452301;
assign prev_h1 = 32'hefcdab89;
assign prev_h2 = 32'h98badcfe;
assign prev_h3 = 32'h10325476;
assign prev_h4 = 32'hc3d2e1f0;

//assign prev_h0 = curr_h0;
//assign prev_h1 = curr_h1;
//assign prev_h2 = curr_h2;
//assign prev_h3 = curr_h3;
//assign prev_h4 = curr_h4;
endmodule
