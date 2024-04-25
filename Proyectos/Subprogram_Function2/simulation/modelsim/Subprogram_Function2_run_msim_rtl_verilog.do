transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/Subprogram_Function2 {C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/Subprogram_Function2/Subprogram_Function2.v}

vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/Subprogram_Function2/simulation/modelsim {C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/Subprogram_Function2/simulation/modelsim/Subprogram_Function2.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  Subprogram_Function2_vlg_tst

add wave *
view structure
view signals
run 200 ns
