# ------------------------------------------------------------------------------
# Top Level Simulation Script to source msim_setup.tcl
# ------------------------------------------------------------------------------
set QSYS_SIMDIR obj/default/runtime/sim
source msim_setup.tcl
# Copy generated memory initialization hex and dat file(s) to current directory
file copy -force C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/NiosII/software/Hola_CIC/mem_init/hdl_sim/MinionsII_onchip_memory2_0.dat ./ 
file copy -force C:/Users/Usuario/Documents/RATT_repositorios/Curso_HDL/Proyectos/NiosII/software/Hola_CIC/mem_init/MinionsII_onchip_memory2_0.hex ./ 
