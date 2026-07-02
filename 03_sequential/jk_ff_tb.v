module jk_ff_tb();
reg clk;
reg rst;
reg [1:0] jk_tb;
wire q_tb;

jk_ff dut(clk, rst, jk_tb, q_tb);

initial clk = 0;
always #5 clk = ~clk;

initial begin 
    rst = 1;
    jk_tb = 2'b00;
    #10;
    
    rst = 0;
    jk_tb = 2'b00;
    #10;
    
    jk_tb = 2'b01;
    #10;
    
    jk_tb = 2'b10;
    #10;
    
    jk_tb = 2'b11;
    #10;
    
    jk_tb = 2'b01;
    #10;
    
    jk_tb = 2'b00;
    #10;
    
    $finish;
end

initial begin
    $monitor("clk = %b, rst = %b, sr = %o,q = %d",clk,rst,jk_tb,q_tb);
    $dumpfile("jk_ff.vcd");
    $dumpvars(0,jk_ff_tb);
end

endmodule
