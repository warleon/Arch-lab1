module comparador_tb;
	reg a,b,c,d;
	wire f1,f2,f3;

	Comparador xxx(.a(a),.b(b),.c(c),.d(d),.f1(f1),.f2(f2),.f3(f3));

	initial begin
		a=1'b0;b=1'b0;c=1'b0;d=1'b0;
		#1
		a=1'b0;b=1'b0;c=1'b0;d=1'b1;
		#1
		a=1'b0;b=1'b0;c=1'b1;d=1'b0;
		#1
		a=1'b0;b=1'b0;c=1'b1;d=1'b1;
		#1
		a=1'b0;b=1'b1;c=1'b0;d=1'b0;
		#1
		a=1'b0;b=1'b1;c=1'b0;d=1'b1;
		#1
		a=1'b0;b=1'b1;c=1'b1;d=1'b0;
		#1
		a=1'b0;b=1'b1;c=1'b1;d=1'b1;
		#1
		a=1'b1;b=1'b0;c=1'b0;d=1'b0;
		#1
		a=1'b1;b=1'b0;c=1'b0;d=1'b1;
		#1
		a=1'b1;b=1'b0;c=1'b1;d=1'b0;
		#1
		a=1'b1;b=1'b0;c=1'b1;d=1'b1;
		#1
		a=1'b1;b=1'b1;c=1'b0;d=1'b0;
		#1
		a=1'b1;b=1'b1;c=1'b0;d=1'b1;
		#1
		a=1'b1;b=1'b1;c=1'b1;d=1'b0;
		#1
		a=1'b1;b=1'b1;c=1'b1;d=1'b1;
	end
	initial begin
		$dumpfile("comparador.vcd");
		$dumpvars;
	end
endmodule
