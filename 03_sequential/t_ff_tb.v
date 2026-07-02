module t_ff_tb();
reg clk;
reg rst;
reg t_tb;
wire q_tb;

t_ff dut(clk, rst, t_tb, q_tb);

initial clk = 0;
always #5 clk = ~clk;

initial begin 
    rst = 1;
    t_tb = 1'b0;
    #10;
    
    rst = 0;
    t_tb = 1'b0;
    #10;
    
    t_tb = 1'b1;
    #10;
    
    t_tb = 1'b0;
    #10;
    
    t_tb = 1'b1;
    #10;
    
    t_tb = 1'b1;
    #10;
    
    t_tb = 1'b0;
    #10
   
    $finish;
end

initial begin
    $monitor("clk = %b, rst = %b, sr = %o,q = %d",clk,rst,t_tb,q_tb);
    $dumpfile("t_ff.vcd");
    $dumpvars(0,t_ff_tb);
end

endmodule
