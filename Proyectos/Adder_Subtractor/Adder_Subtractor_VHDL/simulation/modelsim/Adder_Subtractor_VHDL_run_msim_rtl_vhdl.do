transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/Adder_Subtractor/Adder_Subtractor_VHDL/Adder_Subtractor_VHDL.vhd}

vcom -93 -work work {C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/Adder_Subtractor/Adder_Subtractor_VHDL/simulation/modelsim/Adder_Subtractor_VHDL.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  Adder_Subtractor_VHDL_vhd_tst

add wave *
view structure
view signals
run 600 ns