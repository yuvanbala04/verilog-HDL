`timescale 1ns / 1ps
module encoder_4x2_tb();
reg [3:0]x_tb;
wire [1:0]y_tb;

encoder_4x2 dut(x_tb,y_tb);

initial begin
x_tb = 4'b0000;
end

initial begin
$monitor("x = %h, y[0] = %b, y[1] = %b", x_tb,y_tb[0],y_tb[1]);

x_tb = 4'b0000;
#1;

x_tb = 4'b0001;
#1;

x_tb = 4'b0010;
#1;

x_tb = 4'b0100;
#1;

x_tb = 4'b1000;
#1;

$finish;
end
endmodule
