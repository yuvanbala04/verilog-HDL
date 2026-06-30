`timescale 1ns / 1ps
module not_gate_tb();

reg x_tb;
wire y_tb;
    
not_gate dut(x_tb,y_tb);

initial begin
$monitor ("x = %b y = %b",x_tb,y_tb);

    x_tb = 0;
    #1;
    
    x_tb = 1;
    #1;
    
$finish;

end

endmodule