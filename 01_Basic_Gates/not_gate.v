module not_gate(
input x,
output reg y
);
always@(*)
begin
    y = ~x;
end
endmodule