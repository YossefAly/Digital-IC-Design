vlib work
vlog SPI_slave.v TB.v RAM.v SPI_wrapper.v
vsim -voptargs=+acc work.TB

#--------test bench waves----------------
#add wave * 
#--------SPI SLAVE FSM waves-------------
#add wave -position insertpoint  \
#sim:/TB/TB0/ns \
#sim:/TB/TB0/cs
#-----------RAM waves-------------------
#add wave -position insertpoint  \
#sim:/TB/TB1/Memory
#add wave -position insertpoint  \
#sim:/TB/TB1/addressW \
#sim:/TB/TB1/addressR
#----------SPI wrapper waves------------
add wave -position insertpoint  \
sim:/TB/TB2/tx_valid \
sim:/TB/TB2/tx_data \
sim:/TB/TB2/SS_n \
sim:/TB/TB2/rx_valid \
sim:/TB/TB2/rx_data \
sim:/TB/TB2/rst_n \
sim:/TB/TB2/MOSI \
sim:/TB/TB2/MISO \
sim:/TB/TB2/clk \
sim:/TB/TB2/SPI/ns \
sim:/TB/TB2/SPI/cs \
sim:/TB/TB2/Memory/Memory \
sim:/TB/TB2/Memory/addressW \
sim:/TB/TB2/Memory/addressR \
sim:/TB/readwrite
run -all