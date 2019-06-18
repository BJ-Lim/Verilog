module my_adder(input [5:0]a, input [5:0]b, output [5:0]sum, output cout);

	assign {cout, sum} = a + b;

endmodule
