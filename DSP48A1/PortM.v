module PortM(input[17:0] A,
			 input[17:0] B,
			 input[17:0] D,
			 input[17:0] BCIN,
			 input CLK,
			 input CEM,
			 input RSTM,
			 input OPMODE4,
			 input OPMODE6,
			 input CEB,
			 input CED,
			 input RSTB,
			 input RSTD,
			 input CEA,
			 input RSTA,
			 output[17:0] BCOUT,		 
			 output[35:0] xmux);


wire[17:0] outB1;


wire [17:0] outA1;
wire [35:0] MREGin;
wire [35:0] MREGout;

PortB_D Minput1(.B(B),.D(D),.BCIN(BCIN),.CLK(CLK),.CEB(CEB),.CED(CED),.RSTB(RSTB),.RSTD(RSTD),
			    .OPMODE4(OPMODE4),.OPMODE6(OPMODE6),.outB1(outB1));

assign BCOUT = outB1;

PortA Minput2(.A(A),.CLK(CLK),.CEA(CEA),.RSTA(RSTA),.outA1(outA1));

assign MREGin = outA1*outB1;

dff_mux #(.size(36),.pipeline(1)) mREG(.in(MREGin),.clk(CLK),.EN(CEM),.rst(RSTM),.out(MREGout));

assign xmux = MREGout;


endmodule