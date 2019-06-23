//This is for expression test

module expression_test;

	reg A;
	reg B;
	wire Y1;
	wire Y2;
	wire Y3;
	
	AND_1 AND1 (A, B, Y1);
	AND_2 AND2 (A, B, Y2);
	AND_3 AND3 (A, B, Y3);
	
	initial
	begin
	
	A = 1'b0;
	B = 1'b0;
	#100;
	
	A = 1'b0;
	B = 1'b1;
	#100;
	
	A = 1'b1;
	B = 1'b0;
	#100;
	
	A = 1'b1;
	B = 1'b1;
	#100;
	
	end

endmodule
