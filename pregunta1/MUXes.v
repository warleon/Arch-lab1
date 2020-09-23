module MUX_2_1(a,b,s,o);
	input [15:0] a;
	input [15:0] b;

	input s;
	output [15:0] o;

	assign o = s?b:a;

endmodule

module MUX_4_1(a,b,c,d,s,o);
	input [15:0] a;
	input [15:0] b;
	input [15:0] c;
	input [15:0] d;
	input  [1:0] s;
	output [15:0] o;

	wire [15:0]a_b;
	wire [15:0]c_d;

	MUX_2_1 result0(.a(a),.b(b),.s(s[0]),.o(a_b));
	MUX_2_1 result1(.a(c),.b(d),.s(s[0]),.o(c_d));

	assign o=s[1]?c_d:a_b;

endmodule

module MUX_8_1(a0,a1,a2,a3,a4,a5,a6,a7,s,o);
	input [15:0] a0;
	input [15:0] a1;
	input [15:0] a2;
	input [15:0] a3;
	input [15:0] a4;
	input [15:0] a5;
	input [15:0] a6;
	input [15:0] a7;
	input  [2:0] s;
	output [15:0] o;

	wire [15:0]a0_3;
	wire [15:0]a4_7;

	MUX_4_1 result0(.a(a0),.b(a1),.c(a2),.d(a3),.s(s[1:0]),.o(a0_3));
	MUX_4_1 result1(.a(a4),.b(a5),.c(a6),.d(a7),.s(s[1:0]),.o(a4_7));

	assign o=s[2]?a4_7:a0_3;

endmodule

module MUX_16_1(a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,s,o);
	input [15:0]a0;
	input [15:0]a1;
	input [15:0]a2;
	input [15:0]a3;
	input [15:0]a4;
	input [15:0]a5;
	input [15:0]a6;
	input [15:0]a7;
	input [15:0]a8;
	input [15:0]a9;
	input [15:0]a10;
	input [15:0]a11;
	input [15:0]a12;
	input [15:0]a13;
	input [15:0]a14;
	input [15:0]a15;
	input [3:0]s;
	output [15:0]o;

	wire [15:0]a0_7;
	wire [15:0]a8_15;

	MUX_8_1 result0(.a0(a0),.a1(a1),.a2(a2),.a3(a3),.a4(a4),.a5(a5),.a6(a6),.a7(a7),.s(s[2:0]),.o(a0_7));
	MUX_8_1 result1(.a0(a8),.a1(a9),.a2(a10),.a3(a11),.a4(a12),.a5(a13),.a6(a14),.a7(a15),.s(s[2:0]),.o(a8_15));
	
	assign o=s[3]?a8_15:a0_7;
endmodule

