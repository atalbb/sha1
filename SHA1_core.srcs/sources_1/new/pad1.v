`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2017 05:15:33 PM
// Design Name: 
// Module Name: pad1
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


module pad1(input wire [511:0]data,
            input wire [9:0]data_len_bits,
            output wire [511:0]new_data,
            output wire [9:0]new_data_len_bits    
    );
wire [511:0]temp;
assign temp = data;
assign  new_data = temp | (1<<(511-data_len_bits));
assign new_data_len_bits = data_len_bits + 1;
endmodule
