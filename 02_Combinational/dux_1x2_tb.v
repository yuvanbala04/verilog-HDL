`timescale 1ns / 1ps
module dux_1x2_tb();
reg x;
reg sel_tb;
wire [1:0]y_tb;

dux_1x2 dut(x,sel_tb,y_tb);

initial begin
x = 0;
sel_tb = 0;
end

initial begin
$monitor("x = %b, sel = %b, y[0] = %b, y[1] = %b", x,sel_tb,y_tb[0],y_tb[1]);

x = 0;
sel_tb = 0;
#1;

x = 1;
sel_tb = 0;
#1;

x = 1;
sel_tb = 1;
#1;

$finish;
end
endmodule
