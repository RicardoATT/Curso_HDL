transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/FF_D_Asyn_RST {C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/FF_D_Asyn_RST/FF_D_Asyn_RST.v}

vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/FF_D_Asyn_RST/simulation/modelsim {C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/FF_D_Asyn_RST/simulation/modelsim/FF_D_Asyn_RST.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  FF_D_Asyn_RST_vlg_tst

add wave *
view structure
view signals
run 150 ns
