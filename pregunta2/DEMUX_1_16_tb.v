`timescale 1ns/1ns
module DEMUX_1_16_tb;
	reg [15:0]V;
	reg [3:0]S;

	wire [15:0]a0;
	wire [15:0]a1;
	wire [15:0]a2;
	wire [15:0]a3;
	wire [15:0]a4;
	wire [15:0]a5;
	wire [15:0]a6;
	wire [15:0]a7;
	wire [15:0]a8;
	wire [15:0]a9;
	wire [15:0]a10;
	wire [15:0]a11;
	wire [15:0]a12;
	wire [15:0]a13;
	wire [15:0]a14;
	wire [15:0]a15;

	DEMUX_1_16 demuxTest(.v(V),.s(S),.a0(a0),.a1(a1),.a2(a2),.a3(a3),.a4(a4),.a5(a5),.a6(a6),.a7(a7),.a8(a8),.a9(a9),.a10(a10),.a11(a11),.a12(a12),.a13(a13),.a14(a14),.a15(a15));

	initial begin
		V=4'b1111;S=4'b0000;
		#1
		V=4'b1111;S=4'b0001;
		#1
		V=4'b1111;S=4'b0010;
		#1
		V=4'b1111;S=4'b0011;
		#1
		V=4'b1111;S=4'b0100;
		#1
		V=4'b1111;S=4'b0101;
		#1
		V=4'b1111;S=4'b0110;
		#1
		V=4'b1111;S=4'b0111;
		#1
		V=4'b1111;S=4'b1000;
		#1
		V=4'b1111;S=4'b1001;
		#1
		V=4'b1111;S=4'b1010;
		#1
		V=4'b1111;S=4'b1011;
		#1
		V=4'b1111;S=4'b1100;
		#1
		V=4'b1111;S=4'b1101;
		#1
		V=4'b1111;S=4'b1110;
		#1
		V=4'b1111;S=4'b1111;
	end
	initial begin
		$dumpfile("DEMUX_1_16.vcd");
		$dumpvars;
	end
endmodule
