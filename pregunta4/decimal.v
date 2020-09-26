module decimal(a,b,c,d,w,x,y,z);
	input a,b,c,d;
	output w,x,y,z;

	assign w= (a&~d)|(b&c&d);
	assign x= (~b&c&d)|(b&~c&d)|(~a&b&~d)|(a&c&~d);
	assign y= (~a&~c&d)|(c&~d);
	assign z= (~c&~d)|(c&~d);
endmodule
