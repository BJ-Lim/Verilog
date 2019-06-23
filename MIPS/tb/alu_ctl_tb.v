module alu_ctl_tb;
	reg [1:0] tALUOp;
	reg [5:0] tFunct;
	wire [2:0] tALUOperation;
	
	alu_ctl my_alu_ctl (tALUOp, tFunct, tALUOperation);
	
	initial
	begin
		tALUOp = 2'b00;
		#50;
		
		tALUOp = 2'b01;
		#50;
		
		tALUOp = 2'b10;
		tFunct = 6'd32;
		#50;
		
		tFunct = 6'd34;
		#50;
		
		tFunct = 6'd36;
		#50;
		
		tFunct = 6'd37;
		#50;
		
		tFunct = 6'd42;
		#50;
	end

endmodule