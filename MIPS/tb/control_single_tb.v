module control_single_tb;
	reg [5:0] topcode;
	wire tRegDst, tALUSrc, tMemtoReg, tRegWrite, tMemRead, tMemWrite, tBranch;
	wire [1:0] tALUOp;
	
	control_single my_control_single (topcode, tRegDst, tALUSrc, tMemtoReg, tRegWrite, tMemRead, tMemWrite, tBranch, tALUOp);
	
	initial
	begin
		topcode = 6'd0;
		#50 topcode = 6'd35;
		#50 topcode = 6'd43;
		#50 topcode = 6'd4;
		#50;
	end

endmodule