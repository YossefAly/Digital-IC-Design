module RAM(input[9:0] din, 
		   input rx_valid,
		   input clk,
		   input rst_n,
		   output reg[7:0] tx_data,
		   output reg tx_valid);


reg[7:0] Memory[255:0];
reg[7:0] addressW;
reg[7:0] addressR;

always @(posedge clk) begin
	if (~rst_n) begin
		tx_data = 0 ;
		tx_valid = 0 ;
		addressW = 0 ;
		addressR = 0 ;
	end
	else begin
			tx_valid = 0;
		case(din[9:8])
			2'b00:if (rx_valid) addressW = din[7:0];
			2'b01:if (rx_valid) Memory[addressW] = din[7:0];
			2'b10:if (rx_valid) addressR =din[7:0] ;
			2'b11:{tx_valid,tx_data} = {1'b1,Memory[addressR]};
		endcase

	end
end











endmodule