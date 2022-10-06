transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Harshal/Desktop/eyrc22_sb-3320/SB#3320_Task1B/fsm {C:/Users/Harshal/Desktop/eyrc22_sb-3320/SB#3320_Task1B/fsm/fsm.v}

vlog -vlog01compat -work work +incdir+C:/Users/Harshal/Desktop/eyrc22_sb-3320/SB#3320_Task1B/fsm/simulation/modelsim {C:/Users/Harshal/Desktop/eyrc22_sb-3320/SB#3320_Task1B/fsm/simulation/modelsim/fsm_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  fsm_tb

add wave *
view structure
view signals
run 4000 ps
