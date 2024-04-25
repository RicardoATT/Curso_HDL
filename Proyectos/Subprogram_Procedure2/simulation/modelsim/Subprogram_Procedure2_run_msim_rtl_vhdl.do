transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/Subprogram_Procedure2/Subprogram_Procedure2.vhd}

vcom -93 -work work {C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/Subprogram_Procedure2/simulation/modelsim/Subprogram_Procedure2.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  Subprogram_Procedure2_vhd_tst

add wave *
view structure
view signals
run 200 ns
