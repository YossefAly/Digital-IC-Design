module SPI_Slave #(parameter IDLE = 2'b00,
				   parameter CHK_CMD =2'b01,
				   parameter WRITE = 2'b10,
				   parameter READ = 2'b11)
				  (input MOSI,
				   input SCLK,
				   input rst_n,
				   input SS_n,
				   input[7:0] tx_data,
				   input tx_valid,
				   output reg[9:0] rx_data,
				   output reg rx_valid,
				   output reg MISO);



(* fsm_encoding = "gray" *)

reg[1:0] cs,ns;

always @(posedge SCLK) begin
	if (~rst_n)cs = IDLE;
	else cs = ns;
end

always @(posedge SCLK) begin
	
	case(cs)
	IDLE: ns = (!SS_n)?CHK_CMD:IDLE;
	CHK_CMD: ns = (!SS_n)?(MOSI?READ:WRITE):IDLE; 
	WRITE: ns = (!SS_n)?WRITE:IDLE;
	READ: ns = (!SS_n)?READ:IDLE;
	endcase

end

integer i;
reg READADD = 1;

always @(posedge SCLK) begin
		
	if(cs == IDLE)begin 
		rx_data = 0;
		rx_valid = 0;	
		i = 0 ;
	end
	else if(cs == CHK_CMD) begin
		rx_data = 0;
		rx_valid = 0;	
		i = 0 ;
	end
	else if (cs == WRITE) begin
		rx_data[i] = MOSI ;
		i = i + 1 ;
		if(i == 10) rx_valid = 1 ; 
	end
	else if(cs == READ)begin
		if(READADD)begin
			rx_data[i] = MOSI ;
			i = i + 1;
			if(i == 10) begin 
			READADD = 0;
			rx_valid = 1;
			end
		end
		else begin
			if(!rx_valid)begin
				rx_data[i] = MOSI ;
				i = i + 1;
				if(i == 10) begin
					rx_valid = 1;
					i = 0 ;
				end
			end
			else if (tx_valid) begin
				MISO = tx_data[i];
				i = i + 1 ;
				if(i == 9) READADD = 1;
			end
		end
	end
end






endmodule