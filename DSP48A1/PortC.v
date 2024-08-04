module PortC(input[47:0] C,
			 input CLK,
			 input CEC,
			 input RSTC,
			 output[47:0] outC);


dff_mux #(.size(48),.pipeline(1)) CREG(.in(C),.clk(CLK),.EN(CEC),.rst(RSTC),.out(outC));

endmodule