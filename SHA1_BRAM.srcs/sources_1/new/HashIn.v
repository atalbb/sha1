`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2017 12:58:31 PM
// Design Name: 
// Module Name: HashIn
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


module HashIn(input clk,
              input rst, 
               input en,
               input [7:0]addr, 
               input [31:0]di,
               output reg done,
               output reg [159:0]do);
               
reg [31:0] RAM [5:0]; // 32bit RAM x 16 slots= 512 bit(64 Byte) RAM
reg [7:0] read_addr;
always @(posedge clk or negedge rst)begin
  if(!rst) begin
    done <= 0;
    do <= 0;
  end 
  else if(en)begin
       RAM[addr] <= di;
       read_addr <= addr;
       if(addr >= 5) 
         do <= {RAM[1],RAM[2],RAM[3],RAM[4],RAM[5]};
       if(addr >= 6) 
         done <= 1;
   end
end

endmodule
