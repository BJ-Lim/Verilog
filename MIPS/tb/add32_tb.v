module add32_tb;

	reg [31:0] ta;
	reg [31:0] tb;
	wire [31:0] tr;
	
	add32 my_add32(ta, tb, tr);
	
	initial
	begin
		ta = 32'd12;
		tb = 32'd6;
		#50;
		ta = 32'd20;
		tb = 32'd12;
		#50;
	end
	
	initial
	begin
		$monitor("a = %d, b = %d, r = %d", ta, tb, tr);
	end

endmodule