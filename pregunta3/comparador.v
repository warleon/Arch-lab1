module Comparador(a,b,c,d,f1,f2,f3);
	input a,b,c,d;
	output reg f1,f2,f3;

	wire [1:0]ab;
	wire [1:0]cd;

	assign ab[1]=a;
	assign ab[0]=b;
	assign cd[1]=c;
	assign cd[0]=d;

	always@(ab,cd)
	begin
		if(ab==cd)begin f1=1;f2=0;f3=0; end
		if(ab<cd)begin f1=0;f2=1;f3=0; end
		if(ab>cd)begin f1=0;f2=0;f3=1; end
	end

endmodule
