module PortA(input[17:0] A,
			 input CLK,
			 input CEA,
			 input RSTA,
			 output[17:0] outA1);

wire[17:0] outA0;

dff_mux #(.size(18),.pipeline(0)) A0REG(.in(A),.clk(CLK),.EN(CEA),.rst(RSTA),.out(outA0));
dff_mux #(.size(18),.pipeline(1)) A1REG(.in(outA0),.clk(CLK),.EN(CEA),.rst(RSTA),.out(outA1));

endmodule