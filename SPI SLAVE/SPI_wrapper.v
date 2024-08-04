module SPI_wrapper(input MOSI,
				   input SS_n,
				   input clk,
				   input rst_n,
				   output MISO);



wire[7:0] tx_data;
wire tx_valid;
wire[9:0] rx_data;
wire rx_valid;


SPI_Slave SPI(MOSI,clk,rst_n,SS_n,tx_data,tx_valid,rx_data,rx_valid,MISO);

RAM Memory(rx_data,rx_valid,clk,rst_n,tx_data,tx_valid);





endmodule