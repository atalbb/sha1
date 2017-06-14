`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2017 06:08:03 PM
// Design Name: 
// Module Name: Initial_hash
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


module Initial_Hash_In(input clk,
                    input rst,
                    input start,
                    input [31:0]initial_hash_in,
                    output reg done,
                    output reg [159:0]initial_hash_out
    );
//reg done;
//reg [159:0]initial_hash_out;
reg [2:0]count;

always@(posedge clk or negedge rst) begin
         if(rst == 0) begin
            done <= 0;
            initial_hash_out <= 0;
            count <= 0;
         end else begin
          if(start)
              if(count < 6)
                count <= count + 1;
         end
end
always@(count) begin
    if(count == 1) begin
        initial_hash_out[159:128] = initial_hash_in;
    end
    else if(count == 2)
        initial_hash_out[127:96] = initial_hash_in;
    else if(count == 3)
        initial_hash_out[95:64] = initial_hash_in;
    else if(count == 4)
        initial_hash_out[63:32] = initial_hash_in;
    else if(count == 5)
        initial_hash_out[31:0] = initial_hash_in;
    else if (count == 6) begin
        done = 1;
    end
    else begin end

end
endmodule
