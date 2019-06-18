module my_and_gate(input a, input b, output c);

	assign c = ~a & ~b;

endmodule