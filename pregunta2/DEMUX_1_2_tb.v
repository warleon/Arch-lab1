`timescale 1ns/1ns
module DEMUX_1_2_tb;
	reg [15:0]V;
	reg S;

	wire [15:0]a0;
	wire [15:0]a1;

	DEMUX_1_2 demuxTest(.v(V),.s(S),.a0(a0),.a1(a1));

	initial begin
		V=4'b1111;S=1'b0;
		#1
		V=4'b1111;S=1'b1;
	end
	initial begin
		$dumpfile("DEMUX_1_2.vcd");
		$dumpvars;
	end
endmodule
