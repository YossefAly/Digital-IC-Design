/*********************TESTBENCH****************************/
//This is a test bench for 3 modules 
// 1- SPI_Slave which Takes BLOCKS with number "1"&"0" arguments and verilog to run.
// 2- RAM which Takes BLOCKS with number "2" arguments and verilog to run.
// 3- SPI_wrapper Takes BLOCKS with number "0" arguments and verilog to run.




module TB;

/*************BLOCK "0"*********************/
reg[1:0] readwrite = 2'b00;
reg MOSI,CLK,RST_N,SS_N;
wire MISO;
SPI_wrapper TB2(MOSI,SS_N,CLK,RST_N,MISO);
/*******************************************/

/**************BLOCK "1"********************/
/*
reg TX_VALID;
reg[7:0] TX_DATA;
wire[9:0] RX_DATA;
wire RX_VALID;
SPI_Slave TB0(MOSI,CLK,RST_N,SS_N,TX_DATA,TX_VALID,RX_DATA,RX_VALID,MISO);
*/
/*******************************************/


/**************BLOCK "2"********************/
/*
reg rx_validram;
reg[9:0] din;
wire[7:0] tx_dataram;
wire tx_validram; 
RAM TB1(din,rx_validram,CLK,RST_N,tx_dataram,tx_validram); 
*/
/********************************************/





/**********Clock*************/
initial begin
	CLK = 0;
	forever #1 CLK = ~CLK;
end
/***************************/

initial
	begin

/************SPI SLAVE CHECK**************/
/*
		//Reset Check
		repeat(10)begin
		RST_N = 0 ;
		MOSI = $random;
		SS_N = $random;
		TX_VALID = $random;
		TX_DATA = $random;
		@(negedge CLK);
		end
		//Slave Select Check
		repeat(10)begin
		RST_N = 1 ;
		MOSI = $random;
		SS_N = 1;
		TX_VALID = $random;
		TX_DATA = $random;
		@(negedge CLK);
		end
		//CHK_CMD
		RST_N = 1 ;
		MOSI = 0;
		SS_N = 0;
		TX_VALID = $random;
		TX_DATA = $random;
		repeat(2)@(negedge CLK);
		//WRITE ADD
		repeat(10)begin
		RST_N = 1 ;
		MOSI = $random;
		SS_N = 0;
		TX_VALID = $random;
		TX_DATA = $random;
		@(negedge CLK);
		end
		//BACK TO IDLE
		RST_N = 1 ;
		MOSI = 0;
		SS_N = 1;
		TX_VALID = $random;
		TX_DATA = $random;
		repeat(2)@(negedge CLK);
		//CHK_CMD
		RST_N = 1 ;
		MOSI = 0;
		SS_N = 0;
		TX_VALID = $random;
		TX_DATA = $random;
		@(negedge CLK);
		//WRITE DATA
		repeat(10)begin
		RST_N = 1 ;
		MOSI = $random;
		SS_N = 0;
		TX_VALID = $random;
		TX_DATA = $random;
		@(negedge CLK);
		end
		//BACK TO IDLE
		RST_N = 1 ;
		MOSI = 0;
		SS_N = 1;
		TX_VALID = $random;
		TX_DATA = $random;
		repeat(2)@(negedge CLK);
		//CHK_CMD
		RST_N = 1 ;
		MOSI = 1;
		SS_N = 0;
		TX_VALID = $random;
		TX_DATA = $random;
		repeat(2)@(negedge CLK);
		//READ DATA
		repeat(10)begin
		RST_N = 1 ;
		MOSI = $random;
		SS_N = 0;
		TX_VALID = $random;
		TX_DATA = $random;
		@(negedge CLK);
		end
		//IDLE
		RST_N = 1 ;
		MOSI = 0;
		SS_N = 1;
		TX_VALID = $random;
		TX_DATA = $random;
		repeat(2)@(negedge CLK);
		//CHK_CMD
		RST_N = 1 ;
		MOSI = 1;
		SS_N = 0;
		TX_VALID = $random;
		TX_DATA = $random;
		repeat(2)@(negedge CLK);
		//READ ADD
		repeat(8)begin
		RST_N = 1 ;
		MOSI = $random;
		SS_N = 0;
		TX_VALID = 1;
		TX_DATA = 8'b10011110;
		@(negedge CLK);
		end
		RST_N = 1 ;
		MOSI = $random;
		SS_N = 0;
		TX_VALID = 0;
		TX_DATA = 8'b10011110;
		@(negedge CLK);
		//BACK TO IDLE
		RST_N = 1 ;
		MOSI = 0;
		SS_N = 1;
		TX_VALID = $random;
		TX_DATA = $random;
		repeat(2)@(negedge CLK);
		#10;
*/
/***********************************************/

/************RAM CHECK**************************/
/*
		 repeat(10)begin
		 rx_validram = $random;
	 	 din = $random;
	 	 RST_N = 0 ;
	 	 @(negedge CLK);
	 	 end
		 repeat(10000)begin
		 rx_validram = $random;
	 	 din = $random;
	 	 RST_N = 1 ;
	 	 @(negedge CLK);
	 	 end
	 	 #10;
*/
/************************************************/

/************SPI Wrapper CHECK*******************/
		repeat(10)begin
		RST_N = 0 ;
		SS_N = $random ;
		MOSI = $random ;
		@(negedge CLK);
		end
		repeat(10)begin
		RST_N = 1 ;
		SS_N =  1 ;
		MOSI = $random ;
		@(negedge CLK);
		end
		repeat(1000)begin
			RST_N = 1;
			SS_N = 0 ;
			MOSI = $random; 
			@(negedge CLK);
			MOSI = $random;
			@(negedge CLK);
			if(MOSI)begin
				repeat(8)begin
					MOSI = $random;
					readwrite = 2'b10;
					@(negedge CLK);
				end

				MOSI = readwrite[0];
				@(negedge CLK);
				MOSI = readwrite[1];
				@(negedge CLK);
				SS_N = 1 ;
				readwrite = 2'b11;
				@(negedge CLK);
				SS_N = 0 ;
				MOSI = $random ;
				@(negedge CLK);
				MOSI = 1;
				@(negedge CLK);
				repeat(8)begin
					MOSI = $random;
					@(negedge CLK);
				end
				MOSI = readwrite[0];
				@(negedge CLK);
				MOSI = readwrite[1];
				repeat(9)@(negedge CLK);
				SS_N = 1;
				@(negedge CLK);
			end
			else begin
				repeat(8)begin
					MOSI = $random ;
					readwrite = 2'b00;
					@(negedge CLK) ;
				end
				MOSI = readwrite[0];
				@(negedge CLK);
				MOSI = readwrite[1];
				@(negedge CLK);
				readwrite = 2'b01 ;	
				SS_N = 1 ;
				@(negedge CLK);
				SS_N = 0 ;
				MOSI = 0 ;
				repeat(2)@(negedge CLK);
				repeat(8) begin
					MOSI = $random ;
					@(negedge CLK);
				end 
				MOSI = readwrite[0];
				@(negedge CLK);
				MOSI = readwrite[1];
				@(negedge CLK);
				SS_N = 1 ;
				@(negedge CLK);			
			end
				
		end
		$stop;

	end










endmodule