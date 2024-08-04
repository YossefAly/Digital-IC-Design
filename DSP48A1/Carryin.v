module Carryin #(parameter CARRYINSEL = "OPMODE5")
			    (input CARRYIN,
			    input OPMODE5,
			    input CLK,
			    input CECARRYIN,
			    input RSTCARRYIN,
			    output CIN);

generate
	if(CARRYINSEL == "OPMODE5") dff_mux #(.size(1),.pipeline(1)) CARRYINREG(.in(OPMODE5),.clk(CLK),.EN(CECARRYIN),.rst(RSTCARRYIN),.out(CIN));
	else dff_mux #(.size(1),.pipeline(1)) CARRYINREG(.in(CARRYIN),.clk(CLK),.EN(CECARRYIN),.rst(RSTCARRYIN),.out(CIN));
endgenerate

endmodule