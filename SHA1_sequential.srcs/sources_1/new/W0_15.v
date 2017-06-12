`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2017 03:11:23 PM
// Design Name: 
// Module Name: W0_15
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


module SHA1( input clk,
              input rst,
              input [31:0]msg_in,
              input [3:0]msg_in_len,// in words(32-bits)
              output [31:0]msg_out
    );
parameter idle = 4'b000;
parameter reset = 4'b001;
parameter read_32bit_msgs = 4'b010;
parameter append_w0_15 = 4'b011;
parameter append_w16_79 = 4'b100;
parameter f0_19 = 4'b101;

reg [4:0]cur_state,nxt_state;
reg [4:0]state_done;
reg [31:0]msg_out;
reg [31:0]h[4:0];
reg [31:0]w[79:0];
reg [31:0]wt[63:0];
reg [31:0]k;
reg [31:0]RAM[15:0];
reg [4:0]RAM_index;
reg [511:0]temp1,temp2;

initial 
    state_done = idle;

always@(posedge clk or negedge rst) begin
    if(!rst) 
        cur_state <= reset;
    else begin
        cur_state <= nxt_state;
        if(RAM_index <= msg_in_len)
            RAM_index <= RAM_index + 1;
    end
end

always@(*)begin
    if(state_done == reset)
        nxt_state = read_32bit_msgs;
    else if(state_done == read_32bit_msgs)
        nxt_state = append_w0_15;
    else if(state_done == append_w0_15)
        nxt_state = append_w16_79;
    else if(state_done == append_w16_79)
        nxt_state = f0_19;
    else begin end
end

always@(*)begin
    if(cur_state == reset) begin
        k = 0;
        h[0] = 0; h[1] = 0; h[2] = 0; h[3] = 0;h[4] = 0;
        w[0] = 0;w[1] = 0;w[2] = 0;w[3] = 0;w[4] = 0;w[5] = 0;w[6] = 0;w[7] = 0;w[8] = 0;w[9] = 0;
        w[10] = 0;w[11] = 0;w[12] = 0;w[13] = 0;w[14] = 0;w[15] = 0;w[16] = 0;w[17] = 0;w[18] = 0;w[19] = 0;
        w[20] = 0;w[21] = 0;w[22] = 0;w[23] = 0;w[24] = 0;w[25] = 0;w[26] = 0;w[27] = 0;w[28] = 0;w[29] = 0;
        w[30] = 0;w[31] = 0;w[32] = 0;w[33] = 0;w[34] = 0;w[35] = 0;w[36] = 0;w[37] = 0;w[38] = 0;w[39] = 0;
        w[40] = 0;w[41] = 0;w[42] = 0;w[43] = 0;w[44] = 0;w[45] = 0;w[46] = 0;w[47] = 0;w[48] = 0;w[49] = 0;
        w[50] = 0;w[51] = 0;w[52] = 0;w[53] = 0;w[54] = 0;w[55] = 0;w[56] = 0;w[57] = 0;w[58] = 0;w[59] = 0;
        w[60] = 0;w[61] = 0;w[62] = 0;w[63] = 0;w[64] = 0;w[65] = 0;w[66] = 0;w[67] = 0;w[68] = 0;w[69] = 0;
        w[70] = 0;w[71] = 0;w[72] = 0;w[73] = 0;w[74] = 0;w[75] = 0;w[76] = 0;w[77] = 0;w[78] = 0;w[79] = 0;
        RAM[0] = 0;RAM[1] = 0;RAM[2] = 0;RAM[3] = 0;RAM[4] = 0;RAM[5] = 0;RAM[6] = 0;
        RAM[7] = 0;RAM[8] = 0;RAM[9] = 0;RAM[10] = 0;RAM[11] = 0;RAM[12] = 0;RAM[13] = 0;
        RAM[14] = 0;RAM[15] = 0;
        RAM_index = 0;
        state_done = reset;
    end else if(cur_state == read_32bit_msgs) begin
        if(RAM_index <= msg_in_len )
            RAM[RAM_index-1] = msg_in;
        else
            state_done = read_32bit_msgs;
    end else if(cur_state == append_w0_15) begin
//        // Assuming Big_endian
        temp1 = {RAM[0],RAM[1],RAM[2],RAM[3],RAM[4],RAM[5],RAM[6],RAM[7],RAM[8],RAM[9],RAM[10],RAM[11],RAM[12],RAM[13],RAM[14],RAM[15]};
        temp2 = temp1|(1<<(511-(msg_in_len*32)))|(msg_in_len*32);
        w[0] = temp2[511:480];
        w[1] = temp2[479:448];
        w[2] = temp2[447:416];
        w[3] = temp2[415:384];
        w[4] = temp2[383:352];
        w[5] = temp2[351:320];
        w[6] = temp2[319:288];
        w[7] = temp2[287:256];
        w[8] = temp2[255:224];
        w[9] = temp2[223:192];
        w[10] = temp2[191:160];
        w[11] = temp2[159:128];
        w[12] = temp2[127:96];
        w[13] = temp2[95:64];
        w[14] = temp2[63:32];
        w[15] = temp2[31:0];
        state_done = append_w0_15;
    end else if(cur_state == append_w16_79) begin
        wt[0] = w[13]^w[8]^w[2]^w[0];
        w[16] = {wt[0][30:0],wt[0][31]}; //wt << 1
        wt[1] = w[14]^w[9]^w[3]^w[1];
        w[17] = {wt[1][30:0],wt[1][31]};//wt << 1
        wt[2] = w[15]^w[10]^w[4]^w[2];
        w[18] = {wt[2][30:0],wt[2][31]};//wt << 1
        wt[3] = w[16]^w[11]^w[5]^w[3];
        w[19] = {wt[3][30:0],wt[3][31]};//wt << 1
        wt[4] = w[17]^w[12]^w[6]^w[4];
        w[20] = {wt[4][30:0],wt[4][31]};//wt << 1
        wt[5] = w[18]^w[13]^w[7]^w[5];
        w[21] = {wt[5][30:0],wt[5][31]};//wt << 1
        wt[6] = w[19]^w[14]^w[8]^w[6];
        w[22] = {wt[6][30:0],wt[6][31]};//wt << 1   
        wt[7] = w[20]^w[15]^w[9]^w[7];
        w[23] = {wt[7][30:0],wt[7][31]};//wt << 1  
        wt[8] = w[21]^w[16]^w[10]^w[8];
        w[24] = {wt[8][30:0],wt[8][31]};//wt << 1   
        wt[9] = w[22]^w[17]^w[11]^w[9];
        w[25] = {wt[9][30:0],wt[9][31]};//wt << 1   
        wt[10] = w[23]^w[18]^w[12]^w[10];
        w[26] = {wt[10][30:0],wt[10][31]};//wt << 1   
        wt[11] = w[24]^w[19]^w[13]^w[11];
        w[27] = {wt[11][30:0],wt[11][31]};//wt << 1   
        wt[12] = w[25]^w[20]^w[14]^w[12];
        w[28] = {wt[12][30:0],wt[12][31]};//wt << 1  
        wt[13] = w[26]^w[21]^w[15]^w[13];
        w[29] = {wt[13][30:0],wt[13][31]};//wt << 1  
        wt[14] = w[27]^w[22]^w[16]^w[14];
        w[30] = {wt[14][30:0],wt[14][31]};//wt << 1  
        wt[15] = w[28]^w[23]^w[17]^w[15];
        w[31] = {wt[15][30:0],wt[15][31]};//wt << 1  
        wt[16] = w[29]^w[24]^w[18]^w[16];
        w[32] = {wt[16][30:0],wt[16][31]};//wt << 1  
        wt[17] = w[30]^w[25]^w[19]^w[17];
        w[33] = {wt[17][30:0],wt[17][31]};//wt << 1  
        wt[18] = w[31]^w[26]^w[20]^w[18];
        w[34] = {wt[18][30:0],wt[18][31]};//wt << 1  
        wt[19] = w[32]^w[27]^w[21]^w[19];
        w[35] = {wt[19][30:0],wt[19][31]};//wt << 1  
        wt[20] = w[33]^w[28]^w[22]^w[20];
        w[36] = {wt[20][30:0],wt[20][31]};//wt << 1  
        wt[21] = w[34]^w[29]^w[23]^w[21];
        w[37] = {wt[21][30:0],wt[21][31]};//wt << 1  
        wt[22] = w[35]^w[30]^w[24]^w[22];
        w[38] = {wt[22][30:0],wt[22][31]};//wt << 1  
        wt[23] = w[36]^w[31]^w[25]^w[23];
        w[39] = {wt[23][30:0],wt[23][31]};//wt << 1  
        wt[24] = w[37]^w[32]^w[26]^w[24];
        w[40] = {wt[24][30:0],wt[24][31]};//wt << 1  
        wt[25] = w[38]^w[33]^w[27]^w[25];
        w[41] = {wt[25][30:0],wt[25][31]};//wt << 1  
        wt[26] = w[39]^w[34]^w[28]^w[26];
        w[42] = {wt[26][30:0],wt[26][31]};//wt << 1  
        wt[27] = w[40]^w[35]^w[29]^w[27];
        w[43] = {wt[27][30:0],wt[27][31]};//wt << 1  
        wt[28] = w[41]^w[36]^w[30]^w[28];
        w[44] = {wt[28][30:0],wt[28][31]};//wt << 1  
        wt[29] = w[42]^w[37]^w[31]^w[29];
        w[45] = {wt[29][30:0],wt[29][31]};//wt << 1  
        wt[30] = w[43]^w[38]^w[32]^w[30];
        w[46] = {wt[30][30:0],wt[30][31]};//wt << 1
        wt[31] = w[44]^w[39]^w[33]^w[31];
        w[47] = {wt[31][30:0],wt[31][31]};//wt << 1
        wt[32] = w[45]^w[40]^w[34]^w[32];
        w[48] = {wt[32][30:0],wt[32][31]};//wt << 1
        wt[33] = w[46]^w[41]^w[35]^w[33];
        w[49] = {wt[33][30:0],wt[33][31]};//wt << 1
        wt[34] = w[47]^w[42]^w[36]^w[34];
        w[50] = {wt[34][30:0],wt[34][31]};//wt << 1
        wt[35] = w[48]^w[43]^w[37]^w[35];
        w[51] = {wt[35][30:0],wt[35][31]};//wt << 1
        wt[36] = w[49]^w[44]^w[38]^w[36];
        w[52] = {wt[36][30:0],wt[36][31]};//wt << 1
        wt[37] = w[50]^w[45]^w[39]^w[37];
        w[53] = {wt[37][30:0],wt[37][31]};//wt << 1
        wt[38] = w[51]^w[46]^w[40]^w[38];
        w[54] = {wt[38][30:0],wt[38][31]};//wt << 1
        wt[39] = w[52]^w[47]^w[41]^w[39];
        w[55] = {wt[39][30:0],wt[39][31]};//wt << 1
        wt[40] = w[53]^w[48]^w[42]^w[40];
        w[56] = {wt[40][30:0],wt[40][31]};//wt << 1
        wt[41] = w[54]^w[49]^w[43]^w[41];
        w[57] = {wt[41][30:0],wt[41][31]};//wt << 1
        wt[42] = w[55]^w[50]^w[44]^w[42];
        w[58] = {wt[42][30:0],wt[42][31]};//wt << 1
        wt[43] = w[56]^w[51]^w[45]^w[43];
        w[59] = {wt[43][30:0],wt[43][31]};//wt << 1
        wt[44] = w[57]^w[52]^w[46]^w[44];
        w[60] = {wt[44][30:0],wt[44][31]};//wt << 1
        wt[45] = w[58]^w[53]^w[47]^w[45];
        w[61] = {wt[45][30:0],wt[45][31]};//wt << 1
        wt[46] = w[59]^w[54]^w[48]^w[46];
        w[62] = {wt[46][30:0],wt[46][31]};//wt << 1
        wt[47] = w[60]^w[55]^w[49]^w[47];
        w[63] = {wt[47][30:0],wt[47][31]};//wt << 1
        wt[48] = w[61]^w[56]^w[50]^w[48];
        w[64] = {wt[48][30:0],wt[48][31]};//wt << 1
        wt[49] = w[62]^w[57]^w[51]^w[49];
        w[65] = {wt[49][30:0],wt[49][31]};//wt << 1
        wt[50] = w[63]^w[58]^w[52]^w[50];
        w[66] = {wt[50][30:0],wt[50][31]};//wt << 1
        wt[51] = w[64]^w[59]^w[53]^w[51];
        w[67] = {wt[51][30:0],wt[51][31]};//wt << 1
        wt[52] = w[65]^w[60]^w[54]^w[52];
        w[68] = {wt[52][30:0],wt[52][31]};//wt << 1
        wt[53] = w[66]^w[61]^w[55]^w[53];
        w[69] = {wt[53][30:0],wt[53][31]};//wt << 1
        wt[54] = w[67]^w[62]^w[56]^w[54];
        w[70] = {wt[54][30:0],wt[54][31]};//wt << 1
        wt[55] = w[68]^w[63]^w[57]^w[55];
        w[71] = {wt[55][30:0],wt[55][31]};//wt << 1        
        wt[56] = w[69]^w[64]^w[58]^w[56];
        w[72] = {wt[56][30:0],wt[56][31]};//wt << 1
        wt[57] = w[70]^w[65]^w[59]^w[57];
        w[73] = {wt[57][30:0],wt[57][31]};//wt << 1                
        wt[58] = w[71]^w[66]^w[60]^w[58];
        w[74] = {wt[58][30:0],wt[58][31]};//wt << 1                
        wt[59] = w[72]^w[67]^w[61]^w[59];
        w[75] = {wt[59][30:0],wt[59][31]};//wt << 1                
        wt[60] = w[73]^w[68]^w[62]^w[60];
        w[76] = {wt[60][30:0],wt[60][31]};//wt << 1
        wt[61] = w[74]^w[69]^w[63]^w[61];
        w[77] = {wt[61][30:0],wt[61][31]};//wt << 1  
        wt[62] = w[75]^w[70]^w[64]^w[62];
        w[78] = {wt[62][30:0],wt[62][31]};//wt << 1            
        wt[63] = w[76]^w[71]^w[65]^w[63];
        w[79] = {wt[63][30:0],wt[63][31]};//wt << 1
        state_done = append_w16_79;   
    end
end
endmodule
