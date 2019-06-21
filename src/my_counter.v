
/*
	Board model is EP4CE22F17C6N
	Pins are set as follow.
	
	CLOCK_50				clock_pin(R8)
	counter_out[7]		led_pin(L3)
	counter_out[6]		led_pin(B1)
	counter_out[5]		led_pin(F3)
	counter_out[4]		led_pin(D1)
	counter_out[3]		led_pin(A11)
	counter_out[2]		led_pin(B13)
	counter_out[1]		led_pin(A13)
	counter_out[0]		led_pin(A15)
	reset					button(E1)
*/

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