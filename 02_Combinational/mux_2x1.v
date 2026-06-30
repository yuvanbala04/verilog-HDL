module mux_2x1(
input [1:0]x,
input sel,
output y
    );
assign y = sel? x[1] : x[0];
endmodule
