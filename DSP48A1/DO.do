vlib work
vlog dff_mux.v PortA.v PortB_D.v PortC.v PortP.v PortM.v PortOPMODE.v Carryin.v DSP48A1.v v1_tb.v
vsim -voptargs=+acc work.DSP48A1_TB
add wave *
run -all