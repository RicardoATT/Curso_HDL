transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Ricardo\ Aldair\ TT/Documents/RATT_repos/Curso_HDL/Proyectos/Assignment_Circuit3 {C:/Users/Ricardo Aldair TT/Documents/RATT_repos/Curso_HDL/Proyectos/Assignment_Circuit3/Assignment_Circuit3.v}

vlog -vlog01compat -work work +incdir+C:/Users/Ricardo\ Aldair\ TT/Documents/RATT_repos/Curso_HDL/Proyectos/Assignment_Circuit3/simulation/modelsim {C:/Users/Ricardo Aldair TT/Documents/RATT_repos/Curso_HDL/Proyectos/Assignment_Circuit3/simulation/modelsim/Assignment_Circuit3.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  Assignment_Circuit3_vlg_tst

add wave *
view structure
view signals
run 80 ns
