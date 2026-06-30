module mux_4x1(
input [3:0]x,
input [1:0]sel,
output reg y
    );
always@ (*)begin
    case(sel)
    2'b00: y = x[3];
    2'b01: y = x[2];
    2'b10: y = x[1];
    2'b11: y = x[0];
    default: y = 1'b0;
    endcase
end
endmodule
