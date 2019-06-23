module mem32_tb;
	reg [31:0]	tdata_in;
	wire [31:0]	tdata_out;
	reg [31:0]	taddress;
	reg tclk, tmem_read, tmem_write;
	
	mem32 my_mem32 (tclk, tmem_read, tmem_write, taddress, tdata_in, tdata_out);
	
	initial
	begin
		tmem_read = 0;
		tmem_write = 0;
		tclk = 0;
		
		#30;
		tmem_write = 1;
		tdata_in = 32'd12;
		taddress = 32'b0000_0000_0000_0000_0000_0000_0000_0100;	//0x00000004
		
		#50;
		tdata_in = 32'd6;
		taddress = 32'b0000_0000_0000_0000_0000_0000_0000_1000;	//0x00000008
		
		#100;
		tmem_write = 0;
		
		#50;
		tmem_read = 1;
		taddress = 32'b0000_0000_0000_0000_0000_0000_0000_0100;	//0x00000004
		
		#50;
		tmem_read = 0;
		taddress = 32'b0000_0000_0000_0000_0000_0000_0000_1000;	//0x00000004
		
		#50;
		tmem_read = 1;
	end
	
	always
		#50 tclk = ~tclk;

endmodule