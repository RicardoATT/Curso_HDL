transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {FlipFlop_D_7_1200mv_85c_slow.vo}

vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/FlipFlop_D/simulation/modelsim {C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/FlipFlop_D/simulation/modelsim/FlipFlop_D.vt}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  FlipFlop_D_vlg_tst

source FlipFlop_D_dump_all_vcd_nodes.tcl
add wave *
view structure
view signals
run 60 ns
