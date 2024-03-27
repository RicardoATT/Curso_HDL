# Copyright (C) 2018  Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License 
# Subscription Agreement, the Intel Quartus Prime License Agreement,
# the Intel FPGA IP License Agreement, or other applicable license
# agreement, including, without limitation, that your use is for
# the sole purpose of programming logic devices manufactured by
# Intel and sold by Intel or its authorized distributors.  Please
# refer to the applicable agreement for further details.


# ***************************************************************************
# ***************************************************************************
# 
# File:		C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/Logical_Shifter/simulation/modelsim/Logical_Shifter_dump_all_vcd_nodes.tcl
# 
# Description:	Script for ModelSim-Altera (Verilog) VCD File Dumping
# 		This script is used to direct ModelSim-Altera (Verilog) to dump
# 		all nodes in the design to a VCD output file
# 
# Usages:	C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/Logical_Shifter/simulation/modelsim/Logical_Shifter_dump_all_vcd_nodes.tcl
# 
# Generated by:	Quartus Prime
# 		Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition
# 
# Date:		Tue Mar 26 21:48:36 2024
# 
# Design:	Logical_Shifter
# 
# ***************************************************************************
# ***************************************************************************

# ----------------------------------------------------------------
#
proc add_vcd_signals { hierarchy vcd_filename } {
#
# Description:	This function directs ModelSim-Altera (Verilog) to print out the
#		appropriate VCD signals, with the hierarchy level
#		prepended to each signal name
#
# ----------------------------------------------------------------

   catch { vcd add "$hierarchy/S_a0_combout" }
   catch { vcd add "$hierarchy/Mux6_a0_combout" }
   catch { vcd add "$hierarchy/Mux5_a0_combout" }
   catch { vcd add "$hierarchy/Mux5_a1_combout" }
   catch { vcd add "$hierarchy/Mux4_a0_combout" }
   catch { vcd add "$hierarchy/Mux4_a1_combout" }
   catch { vcd add "$hierarchy/Mux4_a2_combout" }
   catch { vcd add "$hierarchy/Mux3_a0_combout" }
   catch { vcd add "$hierarchy/Mux3_a1_combout" }
   catch { vcd add "$hierarchy/Mux2_a0_combout" }
   catch { vcd add "$hierarchy/Mux2_a1_combout" }
   catch { vcd add "$hierarchy/Mux1_a0_combout" }
   catch { vcd add "$hierarchy/Mux1_a1_combout" }
   catch { vcd add "$hierarchy/Mux0_a0_combout" }
   catch { vcd add "$hierarchy/Mux0_a1_combout" }
   catch { vcd add "$hierarchy/S_a0_a_aoutput_o" }
   catch { vcd add "$hierarchy/S_a1_a_aoutput_o" }
   catch { vcd add "$hierarchy/S_a2_a_aoutput_o" }
   catch { vcd add "$hierarchy/S_a3_a_aoutput_o" }
   catch { vcd add "$hierarchy/S_a4_a_aoutput_o" }
   catch { vcd add "$hierarchy/S_a5_a_aoutput_o" }
   catch { vcd add "$hierarchy/S_a6_a_aoutput_o" }
   catch { vcd add "$hierarchy/S_a7_a_aoutput_o" }
   catch { vcd add "$hierarchy/E_a0_a_ainput_o" }
   catch { vcd add "$hierarchy/SEL_a1_a_ainput_o" }
   catch { vcd add "$hierarchy/SEL_a0_a_ainput_o" }
   catch { vcd add "$hierarchy/E_a1_a_ainput_o" }
   catch { vcd add "$hierarchy/E_a2_a_ainput_o" }
   catch { vcd add "$hierarchy/E_a3_a_ainput_o" }
   catch { vcd add "$hierarchy/E_a4_a_ainput_o" }
   catch { vcd add "$hierarchy/E_a5_a_ainput_o" }
   catch { vcd add "$hierarchy/E_a6_a_ainput_o" }
   catch { vcd add "$hierarchy/E_a7_a_ainput_o" }
}

# ----------------------------------------------------------------
#
proc main { argv } {
#
# Description:	Main entry point to script.  Iterate over all
#		hierarchy levels specified, and direct ModelSim-Altera (Verilog)
#		to print the relevant signals under each level
#
# ----------------------------------------------------------------

   set vcd_filename "Logical_Shifter.vcd"
   set hierarchy "i1"

   vcd file "$vcd_filename"
   vcd on

   add_vcd_signals $hierarchy $vcd_filename
}

main $argv
