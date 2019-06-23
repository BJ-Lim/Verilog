module alu(ctl, a, b, result, zero);
	input [2:0] ctl;
	input [31:0] a;
	input [31:0] b;
	output [31:0] result;
	output zero;
	
	reg [31:0] result;
	reg zero;
	
	always @ (a or b or ctl)
	begin
		case (ctl)
			3'b000 : result = a & b; //AND
			3'b001 : result = a | b; //OR
			3'b010 : result = a + b; //ADD
			3'b110 : result = a - b; //SUBTRACT
			3'b111 : result = (a < b) ? 32'd1 : 32'd0;	//SLT
			default : result = 32'hxxxx_xxxx;
		endcase
		
		if (result == 32'd0)
			zero = 1;
		else
			zero = 0;
	end

endmodule