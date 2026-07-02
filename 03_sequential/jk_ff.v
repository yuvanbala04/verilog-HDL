module jk_ff(
input clk,
input rst,
input [1:0] jk,
output reg q
    );

always@ (posedge clk or posedge rst) begin
    if(rst)
        q <= 1'b0;
    else begin
        case(jk)
            2'b00: q <= q;
            2'b01: q <= 1'b0;
            2'b10: q <= 1'b1;
            2'b11: q <= ~q;
            default: q <= q;
        endcase
    end
end

endmodule
