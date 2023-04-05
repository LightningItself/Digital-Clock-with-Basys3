`timescale 1ns / 1ps

module tb();

//SECONDS
//reg cten,clk;
//wire tc;
//wire [5:0] sec;

//mod_60 mysec(cten,clk,tc,sec);


//initial begin clk=0; cten =0; #10 cten=1; end

//initial begin
//forever #5 clk =~clk; 
//end

//initial #650 $finish;

//MINUTES & SECONDS
//reg cten,clk;
//wire tc,tc0;
//wire [5:0] sec,min;

//min_sec my_ms(clk,cten,tc,min,sec,tc0);


//initial begin clk=0; cten =0; #1 cten=1; end

//initial begin
//forever #1 clk =~clk; 
//end

//initial #500 $finish;


//HR && MIN && SEC
//reg cten,clk;
////wire tc,tc0,h;
////wire [5:0] sec,min;
////wire [4:0] hr;
//wire [16:0]hms;
//hhmmss myclk(clk,cten,hms,hr,min,sec);

//initial begin clk=0; cten =0; #0.01 cten=1; end

//initial begin
//forever #0.005 clk =~clk; 
//end

//initial #1000 $finish;


reg cten,clk;
//wire tc,tc0,h;
//wire [5:0] sec,min;
//wire [4:0] hr;
wire [6:0]c;
wire [3:0]an,s0,s1,m0,m1;
wire dp;

s_display ss(clk,cten,an,c,dp,s0,s1,m0,m1);

initial begin clk=0; cten =0; #0.01 cten=1; end

initial begin
forever #0.005 clk =~clk; 
end

initial #1000 $finish;



endmodule
