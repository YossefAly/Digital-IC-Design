module PortB_D#(parameter B_INPUT = "DIRECT")
			   (input[17:0] B,
			   input[17:0] D,
			   input[17:0] BCIN,
			   input OPMODE4,
			   input OPMODE6,
			   input CLK,
			   input CEB,
			   input CED,
			   input RSTB,
			   input RSTD,
			   output[17:0] outB1);


wire[17:0] outD;
wire[17:0] outB0;
wire[17:0] preadderout;
wire[17:0] B1REGin;
wire[17:0] out;

generate
	if(B_INPUT == "DIRECT") dff_mux #(.size(18),.pipeline(0)) B0REG(.in(B),.clk(CLK),.EN(CEB),.rst(RSTB),.out(outB0));
	else dff_mux #(.size(18),.pipeline(0)) B0REG(.in(BCIN),.clk(CLK),.EN(CEB),.rst(RSTB),.out(outB0));
	
endgenerate

dff_mux #(.size(18),.pipeline(1)) DREG(.in(D),.clk(CLK),.EN(CED),.rst(RSTD),.out(outD));

assign preadderout = OPMODE6?outD-outB0:outD+outB0;

assign B1REGin = OPMODE4?preadderout:outB0;

dff_mux #(.size(18),.pipeline(1)) B1REG(.in(B1REGin),.clk(CLK),.EN(CEB),.rst(RSTB),.out(out));

assign outB1 = out;


endmodule