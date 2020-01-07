
vlog -reportprogress 300 -work work ../rtl/mano_dcd.v
vlog -reportprogress 300 -work work ../rtl/mano_dff.v
vlog -reportprogress 300 -work work ../rtl/mano_cntr.v
vlog -reportprogress 300 -work work ../rtl/mano_reg.v
vlog -reportprogress 300 -work work ../rtl/mano_mem.v
vlog -reportprogress 300 -work work ../rtl/mano_alu.v
vlog -reportprogress 300 -work work ../rtl/mano_dp.v
vlog -reportprogress 300 -work work ../rtl/mano_cp.v
vlog -reportprogress 300 -work work ../rtl/mano_core.v
vlog -reportprogress 300 -work work ../rtl/mano_core_tb.v

vsim -t ns  mano_core_tb -pli ../pli/pli_modelsim.sl
do wave.do
run 3000

