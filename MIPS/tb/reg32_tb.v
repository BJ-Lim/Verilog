module reg32_tb;
	reg [31:0]	td_in;
	wire [31:0]	td_out;
	reg	tclk;
	reg	treset;
	
	reg32 my_reg32(tclk, treset, td_in, td_out);
	
	initial
	begin
		td_in = 32'd12;
		treset = 1;
		tclk = 0;
		
		#80;
		treset = 0;
		
		#130;
		td_in = 32'd6;
	end
	
	always
		# 50 tclk = ~tclk;


endmodule