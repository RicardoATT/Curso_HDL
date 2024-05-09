transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/Mux_IP_Catalog {C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/Mux_IP_Catalog/Mux_IP_Catalog.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/Mux_IP_Catalog {C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/Mux_IP_Catalog/MyMux.v}

vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/Mux_IP_Catalog/simulation/modelsim {C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/Mux_IP_Catalog/simulation/modelsim/Mux_IP_Catalog.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  Mux_IP_Catalog_vlg_tst

add wave *
view structure
view signals
run 80 ns
