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
# File:		C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/FF_D_Asyn_RST/simulation/modelsim/FF_D_Asyn_RST_dump_all_vcd_nodes.tcl
# 
# Description:	Script for ModelSim-Altera (Verilog) VCD File Dumping
# 		This script is used to direct ModelSim-Altera (Verilog) to dump
# 		all nodes in the design to a VCD output file
# 
# Usages:	C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/FF_D_Asyn_RST/simulation/modelsim/FF_D_Asyn_RST_dump_all_vcd_nodes.tcl
# 
# Generated by:	Quartus Prime
# 		Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition
# 
# Date:		Thu Apr 11 20:13:35 2024
# 
# Design:	FF_D_Asyn_RST
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

   catch { vcd add "$hierarchy/Q_areg0_q" }
   catch { vcd add "$hierarchy/Q_aoutput_o" }
   catch { vcd add "$hierarchy/D_ainput_o" }
   catch { vcd add "$hierarchy/CLK_ainput_o" }
   catch { vcd add "$hierarchy/RST_ainput_o" }
   catch { vcd add "$hierarchy/Q_areg0feeder_combout" }
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

   set vcd_filename "FF_D_Asyn_RST.vcd"
   set hierarchy "i1"

   vcd file "$vcd_filename"
   vcd on

   add_vcd_signals $hierarchy $vcd_filename
}

main $argv
