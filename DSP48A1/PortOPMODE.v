module PortOPMODE(input[7:0] OPMODE,
			 input CLK,
			 input CEOPMODE,
			 input RSTOPMODE,
			 output[7:0] opmodeout);


dff_mux #(.size(8),.pipeline(1)) OPMODEREG(.in(OPMODE),.clk(CLK),.EN(CEOPMODE),.rst(RSTOPMODE),.out(opmodeout));

endmodule