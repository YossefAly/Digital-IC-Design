module DSP48A1_TB;

reg [17:0] A;
reg [17:0] B;
reg [47:0] C;
reg [17:0] D;
reg [7:0] OPMODE;
reg [17:0] BCIN;
reg CLK,CARRYIN,RSTA,RSTB,RSTC,RSTD,RSTP,RSTM,RSTCARRYIN,RSTOPMODE;
reg CEA,CEB,CEC,CED,CEP,CEM,CECARRYIN,CEOPMODE;
reg [47:0] PCIN;
wire[17:0] BCOUT;
wire[47:0] P;
wire[47:0] PCOUT;
wire[35:0] M;
wire CARRYOUT,CARRYOUTF;

DSP	DSP48A1_TB(.A(A),.B(B),.C(C),.D(D),.BCIN(BCIN),.CLK(CLK),
			   .CARRYIN(CARRYIN),.OPMODE(OPMODE),.RSTA(RSTA),
			   .RSTB(RSTB),.RSTC(RSTC),.RSTD(RSTD),
			   .RSTP(RSTP),.RSTM(RSTM),.RSTCARRYIN(RSTCARRYIN),
			   .RSTOPMODE(RSTOPMODE),.CEA(CEA),.CEB(CEB),
			   .CEC(CEC),.CED(CED),.CEP(CEP),.CEM(CEM),
			   .CECARRYIN(CECARRYIN),.CEOPMODE(CEOPMODE),
			   .PCIN(PCIN),.BCOUT(BCOUT),.P(P),.PCOUT(PCOUT),.M(M),
			   .CARRYOUT(CARRYOUT),.CARRYOUTF(CARRYOUTF));

initial
	begin
		CLK = 0 ;
		forever #1 CLK=~CLK;
	end
integer i ;
initial
	begin
		A = $random ;
		B = $random ;
		C = $random ;
		D = $random ;
		BCIN = $random ;
		CARRYIN = $random ;
		PCIN = $random ;
		OPMODE = $random ;
		RSTA = 1 ;
		RSTB = 1 ;
		RSTC = 1 ;
		RSTD = 1 ;
		RSTP = 1 ;
		RSTM = 1 ;
		RSTCARRYIN = 1;
		RSTOPMODE = 1;
		CEA = 0 ;
		CEB = 0 ;
		CEC = 0 ;
		CED = 0 ;
		CEP = 0 ;
		CEM = 0 ;
		CECARRYIN = 0 ;
		CEOPMODE = 0 ;
		@(posedge CLK);
		A = $random ;
		B = $random ;
		C = $random ;
		D = $random ;
		BCIN = $random ;
		CARRYIN = $random ;
		PCIN = $random ;
		OPMODE = $random ;
		RSTA = 0 ;
		RSTB = 0 ;
		RSTC = 0 ;
		RSTD = 0 ;
		RSTP = 0 ;
		RSTM = 0 ;
		RSTCARRYIN = 0;
		RSTOPMODE = 0;
		CEA = 0 ;
		CEB = 0 ;
		CEC = 0 ;
		CED = 0 ;
		CEP = 0 ;
		CEM = 0 ;
		CECARRYIN = 0 ;
		CEOPMODE = 0 ;
		@(posedge CLK);
		for(i = 0 ; i<256 ; i=i+1)begin
		A = $random ;
		B = $random ;
		C = $random ;
		D = $random ;
		BCIN = $random ;
		CARRYIN = $random ;
		PCIN = $random ;
		OPMODE = i ;
		RSTA = 0 ;
		RSTB = 0 ;
		RSTC = 0 ;
		RSTD = 0 ;
		RSTP = 0 ;
		RSTM = 0 ;
		RSTCARRYIN = 0;
		RSTOPMODE = 0;
		CEA = 1 ;
		CEB = 1 ;
		CEC = 1 ;
		CED = 1 ;
		CEP = 1 ;
		CEM = 1 ;
		CECARRYIN = 1 ;
		CEOPMODE = 1 ;
		@(posedge CLK);
		end
		$stop;
	end



endmodule