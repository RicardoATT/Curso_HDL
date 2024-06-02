transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Ricardo\ Aldair\ TT/Documents/RATT_repos/Curso_HDL/Proyectos/FSM_1ShiftRegister {C:/Users/Ricardo Aldair TT/Documents/RATT_repos/Curso_HDL/Proyectos/FSM_1ShiftRegister/FSM_1ShiftRegister.v}

vlog -vlog01compat -work work +incdir+C:/Users/Ricardo\ Aldair\ TT/Documents/RATT_repos/Curso_HDL/Proyectos/FSM_1ShiftRegister/simulation/modelsim {C:/Users/Ricardo Aldair TT/Documents/RATT_repos/Curso_HDL/Proyectos/FSM_1ShiftRegister/simulation/modelsim/FSM_1ShiftRegister.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  FSM_1ShiftRegister_vlg_tst

add wave *
view structure
view signals
run 300 ns
