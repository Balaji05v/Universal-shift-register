module uni_shift(
 input clk,
 input rst,
 input [1:0] mode,
 input [3:0] data_in,
 output reg [3:0] y
);
 always @(posedge clk or posedge rst) begin
 if (rst)
 y <= 4'b0000; else begin
 case (mode)
 2'b00: y <= y;
 2'b01: y <= {y[2:0], data_in[0]};
 2'b10: y <= {data_in[3], y[3:1]};
 2'b11: y <= data_in;
 default: y <= y;
 endcase
 end
 end
endmodule
