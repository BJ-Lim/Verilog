module mux2_tb;

	reg [31:0] ta;
	reg [31:0] tb;
	wire [31:0] ty;
	reg tsel;
	
	mux2 my_mux2(tsel, ta, tb, ty);
	
	initial
	begin
		ta = 32'd12;
		tb = 32'd6;
		tsel = 0;
		#50;
		tsel = 1;
		#50;
		
		ta = 32'd20;
		tb = 32'd12;
		tsel = 0;
		#50;
		tsel = 1;
		#50;
	end
	
	initial
	begin
		$display("sel = %d, a = %d, b = %d, y = %d", tsel, ta, tb, ty);
	end

endmodule