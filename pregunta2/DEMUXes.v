module DEMUX_1_2(v,s,a0,a1);
	input [15:0] v;
	input s;
	output [15:0] a0;
	output [15:0] a1;

	assign a0=s?1'bx:v;
	assign a1=s?v:1'bx;
endmodule

module DEMUX_1_4(v,s,a0,a1,a2,a3);
	input [15:0] v;
	input [1:0] s;
	output [15:0] a0;
	output [15:0] a1;
	output [15:0] a2;
	output [15:0] a3;

	wire [15:0] a0_a1;
	wire [15:0] a2_a3;

	DEMUX_1_2 master(.v(v),.s(s[1]),.a0(a0_a1),.a1(a2_a3));

	DEMUX_1_2 branch0(.v(a0_a1),.s(s[0]),.a0(a0),.a1(a1));
	DEMUX_1_2 branch1(.v(a2_a3),.s(s[0]),.a0(a2),.a1(a3));
endmodule

module DEMUX_1_16(v,s,a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15);
	input [15:0] v;
	input [3:0] s;
	output [15:0] a0;
	output [15:0] a1;
	output [15:0] a2;
	output [15:0] a3;
	output [15:0] a4;
	output [15:0] a5;
	output [15:0] a6;
	output [15:0] a7;
	output [15:0] a8;
	output [15:0] a9;
	output [15:0] a10;
	output [15:0] a11;
	output [15:0] a12;
	output [15:0] a13;
	output [15:0] a14;
	output [15:0] a15;

	wire [15:0] a0_a3;
	wire [15:0] a4_a7;
	wire [15:0] a8_a11;
	wire [15:0] a12_a15;

	DEMUX_1_4 master(.v(v),.s(s[3:2]),.a0(a0_a3),.a1(a4_a7),.a2(a8_a11),.a3(a12_a15));

	DEMUX_1_4 branch00(.v(a0_a3),.s(s[1:0]),.a0(a0),.a1(a1),.a2(a2),.a3(a3));
	DEMUX_1_4 branch01(.v(a4_a7),.s(s[1:0]),.a0(a4),.a1(a5),.a2(a6),.a3(a7));
	DEMUX_1_4 branch10(.v(a8_a11),.s(s[1:0]),.a0(a8),.a1(a9),.a2(a10),.a3(a11));
	DEMUX_1_4 branch11(.v(a12_a15),.s(s[1:0]),.a0(a12),.a1(a13),.a2(a14),.a3(a15));
endmodule
