module alu_tb;
	reg [31:0] ta;
	reg [31:0] tb;
	reg [2:0] tctl;
	wire [31:0] tresult;
	wire tzero;
	
	alu my_alu(tctl, ta, tb, tresult, tzero);
	
	initial
	begin
		ta = 32'd12;
		tb = 32'd6;
		
		tctl = 3'b000;	#50;	//AND
		tctl = 3'b001;	#50;	//OR
		tctl = 3'b010;	#50;	//ADD
		tctl = 3'b110;	#50;	//SUBTRACT
		tctl = 3'b111;	#50;	//SLT
	end
	
	initial
	begin
		$monitor("ctl = %b, a = %d, b = %d, result = %d, zero = %b", tctl, ta, tb, tresult, tzero);
	end
	
endmodule