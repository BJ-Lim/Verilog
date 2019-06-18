module my_adder_test;

	reg [5:0] a;
	reg [5:0] b;
	wire [5:0] sum;
	wire cout;
	
	my_adder my_adder_var(a, b, sum, cout);
	
	initial
	begin
	
		a = 6'd1;
		b = 6'd2;
		#100;
		a = 6'd10;
		b = 6'd30;
		#100;
		a = 6'd20;
		b = 6'd40;
		#100;
		a = 6'd4;
		b = 6'd3;
		#100;
		a = 6'b11_1111;
		b = 6'b00_0001;
		#100;
	
	end

endmodule