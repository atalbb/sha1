`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/21/2017 09:28:45 AM
// Design Name: 
// Module Name: MsgIn
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


module MsgIn(input clk,
              input rst, 
               input en,
               input [7:0]addr, 
               input [31:0]di,
               output reg done,
               output reg [511:0]do
               );
               
reg [31:0] RAM [16:0]; // 32bit RAM x 16 slots= 512 bit(64 Byte) RAM
reg [7:0] read_addr;
always @(posedge clk or negedge rst)begin
   if(!rst) begin
        done <= 0;
        do <= 0;
   end
   else if (en)begin
       RAM[addr] <= di;
       read_addr <= addr;
       done <=  0;
       if(addr >= 16) 
         do <= {RAM[1],RAM[2],RAM[3],RAM[4],RAM[5],RAM[6],RAM[7],RAM[8],RAM[9],RAM[10],RAM[11],RAM[12],RAM[13],RAM[14],RAM[15],RAM[16]};
       if(addr >= 17) 
         done <= 1;
   end
end
endmodule