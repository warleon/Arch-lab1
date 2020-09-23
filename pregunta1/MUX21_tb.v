`timescale 1ns/1ns
module MUX_2_1_tb;
	reg A,B,S;
	wire r;

	MUX_2_1 muxTest(.a(A),.b(B),.s(S),.o(r));

	initial begin
		A=0;
		B=1;
		S=0;
		#1
		A=0;
		B=1;
		S=1;
		#1
		A=1;
		B=0;
		S=0;
		#1
		A=1;
		B=0;
		S=1;
	end
	initial begin
		$dumpfile("MUX_2_1.vcd");
		$dumpvars;
	end
endmodule
