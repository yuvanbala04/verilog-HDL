`timescale 1ns / 1ps
module mux_2x1_tb();

reg [1:0]x_tb;
reg sel_tb;
wire y_tb;

mux_2x1 dut(x_tb,sel_tb,y_tb);

initial
  x_tb = 0;

initial begin
    $monitor("x[1]=%b, x[0]=%b,sel=%b,y=%b",x_tb[1],x_tb[0],sel_tb,y_tb);
    
    x_tb = 2'b10;
    sel_tb = 0;
    #1;
    
    x_tb = 2'b01;
    sel_tb = 0;
    #1;
    
    x_tb = 2'b10;
    sel_tb = 1;
    #1;
    
    x_tb = 2'b01;
    sel_tb = 1;
    #1;
    $finish;
end
endmodule
