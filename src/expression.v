//I will describe three same expression


module expression(
	input A,
	input B,
	output Y
);
	
	and g1 (Y, A, B);

endmodule

//1. gate level expression
module AND_1(
	input A,
	input B,
	output Y
);

	and g1 (Y,A,B);
	
endmodule


//2. data flow expression
module AND_2(
	input A,
	input B,
	output Y
);

	assign Y = A & B;

endmodule


//3. dynamic expression
module AND_3(
	input A,
	input B,
	output Y
);

	assign Y = AND_FUNC(A, B);
	function AND_FUNC(
		input A,
		input B
	);
		if (A & B)  AND_FUNC = 1;
		else			AND_FUNC = 0;
	endfunction

endmodule
