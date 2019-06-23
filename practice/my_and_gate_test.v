module my_and_gate_test;

	reg a, b;
	wire c;
	
	my_and_gate my_and_gate_var(a, b, c);
	
	initial
	begin
	
		a = 1'b0;
		b = 1'b0;
		#100;
		a = 1'b1;
		b = 1'b0;
		#100;
		a = 1'b0;
		b = 1'b1;
		#100;
		a = 1'b1;
		b = 1'b1;
		#100;
		
	
	end

endmodule