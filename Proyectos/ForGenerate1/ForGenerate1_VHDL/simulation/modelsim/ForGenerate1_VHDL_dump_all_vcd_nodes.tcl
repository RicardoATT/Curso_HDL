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
# File:		C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/ForGenerate1/ForGenerate1_VHDL/simulation/modelsim/ForGenerate1_VHDL_dump_all_vcd_nodes.tcl
# 
# Description:	Script for ModelSim-Altera (VHDL) VCD File Dumping
# 		This script is used to direct ModelSim-Altera (VHDL) to dump
# 		all nodes in the design to a VCD output file
# 
# Usages:	C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/ForGenerate1/ForGenerate1_VHDL/simulation/modelsim/ForGenerate1_VHDL_dump_all_vcd_nodes.tcl
# 
# Generated by:	Quartus Prime
# 		Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition
# 
# Date:		Thu May 16 17:11:31 2024
# 
# Design:	ForGenerate1_VHDL
# 
# ***************************************************************************
# ***************************************************************************

# ----------------------------------------------------------------
#
proc add_vcd_signals { hierarchy vcd_filename } {
#
# Description:	This function directs ModelSim-Altera (VHDL) to print out the
#		appropriate VCD signals, with the hierarchy level
#		prepended to each signal name
#
# ----------------------------------------------------------------

   catch { vcd add "$hierarchy/a_aG0_a0_aU0_aSc_acombout" }
   catch { vcd add "$hierarchy/a_aG0_a1_aU0_aSc_acombout" }
   catch { vcd add "$hierarchy/a_aG0_a2_aU0_aSc_acombout" }
   catch { vcd add "$hierarchy/a_aG0_a3_aU0_aSc_acombout" }
   catch { vcd add "$hierarchy/a_aG0_a4_aU0_aSc_acombout" }
   catch { vcd add "$hierarchy/a_aG0_a5_aU0_aSc_acombout" }
   catch { vcd add "$hierarchy/a_aG0_a6_aU0_aSc_acombout" }
   catch { vcd add "$hierarchy/a_aG0_a7_aU0_aSc_acombout" }
   catch { vcd add "$hierarchy/S1_a0_a_aoutput_o" }
   catch { vcd add "$hierarchy/S1_a1_a_aoutput_o" }
   catch { vcd add "$hierarchy/S1_a2_a_aoutput_o" }
   catch { vcd add "$hierarchy/S1_a3_a_aoutput_o" }
   catch { vcd add "$hierarchy/S1_a4_a_aoutput_o" }
   catch { vcd add "$hierarchy/S1_a5_a_aoutput_o" }
   catch { vcd add "$hierarchy/S1_a6_a_aoutput_o" }
   catch { vcd add "$hierarchy/S1_a7_a_aoutput_o" }
   catch { vcd add "$hierarchy/A_a0_a_ainput_o" }
   catch { vcd add "$hierarchy/B_a0_a_ainput_o" }
   catch { vcd add "$hierarchy/A_a1_a_ainput_o" }
   catch { vcd add "$hierarchy/B_a1_a_ainput_o" }
   catch { vcd add "$hierarchy/A_a2_a_ainput_o" }
   catch { vcd add "$hierarchy/B_a2_a_ainput_o" }
   catch { vcd add "$hierarchy/A_a3_a_ainput_o" }
   catch { vcd add "$hierarchy/B_a3_a_ainput_o" }
   catch { vcd add "$hierarchy/A_a4_a_ainput_o" }
   catch { vcd add "$hierarchy/B_a4_a_ainput_o" }
   catch { vcd add "$hierarchy/A_a5_a_ainput_o" }
   catch { vcd add "$hierarchy/B_a5_a_ainput_o" }
   catch { vcd add "$hierarchy/A_a6_a_ainput_o" }
   catch { vcd add "$hierarchy/B_a6_a_ainput_o" }
   catch { vcd add "$hierarchy/A_a7_a_ainput_o" }
   catch { vcd add "$hierarchy/B_a7_a_ainput_o" }
}

# ----------------------------------------------------------------
#
proc main { argv } {
#
# Description:	Main entry point to script.  Iterate over all
#		hierarchy levels specified, and direct ModelSim-Altera (VHDL)
#		to print the relevant signals under each level
#
# ----------------------------------------------------------------

   set vcd_filename "ForGenerate1_VHDL.vcd"
   set hierarchy "i1"

   vcd file "$vcd_filename"
   vcd on

   add_vcd_signals $hierarchy $vcd_filename
}

main $argv
