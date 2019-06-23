module rom32_tb;
	reg [31:0] taddress;
	wire [31:0] tdata_out;
	reg [2:0] i;
	
	rom32 my_rom32 (taddress, tdata_out);
	
	initial
	begin
		for(i=0; i < 8; i=i+1)
		begin
			taddress = {27'd0,i,2'd0};
			#50;
		end
	end

endmodule