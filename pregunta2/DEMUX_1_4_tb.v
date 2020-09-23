`timescale 1ns/1ns
module DEMUX_1_4_tb;
	reg [15:0]V;
	reg [1:0]S;

	wire [15:0]a0;
	wire [15:0]a1;
	wire [15:0]a2;
	wire [15:0]a3;

	DEMUX_1_4 demuxTest(.v(V),.s(S),.a0(a0),.a1(a1),.a2(a2),.a3(a3));

	initial begin
		V=4'b1111;S=2'b00;
		#1
		V=4'b1111;S=2'b01;
		#1
		V=4'b1111;S=2'b10;
		#1
		V=4'b1111;S=2'b11;
	end
	initial begin
		$dumpfile("DEMUX_1_4.vcd");
		$dumpvars;
	end
endmodule
