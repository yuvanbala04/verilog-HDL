`timescale 1ns / 1ps
module decoder_2x4_tb();
reg [1:0]x_tb;
wire [3:0]y_tb;

decoder_2x4 dut(x_tb,y_tb);

initial begin
x_tb = 2'b00;
end

initial begin
$monitor("x[1] = %b, x[0]= %b, y = %h", x_tb,y_tb[0],y_tb[1]);

x_tb = 4'b00;
#1;

x_tb = 4'b01;
#1;

x_tb = 4'b10;
#1;

x_tb = 4'b11;
#1;

$finish;
end
endmodule
