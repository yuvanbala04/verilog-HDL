`timescale 1ns / 1ps
module or_gate_tb();

reg a_tb;
reg b_tb;
wire y_tb;
    
or_gate dut(a_tb,b_tb,y_tb);

initial begin
$monitor ("a = %b b = %b y = %b",a_tb,b_tb,y_tb);

    a_tb = 0;
    b_tb = 0;
    #1;
    
    a_tb = 0;
    b_tb = 1;
    #1;
    
    a_tb = 1;
    b_tb = 0;
    #1;
    
    a_tb = 1;
    b_tb = 1;
    #1;
$finish;

end

endmodule