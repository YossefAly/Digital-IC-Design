module DSP(input[17:0] A,input[17:0] B,input[47:0] C,input[17:0] D,
			   input CLK,input CARRYIN,
			   input[7:0] OPMODE,
			   input[17:0] BCIN,
			   input RSTA,input RSTB,input RSTM,input RSTP,input RSTC,input RSTD,input RSTCARRYIN,input RSTOPMODE,
			   input CEA,input CEB,input CEM,input CEP,input CEC,input CED,input CECARRYIN,input CEOPMODE,
			   input[47:0] PCIN,
			   output [17:0] BCOUT,output [47:0] PCOUT,output [47:0] P,output[35:0] M,
			   output CARRYOUT,output CARRYOUTF 
			  );

wire[35:0] xmuxin;
wire[17:0] BOUT;
wire CIN;
wire[7:0] opmodeout;
wire[47:0] outC;
wire[47:0] xmuxout;
wire[47:0] zmuxout;
wire[47:0] outP;
wire[47:0] inP;
wire CYOout;

PortOPMODE OPMODEREG(.OPMODE(OPMODE),.CLK(CLK),.CEOPMODE(CEOPMODE),.RSTOPMODE(RSTOPMODE),.opmodeout(opmodeout));

PortC CREG(.C(C),.CLK(CLK),.CEC(CEC),.RSTC(RSTC),.outC(outC));

PortM MREG(.A(A),.B(B),.D(D),.BCIN(BCIN),.CLK(CLK),
			.OPMODE4(opmodeout[4]),.OPMODE6(opmodeout[6]),.RSTA(RSTA),
			.RSTB(RSTB),.RSTD(RSTD),.RSTM(RSTM),.CEA(CEA),.BCOUT(BOUT),
			.CEB(CEB),.CED(CED),.CEM(CEM),.xmux(xmuxin));

assign M = xmuxin;
assign BCOUT = BOUT;


Carryin CYI(.CARRYIN(CARRYIN),.OPMODE5(opmodeout[5]),.CLK(CLK),.CECARRYIN(CECARRYIN),.RSTCARRYIN(RSTCARRYIN),.CIN(CIN));

PortP PREG(.Postaddsub(inP),.CLK(CLK),.CEP(CEP),.RSTP(RSTP),.outP(outP));

assign P = outP ;

assign xmuxout = (opmodeout[1:0]==0)?0:(opmodeout[1:0]==1)?xmuxin:(opmodeout[1:0]==2)?outP:{D[11:0],A,B};

assign zmuxout = (opmodeout[3:2]==0)?0:(opmodeout[3:2]==1)?PCIN:(opmodeout[3:2]==2)?outP:outC;

assign inP = opmodeout[7]?zmuxout-(xmuxout+CIN):zmuxout+xmuxout+CIN;

assign PCOUT = outP;

dff_mux #(.size(1),.pipeline(1)) CYO(.in(outP[47]),.clk(CLK),.EN(1'b1),.rst(1'b0),.out(CYOout));

assign CARRYOUT = CYOout ;
assign CARRYOUTF = CYOout ;

endmodule