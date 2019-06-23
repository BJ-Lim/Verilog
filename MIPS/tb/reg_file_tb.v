module reg_file_tb;
	reg [31:0] tWD;
	reg [4:0] tRN1, tRN2, tWN;
	wire [31:0] tRD1, tRD2;
	reg tclk, tRegWrite;
	
	reg_file my_reg_file (tclk, tRegWrite, tRN1, tRN2, tWN, tRD1, tRD2, tWD);
	
	initial
	begin
		tclk = 0;
		tRegWrite = 1;
		
		#50;
		tWD = 32'd200;
		tWN = 5'd1;
		
		#50;
		tWD = 32'd300;
		tWN = 5'd7;
		tRegWrite = 1;
		
		#50;
		
		#50;
		tRN1 = 5'd1;
		tRN2 = 5'd7;
		
	end
	
	always
		#50 tclk = ~tclk;

endmodule