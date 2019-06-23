module reg_file(clk, RegWrite, RN1, RN2, WN, RD1, RD2, WD);
	input clk;
	input RegWrite;
	input [4:0] RN1, RN2, WN;
	input [31:0] WD;
	output [31:0] RD1, RD2;
	
	reg [31:0] RD1, RD2;
	reg [31:0] file_array [31:1];
	
	always @(RN1 or file_array[RN1])
	begin
		RD1 = !RN1 ? 32'd0 : file_array[RN1];
		$display($time, " reg_file[%d] => %d (Port1)", RN1, RD1);
	end
	
	always @(RN2 or file_array[RN2])
	begin
		RD2 = !RN2 ? 32'd0 : file_array[RN2];
		$display($time, " reg_file[%d] => %d (Port2)", RN2, RD2);
	end
	
	always @(posedge clk)
	if (RegWrite && (WN != 0))		//reg_file[0] is read-only
	begin
		file_array[WN] <= WD;
		$display($time, " reg_file[%d] <= %d (Write)", WN, WD);
	end

endmodule