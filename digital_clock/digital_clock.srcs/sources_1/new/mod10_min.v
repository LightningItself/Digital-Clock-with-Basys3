`timescale 1ns / 1ps

module mod10_min(cten,clk,tc,b,clr);
output reg [3:0]b;
output reg tc;
input cten,clk,clr;

initial begin b=0; end

always@(posedge clk or posedge clr) begin
if(clr)
b=0;

else begin
if(cten==1 && b <= 9) begin
b <= b+1;
tc <= 0;
end

if(cten == 0)  begin
tc <= 0;
b <=b;
end

if(cten==1 && b == 9) begin
b <= 0;
tc <= 0;
end

if(cten==1 && b == 8) begin
tc <= 1;
end

end
end
endmodule
