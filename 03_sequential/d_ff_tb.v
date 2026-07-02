module d_ff_tb();
reg clk;
reg rst;
reg d_tb;
wire q_tb;

d_ff dut(clk, rst, d_tb, q_tb);

initial clk = 0;
always #5 clk = ~clk;

initial begin 
    rst = 1;
    d_tb = 1'b0;
    #10;
    
    rst = 0;
    d_tb = 1'b0;
    #10;
    
    d_tb = 1'b1;
    #10;
    
    d_tb = 1'b0;
    #10;
    
    d_tb = 1'b1;
    #10;
    
    d_tb = 1'b1;
    #10;
    
    d_tb = 1'b0;
    #10
    
    $finish;
end

initial begin
    $monitor("clk = %b, rst = %b, sr = %o,q = %d",clk,rst,d_tb,q_tb);
    $dumpfile("d_ff.vcd");
    $dumpvars(0,d_ff_tb);
end

endmodule
