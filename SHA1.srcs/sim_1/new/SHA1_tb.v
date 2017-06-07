`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2017 09:05:21 AM
// Design Name: 
// Module Name: my_bram_tb
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


module my_bram_tb(

    );
reg clk,we,en;
wire [159:0]digest;
top T1(clk,we,en,digest);
initial begin
    clk = 0;
    we = 0;
    en = 0;
end
always
    #5 clk = ~clk;
always begin
    #10 en = 1;
    #5 we = 1;
    #5 we = 0;
    #100 $stop;
end
//    reg clk,we,re,en;
//    wire [3:0]addr[15:0];
//    wire [31:0]wi[15:0]; 
//    wire [31:0]wo[15:0];
//    wire [31:0]hi[4:0];
//    wire [31:0]ho[4:0];
//    assign addr[0] = 0;
//    assign addr[1] = 1;
//    assign addr[2] = 2;
//    assign addr[3] = 3;
//    assign addr[4] = 4;
//    assign addr[5] = 5;
//    assign addr[6] = 6;
//    assign addr[7] = 7;
//    assign addr[8] = 8;
//    assign addr[9] = 9;
//    assign addr[10] = 10;
//    assign addr[11] = 11;
//    assign addr[12] = 12;
//    assign addr[13] = 13;
//    assign addr[14] = 14;
//    assign addr[15] = 15;
//    assign wi[0] = "abcd";
//    assign wi[1] = "efgh";
//    assign wi[2] = "ijkl";
//    assign wi[3] = "mnop";
//    assign wi[4] = "qrst";
//    assign wi[5] = "uvwx";
//    assign wi[6] = "yzAB";
//    assign wi[7] = "CDEF";
//    assign wi[8] = "GHIJ";
//    assign wi[9] = "KLMN";
//    assign wi[10] = "OPQR";
//    assign wi[11] = "STUV";
//    assign wi[12] = "WXYZ";
//    assign wi[13] = 0;
//    assign wi[14] = 0;
//    assign wi[15] = 0;
    
//    assign hi[0] = 32'h67452301;
//    assign hi[1] = 32'hefcdab89;
//    assign hi[2] = 32'h98badcfe;
//    assign hi[3] = 32'h10325476;
//    assign hi[4] = 32'hc3d2e1f0;
    
//    my_bram W0(clk,en,we,addr[0],wi[0],wo[0]);
//    my_bram W1(clk,en,we,addr[1],wi[1],wo[1]);
//    my_bram W2(clk,en,we,addr[2],wi[2],wo[2]);
//    my_bram W3(clk,en,we,addr[3],wi[3],wo[3]);
//    my_bram W4(clk,en,we,addr[4],wi[4],wo[4]);
//    my_bram W5(clk,en,we,addr[5],wi[5],wo[5]);
//    my_bram W6(clk,en,we,addr[6],wi[6],wo[6]);
//    my_bram W7(clk,en,we,addr[7],wi[7],wo[7]);
//    my_bram W8(clk,en,we,addr[8],wi[8],wo[8]);
//    my_bram W9(clk,en,we,addr[9],wi[9],wo[9]);
//    my_bram W10(clk,en,we,addr[10],wi[10],wo[10]);
//    my_bram W11(clk,en,we,addr[11],wi[11],wo[11]);
//    my_bram W12(clk,en,we,addr[12],wi[12],wo[12]);
//    my_bram W13(clk,en,we,addr[13],wi[13],wo[13]);
//    my_bram W14(clk,en,we,addr[14],wi[14],wo[14]);
//    my_bram W15(clk,en,we,addr[15],wi[15],wo[15]);
    
//    my_bram H0(clk,en,we,addr[0],hi[0],ho[0]);
//    my_bram H1(clk,en,we,addr[1],hi[1],ho[1]);
//    my_bram H2(clk,en,we,addr[2],hi[2],ho[2]);
//    my_bram H3(clk,en,we,addr[3],hi[3],ho[3]);
//    my_bram H4(clk,en,we,addr[4],hi[4],ho[4]);
//    initial begin
//        clk = 0;
//        we = 0;
//        re = 0;
//        en = 0;
//    end
//    always
//        #5 clk = ~clk;
//    always begin
//        #10 en = 1;
//        #5 we = 1;
//        #5 we = 0;
//        #100 $stop;
//    end
endmodule




