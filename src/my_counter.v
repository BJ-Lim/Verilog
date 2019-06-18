module my_counter(
	input reset,
	input CLOCK_50,
	output [7:0] counter_out
);

	reg [7:0] counter;
	reg [27:0] clk_counter;
	
	always @ (posedge CLOCK_50)
	begin
		if(!reset)		//reset button is basically 1.
			begin
			counter <= 8'b00000000;
			clk_counter <= 28'd0;
			end
		else
			begin
			clk_counter <= clk_counter + 1;
			if(clk_counter >= 20'hfffff * 48)	//This value was modified because of delay
				begin
				counter <= counter + 1;
				clk_counter <= 28'd0;
				end
			end
			
	end
	
	assign counter_out = counter;

endmodule