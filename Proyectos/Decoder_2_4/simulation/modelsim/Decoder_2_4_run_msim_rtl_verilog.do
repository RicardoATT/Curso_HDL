transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/Decoder_2_4 {C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/Decoder_2_4/Decoder_2_4.v}

vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/Decoder_2_4/simulation/modelsim {C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/Decoder_2_4/simulation/modelsim/Decoder_2_4.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  Decoder_2_4_vlg_tst

add wave *
view structure
view signals
run 200 ns
