module PortP(input[47:0] Postaddsub,
			 input CLK,
			 input CEP,
			 input RSTP,
			 output[47:0] outP);


dff_mux #(.size(48),.pipeline(1)) PREG(.in(Postaddsub),.clk(CLK),.EN(CEP),.rst(RSTP),.out(outP));

endmodule