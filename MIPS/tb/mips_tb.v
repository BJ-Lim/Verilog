module mips_tb;
	reg clk, reset;
	
	mips_single my_mips (clk, reset);
	
	initial
	begin
		clk = 0;
		reset = 1;
		#80;
		reset = 0;
	end
	always
		#50 clk = ~clk;
endmodule