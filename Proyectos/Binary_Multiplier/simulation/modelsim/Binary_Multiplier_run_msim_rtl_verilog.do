transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/Binary_Multiplier {C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/Binary_Multiplier/Binary_Multiplier.v}

vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/Binary_Multiplier/simulation/modelsim {C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/Binary_Multiplier/simulation/modelsim/Binary_Multiplier.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  Binary_Multiplier_vlg_tst

add wave *
view structure
view signals
run 300 ns
