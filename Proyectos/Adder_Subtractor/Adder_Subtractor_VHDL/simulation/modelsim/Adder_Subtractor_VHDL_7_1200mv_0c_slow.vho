-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "03/13/2024 18:02:52"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL a_aALTERA_ASDO_DATA1_a_apadout : std_logic;
SIGNAL a_aALTERA_FLASH_nCE_nCSO_a_apadout : std_logic;
SIGNAL a_aALTERA_DATA0_a_apadout : std_logic;
SIGNAL a_aALTERA_ASDO_DATA1_a_aibuf_o : std_logic;
SIGNAL a_aALTERA_FLASH_nCE_nCSO_a_aibuf_o : std_logic;
SIGNAL a_aALTERA_DATA0_a_aibuf_o : std_logic;
SIGNAL a_aALTERA_ASDO_DATA1_a_aibuf_I_driver : std_logic;
SIGNAL a_aALTERA_FLASH_nCE_nCSO_a_aibuf_I_driver : std_logic;
SIGNAL a_aALTERA_DATA0_a_aibuf_I_driver : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Adder_Subtractor_VHDL IS
    PORT (
	C : IN std_logic;
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	Total : BUFFER std_logic_vector(8 DOWNTO 0)
	);
END Adder_Subtractor_VHDL;

-- Design Ports Information
-- Total[0]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Total[1]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Total[2]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Total[3]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Total[4]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Total[5]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Total[6]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Total[7]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Total[8]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Adder_Subtractor_VHDL IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Total : std_logic_vector(8 DOWNTO 0);
SIGNAL Total_a0_a_aoutput_o : std_logic;
SIGNAL Total_a1_a_aoutput_o : std_logic;
SIGNAL Total_a2_a_aoutput_o : std_logic;
SIGNAL Total_a3_a_aoutput_o : std_logic;
SIGNAL Total_a4_a_aoutput_o : std_logic;
SIGNAL Total_a5_a_aoutput_o : std_logic;
SIGNAL Total_a6_a_aoutput_o : std_logic;
SIGNAL Total_a7_a_aoutput_o : std_logic;
SIGNAL Total_a8_a_aoutput_o : std_logic;
SIGNAL A_a0_a_ainput_o : std_logic;
SIGNAL B_a0_a_ainput_o : std_logic;
SIGNAL C_ainput_o : std_logic;
SIGNAL Add0_a0_combout : std_logic;
SIGNAL Add0_a2_cout : std_logic;
SIGNAL Add0_a3_combout : std_logic;
SIGNAL A_a1_a_ainput_o : std_logic;
SIGNAL B_a1_a_ainput_o : std_logic;
SIGNAL Add0_a5_combout : std_logic;
SIGNAL Add0_a4 : std_logic;
SIGNAL Add0_a6_combout : std_logic;
SIGNAL A_a2_a_ainput_o : std_logic;
SIGNAL B_a2_a_ainput_o : std_logic;
SIGNAL Add0_a8_combout : std_logic;
SIGNAL Add0_a7 : std_logic;
SIGNAL Add0_a9_combout : std_logic;
SIGNAL A_a3_a_ainput_o : std_logic;
SIGNAL B_a3_a_ainput_o : std_logic;
SIGNAL Add0_a11_combout : std_logic;
SIGNAL Add0_a10 : std_logic;
SIGNAL Add0_a12_combout : std_logic;
SIGNAL B_a4_a_ainput_o : std_logic;
SIGNAL Add0_a14_combout : std_logic;
SIGNAL A_a4_a_ainput_o : std_logic;
SIGNAL Add0_a13 : std_logic;
SIGNAL Add0_a15_combout : std_logic;
SIGNAL A_a5_a_ainput_o : std_logic;
SIGNAL B_a5_a_ainput_o : std_logic;
SIGNAL Add0_a17_combout : std_logic;
SIGNAL Add0_a16 : std_logic;
SIGNAL Add0_a18_combout : std_logic;
SIGNAL A_a6_a_ainput_o : std_logic;
SIGNAL B_a6_a_ainput_o : std_logic;
SIGNAL Add0_a20_combout : std_logic;
SIGNAL Add0_a19 : std_logic;
SIGNAL Add0_a21_combout : std_logic;
SIGNAL B_a7_a_ainput_o : std_logic;
SIGNAL Add0_a23_combout : std_logic;
SIGNAL A_a7_a_ainput_o : std_logic;
SIGNAL Add0_a22 : std_logic;
SIGNAL Add0_a24_combout : std_logic;
SIGNAL Add0_a25 : std_logic;
SIGNAL Add0_a26_combout : std_logic;
SIGNAL Total_a0_a_aoutput_I_driver : std_logic;
SIGNAL Total_a1_a_aoutput_I_driver : std_logic;
SIGNAL Total_a2_a_aoutput_I_driver : std_logic;
SIGNAL Total_a3_a_aoutput_I_driver : std_logic;
SIGNAL Total_a4_a_aoutput_I_driver : std_logic;
SIGNAL Total_a5_a_aoutput_I_driver : std_logic;
SIGNAL Total_a6_a_aoutput_I_driver : std_logic;
SIGNAL Total_a7_a_aoutput_I_driver : std_logic;
SIGNAL Total_a8_a_aoutput_I_driver : std_logic;
SIGNAL A_a0_a_ainput_I_driver : std_logic;
SIGNAL B_a0_a_ainput_I_driver : std_logic;
SIGNAL C_ainput_I_driver : std_logic;
SIGNAL Add0_a0_DATAB_driver : std_logic;
SIGNAL Add0_a0_DATAC_driver : std_logic;
SIGNAL Add0_a2_DATAA_driver : std_logic;
SIGNAL Add0_a3_DATAA_driver : std_logic;
SIGNAL Add0_a3_DATAB_driver : std_logic;
SIGNAL Add0_a3_CIN_driver : std_logic;
SIGNAL A_a1_a_ainput_I_driver : std_logic;
SIGNAL B_a1_a_ainput_I_driver : std_logic;
SIGNAL Add0_a5_DATAB_driver : std_logic;
SIGNAL Add0_a5_DATAC_driver : std_logic;
SIGNAL Add0_a6_DATAA_driver : std_logic;
SIGNAL Add0_a6_DATAB_driver : std_logic;
SIGNAL Add0_a6_CIN_driver : std_logic;
SIGNAL A_a2_a_ainput_I_driver : std_logic;
SIGNAL B_a2_a_ainput_I_driver : std_logic;
SIGNAL Add0_a8_DATAB_driver : std_logic;
SIGNAL Add0_a8_DATAD_driver : std_logic;
SIGNAL Add0_a9_DATAA_driver : std_logic;
SIGNAL Add0_a9_DATAB_driver : std_logic;
SIGNAL Add0_a9_CIN_driver : std_logic;
SIGNAL A_a3_a_ainput_I_driver : std_logic;
SIGNAL B_a3_a_ainput_I_driver : std_logic;
SIGNAL Add0_a11_DATAC_driver : std_logic;
SIGNAL Add0_a11_DATAD_driver : std_logic;
SIGNAL Add0_a12_DATAA_driver : std_logic;
SIGNAL Add0_a12_DATAB_driver : std_logic;
SIGNAL Add0_a12_CIN_driver : std_logic;
SIGNAL B_a4_a_ainput_I_driver : std_logic;
SIGNAL Add0_a14_DATAC_driver : std_logic;
SIGNAL Add0_a14_DATAD_driver : std_logic;
SIGNAL A_a4_a_ainput_I_driver : std_logic;
SIGNAL Add0_a15_DATAA_driver : std_logic;
SIGNAL Add0_a15_DATAB_driver : std_logic;
SIGNAL Add0_a15_CIN_driver : std_logic;
SIGNAL A_a5_a_ainput_I_driver : std_logic;
SIGNAL B_a5_a_ainput_I_driver : std_logic;
SIGNAL Add0_a17_DATAB_driver : std_logic;
SIGNAL Add0_a17_DATAD_driver : std_logic;
SIGNAL Add0_a18_DATAA_driver : std_logic;
SIGNAL Add0_a18_DATAB_driver : std_logic;
SIGNAL Add0_a18_CIN_driver : std_logic;
SIGNAL A_a6_a_ainput_I_driver : std_logic;
SIGNAL B_a6_a_ainput_I_driver : std_logic;
SIGNAL Add0_a20_DATAC_driver : std_logic;
SIGNAL Add0_a20_DATAD_driver : std_logic;
SIGNAL Add0_a21_DATAA_driver : std_logic;
SIGNAL Add0_a21_DATAB_driver : std_logic;
SIGNAL Add0_a21_CIN_driver : std_logic;
SIGNAL B_a7_a_ainput_I_driver : std_logic;
SIGNAL Add0_a23_DATAC_driver : std_logic;
SIGNAL Add0_a23_DATAD_driver : std_logic;
SIGNAL A_a7_a_ainput_I_driver : std_logic;
SIGNAL Add0_a24_DATAA_driver : std_logic;
SIGNAL Add0_a24_DATAB_driver : std_logic;
SIGNAL Add0_a24_CIN_driver : std_logic;
SIGNAL Add0_a26_DATAA_driver : std_logic;
SIGNAL Add0_a26_CIN_driver : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_C <= C;
ww_A <= A;
ww_B <= B;
Total <= ww_Total;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

Total_a0_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Add0_a3_combout,
	dataout => Total_a0_a_aoutput_I_driver);

-- Location: IOOBUF_X0_Y20_N16
Total_a0_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Total_a0_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => Total_a0_a_aoutput_o);

Total_a1_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Add0_a6_combout,
	dataout => Total_a1_a_aoutput_I_driver);

-- Location: IOOBUF_X0_Y22_N16
Total_a1_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Total_a1_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => Total_a1_a_aoutput_o);

Total_a2_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Add0_a9_combout,
	dataout => Total_a2_a_aoutput_I_driver);

-- Location: IOOBUF_X0_Y17_N16
Total_a2_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Total_a2_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => Total_a2_a_aoutput_o);

Total_a3_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Add0_a12_combout,
	dataout => Total_a3_a_aoutput_I_driver);

-- Location: IOOBUF_X0_Y13_N9
Total_a3_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Total_a3_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => Total_a3_a_aoutput_o);

Total_a4_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Add0_a15_combout,
	dataout => Total_a4_a_aoutput_I_driver);

-- Location: IOOBUF_X0_Y15_N23
Total_a4_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Total_a4_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => Total_a4_a_aoutput_o);

Total_a5_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Add0_a18_combout,
	dataout => Total_a5_a_aoutput_I_driver);

-- Location: IOOBUF_X0_Y14_N9
Total_a5_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Total_a5_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => Total_a5_a_aoutput_o);

Total_a6_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Add0_a21_combout,
	dataout => Total_a6_a_aoutput_I_driver);

-- Location: IOOBUF_X0_Y14_N2
Total_a6_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Total_a6_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => Total_a6_a_aoutput_o);

Total_a7_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Add0_a24_combout,
	dataout => Total_a7_a_aoutput_I_driver);

-- Location: IOOBUF_X0_Y15_N16
Total_a7_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Total_a7_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => Total_a7_a_aoutput_o);

Total_a8_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Add0_a26_combout,
	dataout => Total_a8_a_aoutput_I_driver);

-- Location: IOOBUF_X0_Y13_N2
Total_a8_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Total_a8_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => Total_a8_a_aoutput_o);

A_a0_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_A(0),
	dataout => A_a0_a_ainput_I_driver);

-- Location: IOIBUF_X0_Y24_N15
A_a0_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => A_a0_a_ainput_I_driver,
	o => A_a0_a_ainput_o);

B_a0_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_B(0),
	dataout => B_a0_a_ainput_I_driver);

-- Location: IOIBUF_X0_Y23_N22
B_a0_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => B_a0_a_ainput_I_driver,
	o => B_a0_a_ainput_o);

C_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_C,
	dataout => C_ainput_I_driver);

-- Location: IOIBUF_X0_Y16_N15
C_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => C_ainput_I_driver,
	o => C_ainput_o);

Add0_a0_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => B_a0_a_ainput_o,
	dataout => Add0_a0_DATAB_driver);

Add0_a0_DATAC_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => C_ainput_o,
	dataout => Add0_a0_DATAC_driver);

-- Location: LCCOMB_X1_Y21_N0
Add0_a0 : cycloneive_lcell_comb
-- Equation(s):
-- Add0_a0_combout = B_a0_a_ainput_o $ (C_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Add0_a0_DATAB_driver,
	datac => Add0_a0_DATAC_driver,
	combout => Add0_a0_combout);

Add0_a2_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => C_ainput_o,
	dataout => Add0_a2_DATAA_driver);

-- Location: LCCOMB_X1_Y21_N12
Add0_a2 : cycloneive_lcell_comb
-- Equation(s):
-- Add0_a2_cout = CARRY(C_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Add0_a2_DATAA_driver,
	datad => VCC,
	cout => Add0_a2_cout);

Add0_a3_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => A_a0_a_ainput_o,
	dataout => Add0_a3_DATAA_driver);

Add0_a3_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Add0_a0_combout,
	dataout => Add0_a3_DATAB_driver);

Add0_a3_CIN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Add0_a2_cout,
	dataout => Add0_a3_CIN_driver);

-- Location: LCCOMB_X1_Y21_N14
Add0_a3 : cycloneive_lcell_comb
-- Equation(s):
-- Add0_a3_combout = (A_a0_a_ainput_o & ((Add0_a0_combout & (Add0_a2_cout & VCC)) # (!Add0_a0_combout & (!Add0_a2_cout)))) # (!A_a0_a_ainput_o & ((Add0_a0_combout & (!Add0_a2_cout)) # (!Add0_a0_combout & ((Add0_a2_cout) # (GND)))))
-- Add0_a4 = CARRY((A_a0_a_ainput_o & (!Add0_a0_combout & !Add0_a2_cout)) # (!A_a0_a_ainput_o & ((!Add0_a2_cout) # (!Add0_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Add0_a3_DATAA_driver,
	datab => Add0_a3_DATAB_driver,
	datad => VCC,
	cin => Add0_a3_CIN_driver,
	combout => Add0_a3_combout,
	cout => Add0_a4);

A_a1_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_A(1),
	dataout => A_a1_a_ainput_I_driver);

-- Location: IOIBUF_X0_Y16_N22
A_a1_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => A_a1_a_ainput_I_driver,
	o => A_a1_a_ainput_o);

B_a1_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_B(1),
	dataout => B_a1_a_ainput_I_driver);

-- Location: IOIBUF_X0_Y22_N22
B_a1_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => B_a1_a_ainput_I_driver,
	o => B_a1_a_ainput_o);

Add0_a5_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => B_a1_a_ainput_o,
	dataout => Add0_a5_DATAB_driver);

Add0_a5_DATAC_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => C_ainput_o,
	dataout => Add0_a5_DATAC_driver);

-- Location: LCCOMB_X1_Y21_N2
Add0_a5 : cycloneive_lcell_comb
-- Equation(s):
-- Add0_a5_combout = B_a1_a_ainput_o $ (C_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Add0_a5_DATAB_driver,
	datac => Add0_a5_DATAC_driver,
	combout => Add0_a5_combout);

Add0_a6_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => A_a1_a_ainput_o,
	dataout => Add0_a6_DATAA_driver);

Add0_a6_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Add0_a5_combout,
	dataout => Add0_a6_DATAB_driver);

Add0_a6_CIN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Add0_a4,
	dataout => Add0_a6_CIN_driver);

-- Location: LCCOMB_X1_Y21_N16
Add0_a6 : cycloneive_lcell_comb
-- Equation(s):
-- Add0_a6_combout = ((A_a1_a_ainput_o $ (Add0_a5_combout $ (!Add0_a4)))) # (GND)
-- Add0_a7 = CARRY((A_a1_a_ainput_o & ((Add0_a5_combout) # (!Add0_a4))) # (!A_a1_a_ainput_o & (Add0_a5_combout & !Add0_a4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Add0_a6_DATAA_driver,
	datab => Add0_a6_DATAB_driver,
	datad => VCC,
	cin => Add0_a6_CIN_driver,
	combout => Add0_a6_combout,
	cout => Add0_a7);

A_a2_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_A(2),
	dataout => A_a2_a_ainput_I_driver);

-- Location: IOIBUF_X0_Y19_N1
A_a2_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => A_a2_a_ainput_I_driver,
	o => A_a2_a_ainput_o);

B_a2_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_B(2),
	dataout => B_a2_a_ainput_I_driver);

-- Location: IOIBUF_X0_Y18_N15
B_a2_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => B_a2_a_ainput_I_driver,
	o => B_a2_a_ainput_o);

Add0_a8_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => C_ainput_o,
	dataout => Add0_a8_DATAB_driver);

Add0_a8_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => B_a2_a_ainput_o,
	dataout => Add0_a8_DATAD_driver);

-- Location: LCCOMB_X1_Y18_N16
Add0_a8 : cycloneive_lcell_comb
-- Equation(s):
-- Add0_a8_combout = C_ainput_o $ (B_a2_a_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Add0_a8_DATAB_driver,
	datad => Add0_a8_DATAD_driver,
	combout => Add0_a8_combout);

Add0_a9_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => A_a2_a_ainput_o,
	dataout => Add0_a9_DATAA_driver);

Add0_a9_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Add0_a8_combout,
	dataout => Add0_a9_DATAB_driver);

Add0_a9_CIN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Add0_a7,
	dataout => Add0_a9_CIN_driver);

-- Location: LCCOMB_X1_Y21_N18
Add0_a9 : cycloneive_lcell_comb
-- Equation(s):
-- Add0_a9_combout = (A_a2_a_ainput_o & ((Add0_a8_combout & (Add0_a7 & VCC)) # (!Add0_a8_combout & (!Add0_a7)))) # (!A_a2_a_ainput_o & ((Add0_a8_combout & (!Add0_a7)) # (!Add0_a8_combout & ((Add0_a7) # (GND)))))
-- Add0_a10 = CARRY((A_a2_a_ainput_o & (!Add0_a8_combout & !Add0_a7)) # (!A_a2_a_ainput_o & ((!Add0_a7) # (!Add0_a8_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Add0_a9_DATAA_driver,
	datab => Add0_a9_DATAB_driver,
	datad => VCC,
	cin => Add0_a9_CIN_driver,
	combout => Add0_a9_combout,
	cout => Add0_a10);

A_a3_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_A(3),
	dataout => A_a3_a_ainput_I_driver);

-- Location: IOIBUF_X0_Y21_N15
A_a3_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => A_a3_a_ainput_I_driver,
	o => A_a3_a_ainput_o);

B_a3_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_B(3),
	dataout => B_a3_a_ainput_I_driver);

-- Location: IOIBUF_X0_Y24_N1
B_a3_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => B_a3_a_ainput_I_driver,
	o => B_a3_a_ainput_o);

Add0_a11_DATAC_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => C_ainput_o,
	dataout => Add0_a11_DATAC_driver);

Add0_a11_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => B_a3_a_ainput_o,
	dataout => Add0_a11_DATAD_driver);

-- Location: LCCOMB_X1_Y21_N4
Add0_a11 : cycloneive_lcell_comb
-- Equation(s):
-- Add0_a11_combout = C_ainput_o $ (B_a3_a_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Add0_a11_DATAC_driver,
	datad => Add0_a11_DATAD_driver,
	combout => Add0_a11_combout);

Add0_a12_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => A_a3_a_ainput_o,
	dataout => Add0_a12_DATAA_driver);

Add0_a12_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Add0_a11_combout,
	dataout => Add0_a12_DATAB_driver);

Add0_a12_CIN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Add0_a10,
	dataout => Add0_a12_CIN_driver);

-- Location: LCCOMB_X1_Y21_N20
Add0_a12 : cycloneive_lcell_comb
-- Equation(s):
-- Add0_a12_combout = ((A_a3_a_ainput_o $ (Add0_a11_combout $ (!Add0_a10)))) # (GND)
-- Add0_a13 = CARRY((A_a3_a_ainput_o & ((Add0_a11_combout) # (!Add0_a10))) # (!A_a3_a_ainput_o & (Add0_a11_combout & !Add0_a10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Add0_a12_DATAA_driver,
	datab => Add0_a12_DATAB_driver,
	datad => VCC,
	cin => Add0_a12_CIN_driver,
	combout => Add0_a12_combout,
	cout => Add0_a13);

B_a4_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_B(4),
	dataout => B_a4_a_ainput_I_driver);

-- Location: IOIBUF_X0_Y21_N22
B_a4_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => B_a4_a_ainput_I_driver,
	o => B_a4_a_ainput_o);

Add0_a14_DATAC_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => C_ainput_o,
	dataout => Add0_a14_DATAC_driver);

Add0_a14_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => B_a4_a_ainput_o,
	dataout => Add0_a14_DATAD_driver);

-- Location: LCCOMB_X1_Y21_N6
Add0_a14 : cycloneive_lcell_comb
-- Equation(s):
-- Add0_a14_combout = C_ainput_o $ (B_a4_a_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Add0_a14_DATAC_driver,
	datad => Add0_a14_DATAD_driver,
	combout => Add0_a14_combout);

A_a4_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_A(4),
	dataout => A_a4_a_ainput_I_driver);

-- Location: IOIBUF_X0_Y24_N8
A_a4_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => A_a4_a_ainput_I_driver,
	o => A_a4_a_ainput_o);

Add0_a15_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Add0_a14_combout,
	dataout => Add0_a15_DATAA_driver);

Add0_a15_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => A_a4_a_ainput_o,
	dataout => Add0_a15_DATAB_driver);

Add0_a15_CIN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Add0_a13,
	dataout => Add0_a15_CIN_driver);

-- Location: LCCOMB_X1_Y21_N22
Add0_a15 : cycloneive_lcell_comb
-- Equation(s):
-- Add0_a15_combout = (Add0_a14_combout & ((A_a4_a_ainput_o & (Add0_a13 & VCC)) # (!A_a4_a_ainput_o & (!Add0_a13)))) # (!Add0_a14_combout & ((A_a4_a_ainput_o & (!Add0_a13)) # (!A_a4_a_ainput_o & ((Add0_a13) # (GND)))))
-- Add0_a16 = CARRY((Add0_a14_combout & (!A_a4_a_ainput_o & !Add0_a13)) # (!Add0_a14_combout & ((!Add0_a13) # (!A_a4_a_ainput_o))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Add0_a15_DATAA_driver,
	datab => Add0_a15_DATAB_driver,
	datad => VCC,
	cin => Add0_a15_CIN_driver,
	combout => Add0_a15_combout,
	cout => Add0_a16);

A_a5_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_A(5),
	dataout => A_a5_a_ainput_I_driver);

-- Location: IOIBUF_X0_Y19_N8
A_a5_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => A_a5_a_ainput_I_driver,
	o => A_a5_a_ainput_o);

B_a5_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_B(5),
	dataout => B_a5_a_ainput_I_driver);

-- Location: IOIBUF_X0_Y18_N22
B_a5_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => B_a5_a_ainput_I_driver,
	o => B_a5_a_ainput_o);

Add0_a17_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => C_ainput_o,
	dataout => Add0_a17_DATAB_driver);

Add0_a17_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => B_a5_a_ainput_o,
	dataout => Add0_a17_DATAD_driver);

-- Location: LCCOMB_X1_Y18_N18
Add0_a17 : cycloneive_lcell_comb
-- Equation(s):
-- Add0_a17_combout = C_ainput_o $ (B_a5_a_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Add0_a17_DATAB_driver,
	datad => Add0_a17_DATAD_driver,
	combout => Add0_a17_combout);

Add0_a18_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => A_a5_a_ainput_o,
	dataout => Add0_a18_DATAA_driver);

Add0_a18_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Add0_a17_combout,
	dataout => Add0_a18_DATAB_driver);

Add0_a18_CIN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Add0_a16,
	dataout => Add0_a18_CIN_driver);

-- Location: LCCOMB_X1_Y21_N24
Add0_a18 : cycloneive_lcell_comb
-- Equation(s):
-- Add0_a18_combout = ((A_a5_a_ainput_o $ (Add0_a17_combout $ (!Add0_a16)))) # (GND)
-- Add0_a19 = CARRY((A_a5_a_ainput_o & ((Add0_a17_combout) # (!Add0_a16))) # (!A_a5_a_ainput_o & (Add0_a17_combout & !Add0_a16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Add0_a18_DATAA_driver,
	datab => Add0_a18_DATAB_driver,
	datad => VCC,
	cin => Add0_a18_CIN_driver,
	combout => Add0_a18_combout,
	cout => Add0_a19);

A_a6_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_A(6),
	dataout => A_a6_a_ainput_I_driver);

-- Location: IOIBUF_X0_Y24_N22
A_a6_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => A_a6_a_ainput_I_driver,
	o => A_a6_a_ainput_o);

B_a6_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_B(6),
	dataout => B_a6_a_ainput_I_driver);

-- Location: IOIBUF_X0_Y23_N15
B_a6_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => B_a6_a_ainput_I_driver,
	o => B_a6_a_ainput_o);

Add0_a20_DATAC_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => C_ainput_o,
	dataout => Add0_a20_DATAC_driver);

Add0_a20_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => B_a6_a_ainput_o,
	dataout => Add0_a20_DATAD_driver);

-- Location: LCCOMB_X1_Y21_N8
Add0_a20 : cycloneive_lcell_comb
-- Equation(s):
-- Add0_a20_combout = C_ainput_o $ (B_a6_a_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Add0_a20_DATAC_driver,
	datad => Add0_a20_DATAD_driver,
	combout => Add0_a20_combout);

Add0_a21_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => A_a6_a_ainput_o,
	dataout => Add0_a21_DATAA_driver);

Add0_a21_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Add0_a20_combout,
	dataout => Add0_a21_DATAB_driver);

Add0_a21_CIN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Add0_a19,
	dataout => Add0_a21_CIN_driver);

-- Location: LCCOMB_X1_Y21_N26
Add0_a21 : cycloneive_lcell_comb
-- Equation(s):
-- Add0_a21_combout = (A_a6_a_ainput_o & ((Add0_a20_combout & (Add0_a19 & VCC)) # (!Add0_a20_combout & (!Add0_a19)))) # (!A_a6_a_ainput_o & ((Add0_a20_combout & (!Add0_a19)) # (!Add0_a20_combout & ((Add0_a19) # (GND)))))
-- Add0_a22 = CARRY((A_a6_a_ainput_o & (!Add0_a20_combout & !Add0_a19)) # (!A_a6_a_ainput_o & ((!Add0_a19) # (!Add0_a20_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Add0_a21_DATAA_driver,
	datab => Add0_a21_DATAB_driver,
	datad => VCC,
	cin => Add0_a21_CIN_driver,
	combout => Add0_a21_combout,
	cout => Add0_a22);

B_a7_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_B(7),
	dataout => B_a7_a_ainput_I_driver);

-- Location: IOIBUF_X0_Y25_N15
B_a7_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => B_a7_a_ainput_I_driver,
	o => B_a7_a_ainput_o);

Add0_a23_DATAC_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => C_ainput_o,
	dataout => Add0_a23_DATAC_driver);

Add0_a23_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => B_a7_a_ainput_o,
	dataout => Add0_a23_DATAD_driver);

-- Location: LCCOMB_X1_Y21_N10
Add0_a23 : cycloneive_lcell_comb
-- Equation(s):
-- Add0_a23_combout = C_ainput_o $ (B_a7_a_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Add0_a23_DATAC_driver,
	datad => Add0_a23_DATAD_driver,
	combout => Add0_a23_combout);

A_a7_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_A(7),
	dataout => A_a7_a_ainput_I_driver);

-- Location: IOIBUF_X0_Y25_N22
A_a7_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => A_a7_a_ainput_I_driver,
	o => A_a7_a_ainput_o);

Add0_a24_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Add0_a23_combout,
	dataout => Add0_a24_DATAA_driver);

Add0_a24_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => A_a7_a_ainput_o,
	dataout => Add0_a24_DATAB_driver);

Add0_a24_CIN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Add0_a22,
	dataout => Add0_a24_CIN_driver);

-- Location: LCCOMB_X1_Y21_N28
Add0_a24 : cycloneive_lcell_comb
-- Equation(s):
-- Add0_a24_combout = ((Add0_a23_combout $ (A_a7_a_ainput_o $ (!Add0_a22)))) # (GND)
-- Add0_a25 = CARRY((Add0_a23_combout & ((A_a7_a_ainput_o) # (!Add0_a22))) # (!Add0_a23_combout & (A_a7_a_ainput_o & !Add0_a22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Add0_a24_DATAA_driver,
	datab => Add0_a24_DATAB_driver,
	datad => VCC,
	cin => Add0_a24_CIN_driver,
	combout => Add0_a24_combout,
	cout => Add0_a25);

Add0_a26_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => C_ainput_o,
	dataout => Add0_a26_DATAA_driver);

Add0_a26_CIN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Add0_a25,
	dataout => Add0_a26_CIN_driver);

-- Location: LCCOMB_X1_Y21_N30
Add0_a26 : cycloneive_lcell_comb
-- Equation(s):
-- Add0_a26_combout = C_ainput_o $ (Add0_a25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Add0_a26_DATAA_driver,
	cin => Add0_a26_CIN_driver,
	combout => Add0_a26_combout);

ww_Total(0) <= Total_a0_a_aoutput_o;

ww_Total(1) <= Total_a1_a_aoutput_o;

ww_Total(2) <= Total_a2_a_aoutput_o;

ww_Total(3) <= Total_a3_a_aoutput_o;

ww_Total(4) <= Total_a4_a_aoutput_o;

ww_Total(5) <= Total_a5_a_aoutput_o;

ww_Total(6) <= Total_a6_a_aoutput_o;

ww_Total(7) <= Total_a7_a_aoutput_o;

ww_Total(8) <= Total_a8_a_aoutput_o;
END structure;


