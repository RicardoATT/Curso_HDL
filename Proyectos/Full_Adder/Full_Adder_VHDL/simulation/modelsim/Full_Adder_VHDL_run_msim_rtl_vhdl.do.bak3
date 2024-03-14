transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/Full_Adder/Full_Adder_VHDL/Full_Adder_VHDL.vhd}

vcom -93 -work work {C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/Full_Adder/Full_Adder_VHDL/simulation/modelsim/Full_Adder_VHDL.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  Full_Adder_VHDL_vhd_tst

add wave *
view structure
view signals
run 400 ns
