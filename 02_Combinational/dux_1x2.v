module dux_1x2(input x,sel, output reg [1:0]y);
always@(*)begin
y = 2'b00;
case(sel)
    1'b0: y[0] = x;
    1'b1: y[1] = x;
endcase
end
endmodule
