`timescale 1ns / 1ps

module s_display(
    input clk,
    input cten,
    output an,
    output c,
    output dp,
    output s0,
    output s1,
    output m0,
    output m1
);
wire [6:0]c;
wire [3:0]an;
wire [3:0] s0,s1,m0,m1;
wire tc0;

//clkdvr myclk(.clk(clk),.rst(0),.clkout(clk_1hz));

second s(clk,cten,s0,s1,tc0);
min m(clk,tc0,m0,m1,tc);
quad_seven_seg sd(clk,m1,0,m0,0,s1,0,s0,0,an[3],an[2],an[1],an[0],c[0],c[1],c[2],c[3],c[4],c[5],c[6],dp);

endmodule



