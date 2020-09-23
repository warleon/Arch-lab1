`timescale 1ns/1ns
module MUX_4_1_tb;
	reg [15:0]A;
	reg [15:0]B;
	reg [15:0]C;
	reg [15:0]D;
	reg [1:0]S;
	wire [15:0]O;
	MUX_4_1 muxTest(.a(A),.b(B),.c(C),.d(D),.s(S),.o(O));

	initial begin
		A=4'b0001;B=4'b0010;C=4'b0011;D=4'b0100;S=2'b00;
		#1
		A=4'b0001;B=4'b0010;C=4'b0011;D=4'b0100;S=2'b01;
		#1
		A=4'b0001;B=4'b0010;C=4'b0011;D=4'b0100;S=2'b10;
		#1
		A=4'b0001;B=4'b0010;C=4'b0011;D=4'b0100;S=2'b11;
	end
	initial begin
		$dumpfile("MUX_4_1.vcd");
		$dumpvars;
	end
endmodule
