`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2023 14:47:16
// Design Name: 
// Module Name: min
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


module min(clk,cten,b0,b1,tc);
input clk,cten;
output wire [3:0]b0,b1;
output tc;
wire tc0;

mod10_min m0(.cten(cten),.clk(clk),.tc(tc0),.b(b0),.clr(0));
mod10_min m1(.cten(tc0),.clk(clk),.tc(tc),.b(b1),.clr(b1[2] & b1[1]));
endmodule
