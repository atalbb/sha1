`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/30/2017 12:16:40 PM
// Design Name: 
// Module Name: SHA1_core
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


module SHA1_core(
      input clk,
      input rst,
      //input start,
      input [511:0]block_in,
      output done,
      output [159:0]digest_out
    );
//reg start;
reg [31:0]a[80:0],b[80:0],c[80:0],d[80:0],e[80:0];
reg [31:0]h[4:0];
reg [31:0]hash[4:0];
reg [31:0]k[3:0];
reg [31:0]w[79:0];
reg [31:0]wt[63:0];
reg [31:0]temp[79:0];
reg [6:0]w_rounds;
reg [6:0]f_rounds;
reg [159:0]digest_out;
//reg [1:0]sha1_state;
reg [3:0] curr_state, next_state;
reg [3:0] flag;
parameter SHA1_RESET = 0;
parameter SHA1_INIT = 1;
parameter SHA1_W_ROUNDS = 2;
parameter SHA1_ABCDE_INIT = 3;
parameter SHA1_F0_ROUNDS = 4;
parameter SHA1_F1_ROUNDS = 5;
parameter SHA1_F2_ROUNDS = 6;
parameter SHA1_F3_ROUNDS = 7;
parameter SHA1_FINAL = 8;
parameter SHA1_DIGEST = 9;


always@(posedge clk or negedge rst) begin
     if(rst == 0) begin
        curr_state <= SHA1_RESET;
        flag <= 0;
     end else begin
        curr_state <= next_state;
     end
         
end
//always@(curr_state)
always@(*) begin
    if(flag == 1)
        next_state = SHA1_INIT;
    else if(flag == 2)
        next_state = SHA1_W_ROUNDS;
    else if(flag == 3)
        next_state = SHA1_ABCDE_INIT;
    else if(flag == 4)
        next_state = SHA1_F0_ROUNDS;
    else if(flag == 8)
        next_state = SHA1_FINAL;
    else if(flag == 9)
        next_state = SHA1_DIGEST;
    end
always@(curr_state) begin
    if(curr_state == SHA1_RESET) begin
        w_rounds = 16;
        f_rounds = 0;
        k[0] = 0;
        k[1] = 0;
        k[2] = 0;
        k[3] = 0;
        h[0] = 0;
        h[1] = 0;
        h[2] = 0;
        h[3] = 0;
        h[4] = 0;
        w[0] = 0;w[1] = 0;w[2] = 0;w[3] = 0;w[4] = 0;w[5] = 0;w[6] = 0;w[7] = 0;w[8] = 0;w[9] = 0;
        w[10] = 0;w[11] = 0;w[12] = 0;w[13] = 0;w[14] = 0;w[15] = 0;w[16] = 0;w[17] = 0;w[18] = 0;w[19] = 0;
        w[20] = 0;w[21] = 0;w[22] = 0;w[23] = 0;w[24] = 0;w[25] = 0;w[26] = 0;w[27] = 0;w[28] = 0;w[29] = 0;
        w[30] = 0;w[31] = 0;w[32] = 0;w[33] = 0;w[34] = 0;w[35] = 0;w[36] = 0;w[37] = 0;w[38] = 0;w[39] = 0;
        w[40] = 0;w[41] = 0;w[42] = 0;w[43] = 0;w[44] = 0;w[45] = 0;w[46] = 0;w[47] = 0;w[48] = 0;w[49] = 0;
        w[50] = 0;w[51] = 0;w[52] = 0;w[53] = 0;w[54] = 0;w[55] = 0;w[56] = 0;w[57] = 0;w[58] = 0;w[59] = 0;
        w[60] = 0;w[61] = 0;w[62] = 0;w[63] = 0;w[64] = 0;w[65] = 0;w[66] = 0;w[67] = 0;w[68] = 0;w[69] = 0;
        w[70] = 0;w[71] = 0;w[72] = 0;w[73] = 0;w[74] = 0;w[75] = 0;w[76] = 0;w[77] = 0;w[78] = 0;w[79] = 0;
        flag = 1;
    end else if(curr_state == SHA1_INIT) begin
        k[0] = 32'h5a827999;
        k[1] = 32'h6ed9eba1;
        k[2] = 32'h8f1bbcdc;
        k[3] = 32'hca62c1d6;    
        h[0] = 32'h67452301;
        h[1] = 32'hefcdab89;
        h[2] = 32'h98badcfe;
        h[3] = 32'h10325476;
        h[4] = 32'hc3d2e1f0;
        w[0] = 32'h61626380;
        w[1] = 32'h0;
        w[2] = 32'h0;
        w[3] = 32'h0;
        w[4] = 32'h0;
        w[5] = 32'h0;
        w[6] = 32'h0;
        w[7] = 32'h0;
        w[8] = 32'h0;
        w[9] = 32'h0;
        w[10] = 32'h0;
        w[11] = 32'h0;
        w[12] = 32'h0;
        w[13] = 32'h0;
        w[14] = 32'h0;
        w[15] = 32'h18;  
        flag = 2;   
    end else if(curr_state == SHA1_W_ROUNDS) begin
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
        flag = 3;
    end else if(curr_state == SHA1_ABCDE_INIT) begin
        a[0] = h[0];
        b[0] = h[1];
        c[0] = h[2];
        d[0] = h[3];
        e[0] = h[4];
        flag = 4;
    end else if(curr_state == SHA1_F0_ROUNDS) begin
        //F(0) starts
        temp[0] = {a[0][26:0],a[0][31:27]} + ((b[0] & c[0]) | ((~b[0]) & d[0])) + e[0] + w[0] + k[0] ;
        e[1] = d[0];
        d[1] = c[0];   
        c[1] = {b[0][1:0],b[0][31:2]}; // b[t]<<30
        b[1] = a[0];
        a[1] = temp[0];
        temp[1] = {a[1][26:0],a[1][31:27]} + ((b[1] & c[1]) | ((~b[1]) & d[1])) + e[1] + w[1] + k[0] ;
        e[2] = d[1];
        d[2] = c[1];   
        c[2] = {b[1][1:0],b[1][31:2]}; // b[t]<<30
        b[2] = a[1];
        a[2] = temp[1];
        temp[2] = {a[2][26:0],a[2][31:27]} + ((b[2] & c[2]) | ((~b[2]) & d[2])) + e[2] + w[2] + k[0] ;
        e[3] = d[2];
        d[3] = c[2];   
        c[3] = {b[2][1:0],b[2][31:2]}; // b[t]<<30
        b[3] = a[2];
        a[3] = temp[2];
        temp[3] = {a[3][26:0],a[3][31:27]} + ((b[3] & c[3]) | ((~b[3]) & d[3])) + e[3] + w[3] + k[0] ;
        e[4] = d[3];
        d[4] = c[3];   
        c[4] = {b[3][1:0],b[3][31:2]}; // b[t]<<30
        b[4] = a[3];
        a[4] = temp[3];
        temp[4] = {a[4][26:0],a[4][31:27]} + ((b[4] & c[4]) | ((~b[4]) & d[4])) + e[4] + w[4] + k[0] ;
        e[5] = d[4];
        d[5] = c[4];   
        c[5] = {b[4][1:0],b[4][31:2]}; // b[t]<<30
        b[5] = a[4];
        a[5] = temp[4];
        temp[5] = {a[5][26:0],a[5][31:27]} + ((b[5] & c[5]) | ((~b[5]) & d[5])) + e[5] + w[5] + k[0] ;
        e[6] = d[5];
        d[6] = c[5];   
        c[6] = {b[5][1:0],b[5][31:2]}; // b[t]<<30
        b[6] = a[5];
        a[6] = temp[5];
        temp[6] = {a[6][26:0],a[6][31:27]} + ((b[6] & c[6]) | ((~b[6]) & d[6])) + e[6] + w[6] + k[0] ;
        e[7] = d[6];
        d[7] = c[6];   
        c[7] = {b[6][1:0],b[6][31:2]}; // b[t]<<30
        b[7] = a[6];
        a[7] = temp[6];
        temp[7] = {a[7][26:0],a[7][31:27]} + ((b[7] & c[7]) | ((~b[7]) & d[7])) + e[7] + w[7] + k[0] ;
        e[8] = d[7];
        d[8] = c[7];   
        c[8] = {b[7][1:0],b[7][31:2]}; // b[t]<<30
        b[8] = a[7];
        a[8] = temp[7];       
        temp[8] = {a[8][26:0],a[8][31:27]} + ((b[8] & c[8]) | ((~b[8]) & d[8])) + e[8] + w[8] + k[0] ;
        e[9] = d[8];
        d[9] = c[8];   
        c[9] = {b[8][1:0],b[8][31:2]}; // b[t]<<30
        b[9] = a[8];
        a[9] = temp[8];       
        temp[9] = {a[9][26:0],a[9][31:27]} + ((b[9] & c[9]) | ((~b[9]) & d[9])) + e[9] + w[9] + k[0] ;
        e[10] = d[9];
        d[10] = c[9];   
        c[10] = {b[9][1:0],b[9][31:2]}; // b[t]<<30
        b[10] = a[9];
        a[10] = temp[9];
        temp[10] = {a[10][26:0],a[10][31:27]} + ((b[10] & c[10]) | ((~b[10]) & d[10])) + e[10] + w[10] + k[0] ;
        e[11] = d[10];
        d[11] = c[10];   
        c[11] = {b[10][1:0],b[10][31:2]}; // b[t]<<30
        b[11] = a[10];
        a[11] = temp[10];
        temp[11] = {a[11][26:0],a[11][31:27]} + ((b[11] & c[11]) | ((~b[11]) & d[11])) + e[11] + w[11] + k[0] ;
        e[12] = d[11];
        d[12] = c[11];   
        c[12] = {b[11][1:0],b[11][31:2]}; // b[t]<<30
        b[12] = a[11];
        a[12] = temp[11];
        temp[12] = {a[12][26:0],a[12][31:27]} + ((b[12] & c[12]) | ((~b[12]) & d[12])) + e[12] + w[12] + k[0] ;
        e[13] = d[12];
        d[13] = c[12];   
        c[13] = {b[12][1:0],b[12][31:2]}; // b[t]<<30
        b[13] = a[12];
        a[13] = temp[12];
        temp[13] = {a[13][26:0],a[13][31:27]} + ((b[13] & c[13]) | ((~b[13]) & d[13])) + e[13] + w[13] + k[0] ;
        e[14] = d[13];
        d[14] = c[13];   
        c[14] = {b[13][1:0],b[13][31:2]}; // b[t]<<30
        b[14] = a[13];
        a[14] = temp[13];
        temp[14] = {a[14][26:0],a[14][31:27]} + ((b[14] & c[14]) | ((~b[14]) & d[14])) + e[14] + w[14] + k[0] ;
        e[15] = d[14];
        d[15] = c[14];   
        c[15] = {b[14][1:0],b[14][31:2]}; // b[t]<<30
        b[15] = a[14];
        a[15] = temp[14];
        temp[15] = {a[15][26:0],a[15][31:27]} + ((b[15] & c[15]) | ((~b[15]) & d[15])) + e[15] + w[15] + k[0] ;
        e[16] = d[15];
        d[16] = c[15];   
        c[16] = {b[15][1:0],b[15][31:2]}; // b[t]<<30
        b[16] = a[15];
        a[16] = temp[15];
        temp[16] = {a[16][26:0],a[16][31:27]} + ((b[16] & c[16]) | ((~b[16]) & d[16])) + e[16] + w[16] + k[0] ;
        e[17] = d[16];
        d[17] = c[16];   
        c[17] = {b[16][1:0],b[16][31:2]}; // b[t]<<30
        b[17] = a[16];
        a[17] = temp[16];
        temp[17] = {a[17][26:0],a[17][31:27]} + ((b[17] & c[17]) | ((~b[17]) & d[17])) + e[17] + w[17] + k[0] ;
        e[18] = d[17];
        d[18] = c[17];   
        c[18] = {b[17][1:0],b[17][31:2]}; // b[t]<<30
        b[18] = a[17];
        a[18] = temp[17];
        temp[18] = {a[18][26:0],a[18][31:27]} + ((b[18] & c[18]) | ((~b[18]) & d[18])) + e[18] + w[18] + k[0] ;
        e[19] = d[18];
        d[19] = c[18];   
        c[19] = {b[18][1:0],b[18][31:2]}; // b[t]<<30
        b[19] = a[18];
        a[19] = temp[18];       
        temp[19] = {a[19][26:0],a[19][31:27]} + ((b[19] & c[19]) | ((~b[19]) & d[19])) + e[19] + w[19] + k[0] ;
        e[20] = d[19];
        d[20] = c[19];   
        c[20] = {b[19][1:0],b[19][31:2]}; // b[t]<<30
        b[20] = a[19];
        a[20] = temp[19];
        //F(1) starts
        temp[20] = {a[20][26:0],a[20][31:27]} + (b[20] ^ c[20] ^ d[20]) + e[20] + w[20] + k[1] ;
        e[21] = d[20];
        d[21] = c[20];   
        c[21] = {b[20][1:0],b[20][31:2]}; // b[t]<<30
        b[21] = a[20];
        a[21] = temp[20];
        temp[21] = {a[21][26:0],a[21][31:27]} + (b[21] ^ c[21] ^ d[21]) + e[21] + w[21] + k[1] ;
        e[22] = d[21];
        d[22] = c[21];   
        c[22] = {b[21][1:0],b[21][31:2]}; // b[t]<<30
        b[22] = a[21];
        a[22] = temp[21];
        temp[22] = {a[22][26:0],a[22][31:27]} + (b[22] ^ c[22] ^ d[22]) + e[22] + w[22] + k[1] ;
        e[23] = d[22];
        d[23] = c[22];   
        c[23] = {b[22][1:0],b[22][31:2]}; // b[t]<<30
        b[23] = a[22];
        a[23] = temp[22];
        temp[23] = {a[23][26:0],a[23][31:27]} + (b[23] ^ c[23] ^ d[23]) + e[23] + w[23] + k[1] ;
        e[24] = d[23];
        d[24] = c[23];   
        c[24] = {b[23][1:0],b[23][31:2]}; // b[t]<<30
        b[24] = a[23];
        a[24] = temp[23];
        temp[24] = {a[24][26:0],a[24][31:27]} + (b[24] ^ c[24] ^ d[24]) + e[24] + w[24] + k[1] ;
        e[25] = d[24];
        d[25] = c[24];   
        c[25] = {b[24][1:0],b[24][31:2]}; // b[t]<<30
        b[25] = a[24];
        a[25] = temp[24];
        temp[25] = {a[25][26:0],a[25][31:27]} + (b[25] ^ c[25] ^ d[25]) + e[25] + w[25] + k[1] ;
        e[26] = d[25];
        d[26] = c[25];   
        c[26] = {b[25][1:0],b[25][31:2]}; // b[t]<<30
        b[26] = a[25];
        a[26] = temp[25];        
        temp[26] = {a[26][26:0],a[26][31:27]} + (b[26] ^ c[26] ^ d[26]) + e[26] + w[26] + k[1] ;
        e[27] = d[26];
        d[27] = c[26];   
        c[27] = {b[26][1:0],b[26][31:2]}; // b[t]<<30
        b[27] = a[26];
        a[27] = temp[26]; 
        temp[27] = {a[27][26:0],a[27][31:27]} + (b[27] ^ c[27] ^ d[27]) + e[27] + w[27] + k[1] ;
        e[28] = d[27];
        d[28] = c[27];   
        c[28] = {b[27][1:0],b[27][31:2]}; // b[t]<<30
        b[28] = a[27];
        a[28] = temp[27];
        temp[28] = {a[28][26:0],a[28][31:27]} + (b[28] ^ c[28] ^ d[28]) + e[28] + w[28] + k[1] ;
        e[29] = d[28];
        d[29] = c[28];   
        c[29] = {b[28][1:0],b[28][31:2]}; // b[t]<<30
        b[29] = a[28];
        a[29] = temp[28];
        temp[29] = {a[29][26:0],a[29][31:27]} + (b[29] ^ c[29] ^ d[29]) + e[29] + w[29] + k[1] ;
        e[30] = d[29];
        d[30] = c[29];   
        c[30] = {b[29][1:0],b[29][31:2]}; // b[t]<<30
        b[30] = a[29];
        a[30] = temp[29];                             
        temp[30] = {a[30][26:0],a[30][31:27]} + (b[30] ^ c[30] ^ d[30]) + e[30] + w[30] + k[1] ;
        e[31] = d[30];
        d[31] = c[30];   
        c[31] = {b[30][1:0],b[30][31:2]}; // b[t]<<30
        b[31] = a[30];
        a[31] = temp[30];
        temp[30] = {a[30][26:0],a[30][31:27]} + (b[30] ^ c[30] ^ d[30]) + e[30] + w[30] + k[1] ;
        e[31] = d[30];
        d[31] = c[30];   
        c[31] = {b[30][1:0],b[30][31:2]}; // b[t]<<30
        b[31] = a[30];
        a[31] = temp[30];
        temp[31] = {a[31][26:0],a[31][31:27]} + (b[31] ^ c[31] ^ d[31]) + e[31] + w[31] + k[1] ;
        e[32] = d[31];
        d[32] = c[31];   
        c[32] = {b[31][1:0],b[31][31:2]}; // b[t]<<30
        b[32] = a[31];
        a[32] = temp[31];
        temp[32] = {a[32][26:0],a[32][31:27]} + (b[32] ^ c[32] ^ d[32]) + e[32] + w[32] + k[1] ;
        e[33] = d[32];
        d[33] = c[32];   
        c[33] = {b[32][1:0],b[32][31:2]}; // b[t]<<30
        b[33] = a[32];
        a[33] = temp[32];
        temp[33] = {a[33][26:0],a[33][31:27]} + (b[33] ^ c[33] ^ d[33]) + e[33] + w[33] + k[1] ;
        e[34] = d[33];
        d[34] = c[33];   
        c[34] = {b[33][1:0],b[33][31:2]}; // b[t]<<30
        b[34] = a[33];
        a[34] = temp[33];
        temp[34] = {a[34][26:0],a[34][31:27]} + (b[34] ^ c[34] ^ d[34]) + e[34] + w[34] + k[1] ;
        e[35] = d[34];
        d[35] = c[34];   
        c[35] = {b[34][1:0],b[34][31:2]}; // b[t]<<30
        b[35] = a[34];
        a[35] = temp[34];
        temp[35] = {a[35][26:0],a[35][31:27]} + (b[35] ^ c[35] ^ d[35]) + e[35] + w[35] + k[1] ;
        e[36] = d[35];
        d[36] = c[35];   
        c[36] = {b[35][1:0],b[35][31:2]}; // b[t]<<30
        b[36] = a[35];
        a[36] = temp[35];        
        temp[36] = {a[36][26:0],a[36][31:27]} + (b[36] ^ c[36] ^ d[36]) + e[36] + w[36] + k[1] ;
        e[37] = d[36];
        d[37] = c[36];   
        c[37] = {b[36][1:0],b[36][31:2]}; // b[t]<<30
        b[37] = a[36];
        a[37] = temp[36]; 
        temp[37] = {a[37][26:0],a[37][31:27]} + (b[37] ^ c[37] ^ d[37]) + e[37] + w[37] + k[1] ;
        e[38] = d[37];
        d[38] = c[37];   
        c[38] = {b[37][1:0],b[37][31:2]}; // b[t]<<30
        b[38] = a[37];
        a[38] = temp[37];
        temp[38] = {a[38][26:0],a[38][31:27]} + (b[38] ^ c[38] ^ d[38]) + e[38] + w[38] + k[1] ;
        e[39] = d[38];
        d[39] = c[38];   
        c[39] = {b[38][1:0],b[38][31:2]}; // b[t]<<30
        b[39] = a[38];
        a[39] = temp[38];
        temp[39] = {a[39][26:0],a[39][31:27]} + (b[39] ^ c[39] ^ d[39]) + e[39] + w[39] + k[1] ;
        e[40] = d[39];
        d[40] = c[39];   
        c[40] = {b[39][1:0],b[39][31:2]}; // b[t]<<30
        b[40] = a[39];
        a[40] = temp[39];                             
        //F(2) starts
        temp[40] = {a[40][26:0],a[40][31:27]} + ((b[40]&c[40])|(b[40]&d[40])|(c[40]&d[40])) + e[40] + w[40] + k[2] ;
        e[41] = d[40];
        d[41] = c[40];   
        c[41] = {b[40][1:0],b[40][31:2]}; // b[t]<<30
        b[41] = a[40];
        a[41] = temp[40]; 
        temp[41] = {a[41][26:0],a[41][31:27]} + ((b[41]&c[41])|(b[41]&d[41])|(c[41]&d[41])) + e[41] + w[41] + k[2] ;
        e[42] = d[41];
        d[42] = c[41];   
        c[42] = {b[41][1:0],b[41][31:2]}; // b[t]<<30
        b[42] = a[41];
        a[42] = temp[41]; 
        temp[42] = {a[42][26:0],a[42][31:27]} + ((b[42]&c[42])|(b[42]&d[42])|(c[42]&d[42])) + e[42] + w[42] + k[2] ;
        e[43] = d[42];
        d[43] = c[42];   
        c[43] = {b[42][1:0],b[42][31:2]}; // b[t]<<30
        b[43] = a[42];
        a[43] = temp[42];
        temp[43] = {a[43][26:0],a[43][31:27]} + ((b[43]&c[43])|(b[43]&d[43])|(c[43]&d[43])) + e[43] + w[43] + k[2] ;
        e[44] = d[43];
        d[44] = c[43];   
        c[44] = {b[43][1:0],b[43][31:2]}; // b[t]<<30
        b[44] = a[43];
        a[44] = temp[43];
        temp[44] = {a[44][26:0],a[44][31:27]} + ((b[44]&c[44])|(b[44]&d[44])|(c[44]&d[44])) + e[44] + w[44] + k[2] ;
        e[45] = d[44];
        d[45] = c[44];   
        c[45] = {b[44][1:0],b[44][31:2]}; // b[t]<<30
        b[45] = a[44];
        a[45] = temp[44];
        temp[45] = {a[45][26:0],a[45][31:27]} + ((b[45]&c[45])|(b[45]&d[45])|(c[45]&d[45])) + e[45] + w[45] + k[2] ;
        e[46] = d[45];
        d[46] = c[45];   
        c[46] = {b[45][1:0],b[45][31:2]}; // b[t]<<30
        b[46] = a[45];
        a[46] = temp[45];
        temp[46] = {a[46][26:0],a[46][31:27]} + ((b[46]&c[46])|(b[46]&d[46])|(c[46]&d[46])) + e[46] + w[46] + k[2] ;
        e[47] = d[46];
        d[47] = c[46];   
        c[47] = {b[46][1:0],b[46][31:2]}; // b[t]<<30
        b[47] = a[46];
        a[47] = temp[46];
        temp[47] = {a[47][26:0],a[47][31:27]} + ((b[47]&c[47])|(b[47]&d[47])|(c[47]&d[47])) + e[47] + w[47] + k[2] ;
        e[48] = d[47];
        d[48] = c[47];   
        c[48] = {b[47][1:0],b[47][31:2]}; // b[t]<<30
        b[48] = a[47];
        a[48] = temp[47];
        temp[48] = {a[48][26:0],a[48][31:27]} + ((b[48]&c[48])|(b[48]&d[48])|(c[48]&d[48])) + e[48] + w[48] + k[2] ;
        e[49] = d[48];
        d[49] = c[48];   
        c[49] = {b[48][1:0],b[48][31:2]}; // b[t]<<30
        b[49] = a[48];
        a[49] = temp[48];
        temp[49] = {a[49][26:0],a[49][31:27]} + ((b[49]&c[49])|(b[49]&d[49])|(c[49]&d[49])) + e[49] + w[49] + k[2] ;
        e[50] = d[49];
        d[50] = c[49];   
        c[50] = {b[49][1:0],b[49][31:2]}; // b[t]<<30
        b[50] = a[49];
        a[50] = temp[49];
        temp[50] = {a[50][26:0],a[50][31:27]} + ((b[50]&c[50])|(b[50]&d[50])|(c[50]&d[50])) + e[50] + w[50] + k[2] ;
        e[51] = d[50];
        d[51] = c[50];   
        c[51] = {b[50][1:0],b[50][31:2]}; // b[t]<<30
        b[51] = a[50];
        a[51] = temp[50]; 
        temp[51] = {a[51][26:0],a[51][31:27]} + ((b[51]&c[51])|(b[51]&d[51])|(c[51]&d[51])) + e[51] + w[51] + k[2] ;
        e[52] = d[51];
        d[52] = c[51];   
        c[52] = {b[51][1:0],b[51][31:2]}; // b[t]<<30
        b[52] = a[51];
        a[52] = temp[51]; 
        temp[52] = {a[52][26:0],a[52][31:27]} + ((b[52]&c[52])|(b[52]&d[52])|(c[52]&d[52])) + e[52] + w[52] + k[2] ;
        e[53] = d[52];
        d[53] = c[52];   
        c[53] = {b[52][1:0],b[52][31:2]}; // b[t]<<30
        b[53] = a[52];
        a[53] = temp[52];
        temp[53] = {a[53][26:0],a[53][31:27]} + ((b[53]&c[53])|(b[53]&d[53])|(c[53]&d[53])) + e[53] + w[53] + k[2] ;
        e[54] = d[53];
        d[54] = c[53];   
        c[54] = {b[53][1:0],b[53][31:2]}; // b[t]<<30
        b[54] = a[53];
        a[54] = temp[53];
        temp[54] = {a[54][26:0],a[54][31:27]} + ((b[54]&c[54])|(b[54]&d[54])|(c[54]&d[54])) + e[54] + w[54] + k[2] ;
        e[55] = d[54];
        d[55] = c[54];   
        c[55] = {b[54][1:0],b[54][31:2]}; // b[t]<<30
        b[55] = a[54];
        a[55] = temp[54];
        temp[55] = {a[55][26:0],a[55][31:27]} + ((b[55]&c[55])|(b[55]&d[55])|(c[55]&d[55])) + e[55] + w[55] + k[2] ;
        e[56] = d[55];
        d[56] = c[55];   
        c[56] = {b[55][1:0],b[55][31:2]}; // b[t]<<30
        b[56] = a[55];
        a[56] = temp[55];
        temp[56] = {a[56][26:0],a[56][31:27]} + ((b[56]&c[56])|(b[56]&d[56])|(c[56]&d[56])) + e[56] + w[56] + k[2] ;
        e[57] = d[56];
        d[57] = c[56];   
        c[57] = {b[56][1:0],b[56][31:2]}; // b[t]<<30
        b[57] = a[56];
        a[57] = temp[56];
        temp[57] = {a[57][26:0],a[57][31:27]} + ((b[57]&c[57])|(b[57]&d[57])|(c[57]&d[57])) + e[57] + w[57] + k[2] ;
        e[58] = d[57];
        d[58] = c[57];   
        c[58] = {b[57][1:0],b[57][31:2]}; // b[t]<<30
        b[58] = a[57];
        a[58] = temp[57];
        temp[58] = {a[58][26:0],a[58][31:27]} + ((b[58]&c[58])|(b[58]&d[58])|(c[58]&d[58])) + e[58] + w[58] + k[2] ;
        e[59] = d[58];
        d[59] = c[58];   
        c[59] = {b[58][1:0],b[58][31:2]}; // b[t]<<30
        b[59] = a[58];
        a[59] = temp[58];
        temp[59] = {a[59][26:0],a[59][31:27]} + ((b[59]&c[59])|(b[59]&d[59])|(c[59]&d[59])) + e[59] + w[59] + k[2] ;
        e[60] = d[59];
        d[60] = c[59];   
        c[60] = {b[59][1:0],b[59][31:2]}; // b[t]<<30
        b[60] = a[59];
        a[60] = temp[59];
        //F(3) starts
        temp[60] = {a[60][26:0],a[60][31:27]} + (b[60]^c[60]^d[60]) + e[60] + w[60] + k[3] ;
        e[61] = d[60];
        d[61] = c[60];   
        c[61] = {b[60][1:0],b[60][31:2]}; // b[t]<<30
        b[61] = a[60];
        a[61] = temp[60];
        temp[61] = {a[61][26:0],a[61][31:27]} + (b[61]^c[61]^d[61]) + e[61] + w[61] + k[3] ;
        e[62] = d[61];
        d[62] = c[61];   
        c[62] = {b[61][1:0],b[61][31:2]}; // b[t]<<30
        b[62] = a[61];
        a[62] = temp[61];
        temp[62] = {a[62][26:0],a[62][31:27]} + (b[62]^c[62]^d[62]) + e[62] + w[62] + k[3] ;
        e[63] = d[62];
        d[63] = c[62];   
        c[63] = {b[62][1:0],b[62][31:2]}; // b[t]<<30
        b[63] = a[62];
        a[63] = temp[62];
        temp[63] = {a[63][26:0],a[63][31:27]} + (b[63]^c[63]^d[63]) + e[63] + w[63] + k[3] ;
        e[64] = d[63];
        d[64] = c[63];   
        c[64] = {b[63][1:0],b[63][31:2]}; // b[t]<<30
        b[64] = a[63];
        a[64] = temp[63];
        temp[64] = {a[64][26:0],a[64][31:27]} + (b[64]^c[64]^d[64]) + e[64] + w[64] + k[3] ;
        e[65] = d[64];
        d[65] = c[64];   
        c[65] = {b[64][1:0],b[64][31:2]}; // b[t]<<30
        b[65] = a[64];
        a[65] = temp[64];
        temp[65] = {a[65][26:0],a[65][31:27]} + (b[65]^c[65]^d[65]) + e[65] + w[65] + k[3] ;
        e[66] = d[65];
        d[66] = c[65];   
        c[66] = {b[65][1:0],b[65][31:2]}; // b[t]<<30
        b[66] = a[65];
        a[66] = temp[65];
        temp[66] = {a[66][26:0],a[66][31:27]} + (b[66]^c[66]^d[66]) + e[66] + w[66] + k[3] ;
        e[67] = d[66];
        d[67] = c[66];   
        c[67] = {b[66][1:0],b[66][31:2]}; // b[t]<<30
        b[67] = a[66];
        a[67] = temp[66];
        temp[67] = {a[67][26:0],a[67][31:27]} + (b[67]^c[67]^d[67]) + e[67] + w[67] + k[3] ;
        e[68] = d[67];
        d[68] = c[67];   
        c[68] = {b[67][1:0],b[67][31:2]}; // b[t]<<30
        b[68] = a[67];
        a[68] = temp[67];
        temp[68] = {a[68][26:0],a[68][31:27]} + (b[68]^c[68]^d[68]) + e[68] + w[68] + k[3] ;
        e[69] = d[68];
        d[69] = c[68];   
        c[69] = {b[68][1:0],b[68][31:2]}; // b[t]<<30
        b[69] = a[68];
        a[69] = temp[68];        
        temp[69] = {a[69][26:0],a[69][31:27]} + (b[69]^c[69]^d[69]) + e[69] + w[69] + k[3] ;
        e[70] = d[69];
        d[70] = c[69];   
        c[70] = {b[69][1:0],b[69][31:2]}; // b[t]<<30
        b[70] = a[69];
        a[70] = temp[69];        
        temp[70] = {a[70][26:0],a[70][31:27]} + (b[70]^c[70]^d[70]) + e[70] + w[70] + k[3] ;
        e[71] = d[70];
        d[71] = c[70];   
        c[71] = {b[70][1:0],b[70][31:2]}; // b[t]<<30
        b[71] = a[70];
        a[71] = temp[70];
        temp[71] = {a[71][26:0],a[71][31:27]} + (b[71]^c[71]^d[71]) + e[71] + w[71] + k[3] ;
        e[72] = d[71];
        d[72] = c[71];   
        c[72] = {b[71][1:0],b[71][31:2]}; // b[t]<<30
        b[72] = a[71];
        a[72] = temp[71];
        temp[72] = {a[72][26:0],a[72][31:27]} + (b[72]^c[72]^d[72]) + e[72] + w[72] + k[3] ;
        e[73] = d[72];
        d[73] = c[72];   
        c[73] = {b[72][1:0],b[72][31:2]}; // b[t]<<30
        b[73] = a[72];
        a[73] = temp[72];
        temp[73] = {a[73][26:0],a[73][31:27]} + (b[73]^c[73]^d[73]) + e[73] + w[73] + k[3] ;
        e[74] = d[73];
        d[74] = c[73];   
        c[74] = {b[73][1:0],b[73][31:2]}; // b[t]<<30
        b[74] = a[73];
        a[74] = temp[73];
        temp[74] = {a[74][26:0],a[74][31:27]} + (b[74]^c[74]^d[74]) + e[74] + w[74] + k[3] ;
        e[75] = d[74];
        d[75] = c[74];   
        c[75] = {b[74][1:0],b[74][31:2]}; // b[t]<<30
        b[75] = a[74];
        a[75] = temp[74];
        temp[75] = {a[75][26:0],a[75][31:27]} + (b[75]^c[75]^d[75]) + e[75] + w[75] + k[3] ;
        e[76] = d[75];
        d[76] = c[75];   
        c[76] = {b[75][1:0],b[75][31:2]}; // b[t]<<30
        b[76] = a[75];
        a[76] = temp[75];
        temp[76] = {a[76][26:0],a[76][31:27]} + (b[76]^c[76]^d[76]) + e[76] + w[76] + k[3] ;
        e[77] = d[76];
        d[77] = c[76];   
        c[77] = {b[76][1:0],b[76][31:2]}; // b[t]<<30
        b[77] = a[76];
        a[77] = temp[76];
        temp[77] = {a[77][26:0],a[77][31:27]} + (b[77]^c[77]^d[77]) + e[77] + w[77] + k[3] ;
        e[78] = d[77];
        d[78] = c[77];   
        c[78] = {b[77][1:0],b[77][31:2]}; // b[t]<<30
        b[78] = a[77];
        a[78] = temp[77];
        temp[78] = {a[78][26:0],a[78][31:27]} + (b[78]^c[78]^d[78]) + e[78] + w[78] + k[3] ;
        e[79] = d[78];
        d[79] = c[78];   
        c[79] = {b[78][1:0],b[78][31:2]}; // b[t]<<30
        b[79] = a[78];
        a[79] = temp[78];        
        temp[79] = {a[79][26:0],a[79][31:27]} + (b[79]^c[79]^d[79]) + e[79] + w[79] + k[3] ;
        e[80] = d[79];
        d[80] = c[79];   
        c[80] = {b[79][1:0],b[79][31:2]}; // b[t]<<30
        b[80] = a[79];
        a[80] = temp[79];      
        flag = 8;
    end else if(curr_state == SHA1_FINAL) begin
        hash[0] = h[0] + a[80];
        hash[1] = h[1] + b[80];
        hash[2] = h[2] + c[80];
        hash[3] = h[3] + d[80];
        hash[4] = h[4] + e[80];
        flag = 9;
    end else if(curr_state == SHA1_DIGEST) begin
        digest_out = {hash[0],hash[1],hash[2],hash[3]};
    end

end
endmodule
