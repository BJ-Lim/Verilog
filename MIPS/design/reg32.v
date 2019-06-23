module reg32(clk, reset, d_in, d_out);
	input clk;
	input reset;
	input [31:0] d_in;
	output [31:0] d_out;
	
	reg [31:0] d_out;
	
	always @(posedge clk)
	begin
		d_out <= (reset) ? 0 : d_in;
	end
	

endmodule