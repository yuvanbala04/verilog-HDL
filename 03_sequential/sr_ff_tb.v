module sr_ff_tb();
reg clk;
reg rst;
reg [1:0] sr_tb;
wire q_tb;

sr_ff dut(clk, rst, sr_tb, q_tb);

initial clk = 0;
always #5 clk = ~clk;

initial begin 
    rst = 1;
    sr_tb = 2'b00;
    #10;
    
    rst = 0;
    sr_tb = 2'b00;
    #10;
    
    sr_tb = 2'b01;
    #10;
    
    sr_tb = 2'b10;
    #10;
    
    sr_tb = 2'b11;
    #10;
    
    sr_tb = 2'b01;
    #10;
    
    sr_tb = 2'b00;
    #10;
    
    $finish;
end

initial begin
    $monitor("clk = %b, rst = %b, sr = %o,q = %d",clk,rst,sr_tb,q_tb);
    $dumpfile("sr_ff.vcd");
    $dumpvars(0,sr_ff_tb);
end

endmodule
