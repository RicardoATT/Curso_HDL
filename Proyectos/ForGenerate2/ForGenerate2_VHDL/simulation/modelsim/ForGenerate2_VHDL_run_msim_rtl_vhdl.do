transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/ForGenerate2/ForGenerate2_VHDL/ForGenerate2_VHDL.vhd}

vcom -93 -work work {C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/ForGenerate2/ForGenerate2_VHDL/simulation/modelsim/ForGenerate2_VHDL.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  ForGenerate2_VHDL_vhd_tst

add wave *
view structure
view signals
run 50 ns
