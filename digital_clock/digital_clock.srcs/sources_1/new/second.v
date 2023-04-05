`timescale 1ns / 1ps

module second(clk,cten,b0,b1,tc);
input clk,cten;
output wire [3:0]b0,b1;
output tc;
wire tc0;
assign tc= (b1[2] & b1[0] & b0[3] & b0[0]);

mod_10 s0(.cten(cten),.clk(clk),.tc(tc0),.b(b0),.clr(0));
mod_10 s1(.cten(tc0),.clk(clk),.tc(tc1),.b(b1),.clr(b1[2] & b1[1]));
endmodule
