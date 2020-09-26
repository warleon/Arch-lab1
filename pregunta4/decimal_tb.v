module decimal_tb;
	reg a,b,c,d;
	wire w,x,y,z;

	decimal test(.a(a),.b(b),.c(c),.d(d),.w(w),.x(x),.y(y),.z(z));

	initial begin
		a=0;b=0;c=0;d=0;
		#1
		a=0;b=0;c=0;d=1;
		#1
		a=0;b=0;c=1;d=0;
		#1         
		a=0;b=0;c=1;d=1;
		#1
		a=0;b=1;c=0;d=0;
		#1     
		a=0;b=1;c=0;d=1;
		#1     
		a=0;b=1;c=1;d=0;
		#1         
		a=0;b=1;c=1;d=1;
		#1
		a=1;b=0;c=0;d=0;
		#1             
		a=1;b=0;c=0;d=1;
		#1             
		a=1;b=0;c=1;d=0;
		#1             
		a=1;b=0;c=1;d=1;
		#1             
		a=1;b=1;c=0;d=0;
		#1             
		a=1;b=1;c=0;d=1;
		#1             
		a=1;b=1;c=1;d=0;
		#1             
		a=1;b=1;c=1;d=1;
	end
	initial begin
		$dumpfile("decimal.vcd");
		$dumpvars;
	end
endmodule
