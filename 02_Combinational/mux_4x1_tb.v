`timescale 1ns / 1ps
module mux_4x1_tb();

reg [3:0]x_tb;
reg [1:0]sel_tb;
wire y_tb;

mux_4x1 dut(x_tb,sel_tb,y_tb);

initial
  x_tb = 4'b0000;

initial begin
    $monitor("x=%h, sel[1]=%b, sel[0]=%b,y=%b",x_tb,sel_tb[1],sel_tb[0],y_tb);
    
    x_tb = 4'b1000;
    sel_tb = 2'b00;
    #1;
    
    x_tb = 4'b0100;
    sel_tb = 2'b01;
    #1;
    
    x_tb = 4'b0010;
    sel_tb = 2'b10;
    #1;
    
    x_tb = 4'b0010;
    sel_tb = 2'b11;
    #1;
    $finish;
end
endmodule
