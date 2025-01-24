module uni_shift_tb;
 reg clk, rst;
 reg [1:0] mode;
 reg [3:0] data_in;
 wire [3:0] y;
 uni_shift uut (.clk(clk), .rst(rst), .mode(mode), .data_in(data_in), .y(y));
 initial begin  clk = 0;  rst = 1;  #5 rst = 0;
 #10 mode = 2'b11; data_in = 4'b1100;
 #10 mode = 2'b01; data_in = 4'b0000;
 #10 mode = 2'b10; data_in = 4'b0000;
 #10 mode = 2'b00; data_in = 4'b0000;
 #10;
 $stop;
 end
endmodule
