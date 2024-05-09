transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/Mux_Structural_Description {C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/Mux_Structural_Description/Mux_Structural_Description.v}

vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/Mux_Structural_Description/simulation/modelsim {C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/Mux_Structural_Description/simulation/modelsim/Mux_Structural_Description.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  Mux_Structural_Description_vlg_tst

add wave *
view structure
view signals
run 80 ns
