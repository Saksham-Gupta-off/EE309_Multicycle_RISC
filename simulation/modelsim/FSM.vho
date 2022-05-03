-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "05/03/2022 19:37:20"

-- 
-- Device: Altera 10CL120ZF780I8G Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
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
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fsm IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	c_out : IN std_logic;
	z_out : IN std_logic;
	PC_in : IN std_logic_vector(15 DOWNTO 0);
	alu_c_in : IN std_logic_vector(15 DOWNTO 0);
	Ir_in : IN std_logic_vector(15 DOWNTO 0);
	mem_a_in : IN std_logic_vector(15 DOWNTO 0);
	mem_d_in : IN std_logic_vector(15 DOWNTO 0);
	Rf_D1_in : IN std_logic_vector(15 DOWNTO 0);
	Rf_D2_in : IN std_logic_vector(15 DOWNTO 0);
	SE_out6_in : IN std_logic_vector(15 DOWNTO 0);
	SE_out9_in : IN std_logic_vector(15 DOWNTO 0);
	msbxtnder_in : IN std_logic_vector(15 DOWNTO 0);
	LS_out_in : IN std_logic_vector(15 DOWNTO 0);
	PC_out : BUFFER std_logic_vector(15 DOWNTO 0);
	Ir_out : BUFFER std_logic_vector(15 DOWNTO 0);
	mem_a_out : BUFFER std_logic_vector(15 DOWNTO 0);
	mem_d_out : BUFFER std_logic_vector(15 DOWNTO 0);
	LS_in_out : BUFFER std_logic_vector(15 DOWNTO 0);
	Rf_D3_out : BUFFER std_logic_vector(15 DOWNTO 0);
	alu_a_out : BUFFER std_logic_vector(15 DOWNTO 0);
	alu_b_out : BUFFER std_logic_vector(15 DOWNTO 0);
	Rf_A1_out : BUFFER std_logic_vector(2 DOWNTO 0);
	Rf_A2_out : BUFFER std_logic_vector(2 DOWNTO 0);
	Rf_A3_out : BUFFER std_logic_vector(2 DOWNTO 0);
	aluctrl_out : BUFFER std_logic_vector(1 DOWNTO 0);
	Regwr_out : BUFFER std_logic;
	memwr_out : BUFFER std_logic;
	iren : BUFFER std_logic;
	modifyc_out : BUFFER std_logic;
	modifyz_out : BUFFER std_logic;
	SE_in6_out : BUFFER std_logic_vector(5 DOWNTO 0);
	SE_in9_out : BUFFER std_logic_vector(8 DOWNTO 0);
	msbxtnder_out : BUFFER std_logic_vector(8 DOWNTO 0)
	);
END fsm;

-- Design Ports Information
-- mem_a_in[0]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_in[1]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_in[2]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_in[3]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_in[4]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_in[5]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_in[6]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_in[7]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_in[8]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_in[9]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_in[10]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_in[11]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_in[12]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_in[13]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_in[14]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_in[15]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[1]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[2]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[3]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[4]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[5]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[6]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[7]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[8]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[9]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[10]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[11]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[12]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[13]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[14]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[15]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ir_out[0]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ir_out[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ir_out[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ir_out[3]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ir_out[4]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ir_out[5]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ir_out[6]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ir_out[7]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ir_out[8]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ir_out[9]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ir_out[10]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ir_out[11]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ir_out[12]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ir_out[13]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ir_out[14]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ir_out[15]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_out[0]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_out[1]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_out[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_out[3]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_out[4]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_out[5]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_out[6]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_out[7]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_out[8]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_out[9]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_out[10]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_out[11]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_out[12]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_out[13]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_out[14]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_a_out[15]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_d_out[0]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_d_out[1]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_d_out[2]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_d_out[3]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_d_out[4]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_d_out[5]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_d_out[6]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_d_out[7]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_d_out[8]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_d_out[9]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_d_out[10]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_d_out[11]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_d_out[12]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_d_out[13]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_d_out[14]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_d_out[15]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_in_out[0]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_in_out[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_in_out[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_in_out[3]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_in_out[4]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_in_out[5]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_in_out[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_in_out[7]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_in_out[8]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_in_out[9]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_in_out[10]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_in_out[11]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_in_out[12]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_in_out[13]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_in_out[14]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_in_out[15]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D3_out[0]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D3_out[1]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D3_out[2]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D3_out[3]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D3_out[4]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D3_out[5]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D3_out[6]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D3_out[7]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D3_out[8]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D3_out[9]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D3_out[10]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D3_out[11]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D3_out[12]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D3_out[13]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D3_out[14]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D3_out[15]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a_out[0]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a_out[1]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a_out[2]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a_out[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a_out[4]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a_out[5]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a_out[6]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a_out[7]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a_out[8]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a_out[9]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a_out[10]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a_out[11]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a_out[12]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a_out[13]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a_out[14]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a_out[15]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b_out[0]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b_out[1]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b_out[2]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b_out[3]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b_out[4]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b_out[5]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b_out[6]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b_out[7]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b_out[8]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b_out[9]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b_out[10]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b_out[11]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b_out[12]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b_out[13]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b_out[14]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b_out[15]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_A1_out[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_A1_out[1]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_A1_out[2]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_A2_out[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_A2_out[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_A2_out[2]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_A3_out[0]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_A3_out[1]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_A3_out[2]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluctrl_out[0]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluctrl_out[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Regwr_out	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memwr_out	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iren	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modifyc_out	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modifyz_out	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_in6_out[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_in6_out[1]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_in6_out[2]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_in6_out[3]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_in6_out[4]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_in6_out[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_in9_out[0]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_in9_out[1]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_in9_out[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_in9_out[3]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_in9_out[4]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_in9_out[5]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_in9_out[6]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_in9_out[7]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_in9_out[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msbxtnder_out[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msbxtnder_out[1]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msbxtnder_out[2]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msbxtnder_out[3]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msbxtnder_out[4]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msbxtnder_out[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msbxtnder_out[6]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msbxtnder_out[7]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msbxtnder_out[8]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D1_in[0]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_c_in[0]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D1_in[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_c_in[1]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D1_in[2]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_c_in[2]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D1_in[3]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_c_in[3]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D1_in[4]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_c_in[4]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D1_in[5]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_c_in[5]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D1_in[6]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_c_in[6]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D1_in[7]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_c_in[7]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D1_in[8]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_c_in[8]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D1_in[9]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_c_in[9]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D1_in[10]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_c_in[10]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D1_in[11]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_c_in[11]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D1_in[12]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_c_in[12]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D1_in[13]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_c_in[13]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D1_in[14]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_c_in[14]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D1_in[15]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_c_in[15]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_d_in[0]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_d_in[1]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_d_in[2]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_d_in[3]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_d_in[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_d_in[5]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_d_in[6]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_d_in[7]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_d_in[8]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_d_in[9]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_d_in[10]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_d_in[11]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_d_in[12]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_d_in[13]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_d_in[14]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_d_in[15]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_in[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_in[1]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_in[2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_in[3]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_in[4]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_in[5]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_in[6]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_in[7]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_in[8]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_in[9]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_in[10]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_in[11]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_in[12]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_in[13]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_in[14]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_in[15]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msbxtnder_in[0]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msbxtnder_in[1]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msbxtnder_in[2]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msbxtnder_in[3]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msbxtnder_in[4]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msbxtnder_in[5]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msbxtnder_in[6]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msbxtnder_in[7]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msbxtnder_in[8]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msbxtnder_in[9]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msbxtnder_in[10]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msbxtnder_in[11]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msbxtnder_in[12]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msbxtnder_in[13]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msbxtnder_in[14]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msbxtnder_in[15]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ir_in[0]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ir_in[1]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ir_in[2]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ir_in[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ir_in[4]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ir_in[5]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ir_in[6]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ir_in[7]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_out6_in[0]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_out9_in[0]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_out6_in[1]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_out9_in[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_out6_in[2]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_out9_in[2]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_out6_in[3]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_out9_in[3]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_out6_in[4]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_out9_in[4]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_out6_in[5]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_out9_in[5]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_out6_in[6]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_out9_in[6]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_out6_in[7]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_out9_in[7]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_out6_in[8]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_out9_in[8]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_out6_in[9]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_out9_in[9]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_out6_in[10]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_out9_in[10]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_out6_in[11]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_out9_in[11]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_out6_in[12]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_out9_in[12]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_out6_in[13]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_out9_in[13]	=>  Location: PIN_Y28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_out6_in[14]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_out9_in[14]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_out6_in[15]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE_out9_in[15]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ir_in[9]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ir_in[10]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ir_in[11]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ir_in[8]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ir_in[15]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ir_in[14]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ir_in[13]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ir_in[12]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D2_in[0]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_out_in[0]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_out_in[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D2_in[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_out_in[2]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D2_in[2]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_out_in[3]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D2_in[3]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_out_in[4]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D2_in[4]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_out_in[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D2_in[5]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_out_in[6]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D2_in[6]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_out_in[7]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D2_in[7]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_out_in[8]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D2_in[8]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_out_in[9]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D2_in[9]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_out_in[10]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D2_in[10]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_out_in[11]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D2_in[11]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_out_in[12]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D2_in[12]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_out_in[13]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D2_in[13]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_out_in[14]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D2_in[14]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_out_in[15]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rf_D2_in[15]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z_out	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_out	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fsm IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_c_out : std_logic;
SIGNAL ww_z_out : std_logic;
SIGNAL ww_PC_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_alu_c_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Ir_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_mem_a_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_mem_d_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Rf_D1_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Rf_D2_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_SE_out6_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_SE_out9_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_msbxtnder_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_LS_out_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_PC_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Ir_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_mem_a_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_mem_d_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_LS_in_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Rf_D3_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_alu_a_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_alu_b_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Rf_A1_out : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Rf_A2_out : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Rf_A3_out : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_aluctrl_out : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Regwr_out : std_logic;
SIGNAL ww_memwr_out : std_logic;
SIGNAL ww_iren : std_logic;
SIGNAL ww_modifyc_out : std_logic;
SIGNAL ww_modifyz_out : std_logic;
SIGNAL ww_SE_in6_out : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_SE_in9_out : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_msbxtnder_out : std_logic_vector(8 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \WideOr3~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LS_in_out~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \WideOr22~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \state.s0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \WideOr17~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \state.s15~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \WideOr16~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \state.s11~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \WideOr10~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \WideOr19~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \state.s6~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SE_in6_out~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \WideOr11~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \WideOr14~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \WideOr7~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alu_b_out~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem_a_in[0]~input_o\ : std_logic;
SIGNAL \mem_a_in[1]~input_o\ : std_logic;
SIGNAL \mem_a_in[2]~input_o\ : std_logic;
SIGNAL \mem_a_in[3]~input_o\ : std_logic;
SIGNAL \mem_a_in[4]~input_o\ : std_logic;
SIGNAL \mem_a_in[5]~input_o\ : std_logic;
SIGNAL \mem_a_in[6]~input_o\ : std_logic;
SIGNAL \mem_a_in[7]~input_o\ : std_logic;
SIGNAL \mem_a_in[8]~input_o\ : std_logic;
SIGNAL \mem_a_in[9]~input_o\ : std_logic;
SIGNAL \mem_a_in[10]~input_o\ : std_logic;
SIGNAL \mem_a_in[11]~input_o\ : std_logic;
SIGNAL \mem_a_in[12]~input_o\ : std_logic;
SIGNAL \mem_a_in[13]~input_o\ : std_logic;
SIGNAL \mem_a_in[14]~input_o\ : std_logic;
SIGNAL \mem_a_in[15]~input_o\ : std_logic;
SIGNAL \PC_out[0]~output_o\ : std_logic;
SIGNAL \PC_out[1]~output_o\ : std_logic;
SIGNAL \PC_out[2]~output_o\ : std_logic;
SIGNAL \PC_out[3]~output_o\ : std_logic;
SIGNAL \PC_out[4]~output_o\ : std_logic;
SIGNAL \PC_out[5]~output_o\ : std_logic;
SIGNAL \PC_out[6]~output_o\ : std_logic;
SIGNAL \PC_out[7]~output_o\ : std_logic;
SIGNAL \PC_out[8]~output_o\ : std_logic;
SIGNAL \PC_out[9]~output_o\ : std_logic;
SIGNAL \PC_out[10]~output_o\ : std_logic;
SIGNAL \PC_out[11]~output_o\ : std_logic;
SIGNAL \PC_out[12]~output_o\ : std_logic;
SIGNAL \PC_out[13]~output_o\ : std_logic;
SIGNAL \PC_out[14]~output_o\ : std_logic;
SIGNAL \PC_out[15]~output_o\ : std_logic;
SIGNAL \Ir_out[0]~output_o\ : std_logic;
SIGNAL \Ir_out[1]~output_o\ : std_logic;
SIGNAL \Ir_out[2]~output_o\ : std_logic;
SIGNAL \Ir_out[3]~output_o\ : std_logic;
SIGNAL \Ir_out[4]~output_o\ : std_logic;
SIGNAL \Ir_out[5]~output_o\ : std_logic;
SIGNAL \Ir_out[6]~output_o\ : std_logic;
SIGNAL \Ir_out[7]~output_o\ : std_logic;
SIGNAL \Ir_out[8]~output_o\ : std_logic;
SIGNAL \Ir_out[9]~output_o\ : std_logic;
SIGNAL \Ir_out[10]~output_o\ : std_logic;
SIGNAL \Ir_out[11]~output_o\ : std_logic;
SIGNAL \Ir_out[12]~output_o\ : std_logic;
SIGNAL \Ir_out[13]~output_o\ : std_logic;
SIGNAL \Ir_out[14]~output_o\ : std_logic;
SIGNAL \Ir_out[15]~output_o\ : std_logic;
SIGNAL \mem_a_out[0]~output_o\ : std_logic;
SIGNAL \mem_a_out[1]~output_o\ : std_logic;
SIGNAL \mem_a_out[2]~output_o\ : std_logic;
SIGNAL \mem_a_out[3]~output_o\ : std_logic;
SIGNAL \mem_a_out[4]~output_o\ : std_logic;
SIGNAL \mem_a_out[5]~output_o\ : std_logic;
SIGNAL \mem_a_out[6]~output_o\ : std_logic;
SIGNAL \mem_a_out[7]~output_o\ : std_logic;
SIGNAL \mem_a_out[8]~output_o\ : std_logic;
SIGNAL \mem_a_out[9]~output_o\ : std_logic;
SIGNAL \mem_a_out[10]~output_o\ : std_logic;
SIGNAL \mem_a_out[11]~output_o\ : std_logic;
SIGNAL \mem_a_out[12]~output_o\ : std_logic;
SIGNAL \mem_a_out[13]~output_o\ : std_logic;
SIGNAL \mem_a_out[14]~output_o\ : std_logic;
SIGNAL \mem_a_out[15]~output_o\ : std_logic;
SIGNAL \mem_d_out[0]~output_o\ : std_logic;
SIGNAL \mem_d_out[1]~output_o\ : std_logic;
SIGNAL \mem_d_out[2]~output_o\ : std_logic;
SIGNAL \mem_d_out[3]~output_o\ : std_logic;
SIGNAL \mem_d_out[4]~output_o\ : std_logic;
SIGNAL \mem_d_out[5]~output_o\ : std_logic;
SIGNAL \mem_d_out[6]~output_o\ : std_logic;
SIGNAL \mem_d_out[7]~output_o\ : std_logic;
SIGNAL \mem_d_out[8]~output_o\ : std_logic;
SIGNAL \mem_d_out[9]~output_o\ : std_logic;
SIGNAL \mem_d_out[10]~output_o\ : std_logic;
SIGNAL \mem_d_out[11]~output_o\ : std_logic;
SIGNAL \mem_d_out[12]~output_o\ : std_logic;
SIGNAL \mem_d_out[13]~output_o\ : std_logic;
SIGNAL \mem_d_out[14]~output_o\ : std_logic;
SIGNAL \mem_d_out[15]~output_o\ : std_logic;
SIGNAL \LS_in_out[0]~output_o\ : std_logic;
SIGNAL \LS_in_out[1]~output_o\ : std_logic;
SIGNAL \LS_in_out[2]~output_o\ : std_logic;
SIGNAL \LS_in_out[3]~output_o\ : std_logic;
SIGNAL \LS_in_out[4]~output_o\ : std_logic;
SIGNAL \LS_in_out[5]~output_o\ : std_logic;
SIGNAL \LS_in_out[6]~output_o\ : std_logic;
SIGNAL \LS_in_out[7]~output_o\ : std_logic;
SIGNAL \LS_in_out[8]~output_o\ : std_logic;
SIGNAL \LS_in_out[9]~output_o\ : std_logic;
SIGNAL \LS_in_out[10]~output_o\ : std_logic;
SIGNAL \LS_in_out[11]~output_o\ : std_logic;
SIGNAL \LS_in_out[12]~output_o\ : std_logic;
SIGNAL \LS_in_out[13]~output_o\ : std_logic;
SIGNAL \LS_in_out[14]~output_o\ : std_logic;
SIGNAL \LS_in_out[15]~output_o\ : std_logic;
SIGNAL \Rf_D3_out[0]~output_o\ : std_logic;
SIGNAL \Rf_D3_out[1]~output_o\ : std_logic;
SIGNAL \Rf_D3_out[2]~output_o\ : std_logic;
SIGNAL \Rf_D3_out[3]~output_o\ : std_logic;
SIGNAL \Rf_D3_out[4]~output_o\ : std_logic;
SIGNAL \Rf_D3_out[5]~output_o\ : std_logic;
SIGNAL \Rf_D3_out[6]~output_o\ : std_logic;
SIGNAL \Rf_D3_out[7]~output_o\ : std_logic;
SIGNAL \Rf_D3_out[8]~output_o\ : std_logic;
SIGNAL \Rf_D3_out[9]~output_o\ : std_logic;
SIGNAL \Rf_D3_out[10]~output_o\ : std_logic;
SIGNAL \Rf_D3_out[11]~output_o\ : std_logic;
SIGNAL \Rf_D3_out[12]~output_o\ : std_logic;
SIGNAL \Rf_D3_out[13]~output_o\ : std_logic;
SIGNAL \Rf_D3_out[14]~output_o\ : std_logic;
SIGNAL \Rf_D3_out[15]~output_o\ : std_logic;
SIGNAL \alu_a_out[0]~output_o\ : std_logic;
SIGNAL \alu_a_out[1]~output_o\ : std_logic;
SIGNAL \alu_a_out[2]~output_o\ : std_logic;
SIGNAL \alu_a_out[3]~output_o\ : std_logic;
SIGNAL \alu_a_out[4]~output_o\ : std_logic;
SIGNAL \alu_a_out[5]~output_o\ : std_logic;
SIGNAL \alu_a_out[6]~output_o\ : std_logic;
SIGNAL \alu_a_out[7]~output_o\ : std_logic;
SIGNAL \alu_a_out[8]~output_o\ : std_logic;
SIGNAL \alu_a_out[9]~output_o\ : std_logic;
SIGNAL \alu_a_out[10]~output_o\ : std_logic;
SIGNAL \alu_a_out[11]~output_o\ : std_logic;
SIGNAL \alu_a_out[12]~output_o\ : std_logic;
SIGNAL \alu_a_out[13]~output_o\ : std_logic;
SIGNAL \alu_a_out[14]~output_o\ : std_logic;
SIGNAL \alu_a_out[15]~output_o\ : std_logic;
SIGNAL \alu_b_out[0]~output_o\ : std_logic;
SIGNAL \alu_b_out[1]~output_o\ : std_logic;
SIGNAL \alu_b_out[2]~output_o\ : std_logic;
SIGNAL \alu_b_out[3]~output_o\ : std_logic;
SIGNAL \alu_b_out[4]~output_o\ : std_logic;
SIGNAL \alu_b_out[5]~output_o\ : std_logic;
SIGNAL \alu_b_out[6]~output_o\ : std_logic;
SIGNAL \alu_b_out[7]~output_o\ : std_logic;
SIGNAL \alu_b_out[8]~output_o\ : std_logic;
SIGNAL \alu_b_out[9]~output_o\ : std_logic;
SIGNAL \alu_b_out[10]~output_o\ : std_logic;
SIGNAL \alu_b_out[11]~output_o\ : std_logic;
SIGNAL \alu_b_out[12]~output_o\ : std_logic;
SIGNAL \alu_b_out[13]~output_o\ : std_logic;
SIGNAL \alu_b_out[14]~output_o\ : std_logic;
SIGNAL \alu_b_out[15]~output_o\ : std_logic;
SIGNAL \Rf_A1_out[0]~output_o\ : std_logic;
SIGNAL \Rf_A1_out[1]~output_o\ : std_logic;
SIGNAL \Rf_A1_out[2]~output_o\ : std_logic;
SIGNAL \Rf_A2_out[0]~output_o\ : std_logic;
SIGNAL \Rf_A2_out[1]~output_o\ : std_logic;
SIGNAL \Rf_A2_out[2]~output_o\ : std_logic;
SIGNAL \Rf_A3_out[0]~output_o\ : std_logic;
SIGNAL \Rf_A3_out[1]~output_o\ : std_logic;
SIGNAL \Rf_A3_out[2]~output_o\ : std_logic;
SIGNAL \aluctrl_out[0]~output_o\ : std_logic;
SIGNAL \aluctrl_out[1]~output_o\ : std_logic;
SIGNAL \Regwr_out~output_o\ : std_logic;
SIGNAL \memwr_out~output_o\ : std_logic;
SIGNAL \iren~output_o\ : std_logic;
SIGNAL \modifyc_out~output_o\ : std_logic;
SIGNAL \modifyz_out~output_o\ : std_logic;
SIGNAL \SE_in6_out[0]~output_o\ : std_logic;
SIGNAL \SE_in6_out[1]~output_o\ : std_logic;
SIGNAL \SE_in6_out[2]~output_o\ : std_logic;
SIGNAL \SE_in6_out[3]~output_o\ : std_logic;
SIGNAL \SE_in6_out[4]~output_o\ : std_logic;
SIGNAL \SE_in6_out[5]~output_o\ : std_logic;
SIGNAL \SE_in9_out[0]~output_o\ : std_logic;
SIGNAL \SE_in9_out[1]~output_o\ : std_logic;
SIGNAL \SE_in9_out[2]~output_o\ : std_logic;
SIGNAL \SE_in9_out[3]~output_o\ : std_logic;
SIGNAL \SE_in9_out[4]~output_o\ : std_logic;
SIGNAL \SE_in9_out[5]~output_o\ : std_logic;
SIGNAL \SE_in9_out[6]~output_o\ : std_logic;
SIGNAL \SE_in9_out[7]~output_o\ : std_logic;
SIGNAL \SE_in9_out[8]~output_o\ : std_logic;
SIGNAL \msbxtnder_out[0]~output_o\ : std_logic;
SIGNAL \msbxtnder_out[1]~output_o\ : std_logic;
SIGNAL \msbxtnder_out[2]~output_o\ : std_logic;
SIGNAL \msbxtnder_out[3]~output_o\ : std_logic;
SIGNAL \msbxtnder_out[4]~output_o\ : std_logic;
SIGNAL \msbxtnder_out[5]~output_o\ : std_logic;
SIGNAL \msbxtnder_out[6]~output_o\ : std_logic;
SIGNAL \msbxtnder_out[7]~output_o\ : std_logic;
SIGNAL \msbxtnder_out[8]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Ir_in[13]~input_o\ : std_logic;
SIGNAL \Ir_in[12]~input_o\ : std_logic;
SIGNAL \Ir_in[15]~input_o\ : std_logic;
SIGNAL \Ir_in[14]~input_o\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Equal6~3_combout\ : std_logic;
SIGNAL \Ir_in[0]~input_o\ : std_logic;
SIGNAL \OUTPUT_DECODE~0_combout\ : std_logic;
SIGNAL \Ir_in[1]~input_o\ : std_logic;
SIGNAL \state~52_combout\ : std_logic;
SIGNAL \state~53_combout\ : std_logic;
SIGNAL \next_state~10_combout\ : std_logic;
SIGNAL \Equal6~2_combout\ : std_logic;
SIGNAL \state~67_combout\ : std_logic;
SIGNAL \state.s7~q\ : std_logic;
SIGNAL \Equal6~6_combout\ : std_logic;
SIGNAL \state~62_combout\ : std_logic;
SIGNAL \Equal6~7_combout\ : std_logic;
SIGNAL \state~63_combout\ : std_logic;
SIGNAL \state~64_combout\ : std_logic;
SIGNAL \state.s10~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.s8~q\ : std_logic;
SIGNAL \state~55_combout\ : std_logic;
SIGNAL \state.s11~feeder_combout\ : std_logic;
SIGNAL \state.s11~q\ : std_logic;
SIGNAL \state~51_combout\ : std_logic;
SIGNAL \state.s24~q\ : std_logic;
SIGNAL \state~41_combout\ : std_logic;
SIGNAL \state~78_combout\ : std_logic;
SIGNAL \state.s26~q\ : std_logic;
SIGNAL \WideOr24~0_combout\ : std_logic;
SIGNAL \Equal6~5_combout\ : std_logic;
SIGNAL \state~60_combout\ : std_logic;
SIGNAL \state.s21~q\ : std_logic;
SIGNAL \NEXT_STATE_DECODE~0_combout\ : std_logic;
SIGNAL \state~73_combout\ : std_logic;
SIGNAL \state.s5~q\ : std_logic;
SIGNAL \next_state~11_combout\ : std_logic;
SIGNAL \next_state~12_combout\ : std_logic;
SIGNAL \next_state~13_combout\ : std_logic;
SIGNAL \state~71_combout\ : std_logic;
SIGNAL \c_out~input_o\ : std_logic;
SIGNAL \NEXT_STATE_DECODE~1_combout\ : std_logic;
SIGNAL \state~74_combout\ : std_logic;
SIGNAL \state.s12~q\ : std_logic;
SIGNAL \z_out~input_o\ : std_logic;
SIGNAL \state~61_combout\ : std_logic;
SIGNAL \state.s13~q\ : std_logic;
SIGNAL \state~58_combout\ : std_logic;
SIGNAL \state.s19~q\ : std_logic;
SIGNAL \Equal6~8_combout\ : std_logic;
SIGNAL \state~65_combout\ : std_logic;
SIGNAL \state.s14~q\ : std_logic;
SIGNAL \state~66_combout\ : std_logic;
SIGNAL \state.s20~q\ : std_logic;
SIGNAL \Equal6~4_combout\ : std_logic;
SIGNAL \state~56_combout\ : std_logic;
SIGNAL \state.s15~feeder_combout\ : std_logic;
SIGNAL \state.s15~q\ : std_logic;
SIGNAL \state~57_combout\ : std_logic;
SIGNAL \state.s16~q\ : std_logic;
SIGNAL \WideOr28~combout\ : std_logic;
SIGNAL \state.s17~q\ : std_logic;
SIGNAL \state~59_combout\ : std_logic;
SIGNAL \state.s18~q\ : std_logic;
SIGNAL \next_state.s27~combout\ : std_logic;
SIGNAL \state.s27~q\ : std_logic;
SIGNAL \state~70_combout\ : std_logic;
SIGNAL \state~68_combout\ : std_logic;
SIGNAL \state~69_combout\ : std_logic;
SIGNAL \state~72_combout\ : std_logic;
SIGNAL \state.s1~q\ : std_logic;
SIGNAL \state~77_combout\ : std_logic;
SIGNAL \state.s4~q\ : std_logic;
SIGNAL \WideOr26~0_combout\ : std_logic;
SIGNAL \state.s2~q\ : std_logic;
SIGNAL \state~54_combout\ : std_logic;
SIGNAL \state.s9~q\ : std_logic;
SIGNAL \next_state.s3~combout\ : std_logic;
SIGNAL \state.s3~q\ : std_logic;
SIGNAL \state~76_combout\ : std_logic;
SIGNAL \state.s6~q\ : std_logic;
SIGNAL \WideOr24~combout\ : std_logic;
SIGNAL \state.s0~q\ : std_logic;
SIGNAL \state~75_combout\ : std_logic;
SIGNAL \state.s23~q\ : std_logic;
SIGNAL \state~50_combout\ : std_logic;
SIGNAL \state.s25~q\ : std_logic;
SIGNAL \Rf_D1_in[0]~input_o\ : std_logic;
SIGNAL \alu_c_in[0]~input_o\ : std_logic;
SIGNAL \Selector84~0_combout\ : std_logic;
SIGNAL \WideOr10~0_combout\ : std_logic;
SIGNAL \WideOr10~0clkctrl_outclk\ : std_logic;
SIGNAL \PC_out[0]$latch~combout\ : std_logic;
SIGNAL \Rf_D1_in[1]~input_o\ : std_logic;
SIGNAL \alu_c_in[1]~input_o\ : std_logic;
SIGNAL \Selector85~0_combout\ : std_logic;
SIGNAL \PC_out[1]$latch~combout\ : std_logic;
SIGNAL \alu_c_in[2]~input_o\ : std_logic;
SIGNAL \Rf_D1_in[2]~input_o\ : std_logic;
SIGNAL \Selector86~0_combout\ : std_logic;
SIGNAL \PC_out[2]$latch~combout\ : std_logic;
SIGNAL \Rf_D1_in[3]~input_o\ : std_logic;
SIGNAL \alu_c_in[3]~input_o\ : std_logic;
SIGNAL \Selector87~0_combout\ : std_logic;
SIGNAL \PC_out[3]$latch~combout\ : std_logic;
SIGNAL \alu_c_in[4]~input_o\ : std_logic;
SIGNAL \Rf_D1_in[4]~input_o\ : std_logic;
SIGNAL \Selector88~0_combout\ : std_logic;
SIGNAL \PC_out[4]$latch~combout\ : std_logic;
SIGNAL \alu_c_in[5]~input_o\ : std_logic;
SIGNAL \Rf_D1_in[5]~input_o\ : std_logic;
SIGNAL \Selector89~0_combout\ : std_logic;
SIGNAL \PC_out[5]$latch~combout\ : std_logic;
SIGNAL \alu_c_in[6]~input_o\ : std_logic;
SIGNAL \Rf_D1_in[6]~input_o\ : std_logic;
SIGNAL \Selector90~0_combout\ : std_logic;
SIGNAL \PC_out[6]$latch~combout\ : std_logic;
SIGNAL \Rf_D1_in[7]~input_o\ : std_logic;
SIGNAL \alu_c_in[7]~input_o\ : std_logic;
SIGNAL \Selector91~0_combout\ : std_logic;
SIGNAL \PC_out[7]$latch~combout\ : std_logic;
SIGNAL \Rf_D1_in[8]~input_o\ : std_logic;
SIGNAL \alu_c_in[8]~input_o\ : std_logic;
SIGNAL \Selector92~0_combout\ : std_logic;
SIGNAL \PC_out[8]$latch~combout\ : std_logic;
SIGNAL \alu_c_in[9]~input_o\ : std_logic;
SIGNAL \Rf_D1_in[9]~input_o\ : std_logic;
SIGNAL \Selector93~0_combout\ : std_logic;
SIGNAL \PC_out[9]$latch~combout\ : std_logic;
SIGNAL \Rf_D1_in[10]~input_o\ : std_logic;
SIGNAL \alu_c_in[10]~input_o\ : std_logic;
SIGNAL \Selector94~0_combout\ : std_logic;
SIGNAL \PC_out[10]$latch~combout\ : std_logic;
SIGNAL \alu_c_in[11]~input_o\ : std_logic;
SIGNAL \Rf_D1_in[11]~input_o\ : std_logic;
SIGNAL \Selector95~0_combout\ : std_logic;
SIGNAL \PC_out[11]$latch~combout\ : std_logic;
SIGNAL \Rf_D1_in[12]~input_o\ : std_logic;
SIGNAL \alu_c_in[12]~input_o\ : std_logic;
SIGNAL \Selector96~0_combout\ : std_logic;
SIGNAL \PC_out[12]$latch~combout\ : std_logic;
SIGNAL \Rf_D1_in[13]~input_o\ : std_logic;
SIGNAL \alu_c_in[13]~input_o\ : std_logic;
SIGNAL \Selector97~0_combout\ : std_logic;
SIGNAL \PC_out[13]$latch~combout\ : std_logic;
SIGNAL \alu_c_in[14]~input_o\ : std_logic;
SIGNAL \Rf_D1_in[14]~input_o\ : std_logic;
SIGNAL \Selector98~0_combout\ : std_logic;
SIGNAL \PC_out[14]$latch~combout\ : std_logic;
SIGNAL \alu_c_in[15]~input_o\ : std_logic;
SIGNAL \Rf_D1_in[15]~input_o\ : std_logic;
SIGNAL \Selector99~0_combout\ : std_logic;
SIGNAL \PC_out[15]$latch~combout\ : std_logic;
SIGNAL \mem_d_in[0]~input_o\ : std_logic;
SIGNAL \state.s0~clkctrl_outclk\ : std_logic;
SIGNAL \Ir_out[0]$latch~combout\ : std_logic;
SIGNAL \mem_d_in[1]~input_o\ : std_logic;
SIGNAL \Ir_out[1]$latch~combout\ : std_logic;
SIGNAL \mem_d_in[2]~input_o\ : std_logic;
SIGNAL \Ir_out[2]$latch~combout\ : std_logic;
SIGNAL \mem_d_in[3]~input_o\ : std_logic;
SIGNAL \Ir_out[3]$latch~combout\ : std_logic;
SIGNAL \mem_d_in[4]~input_o\ : std_logic;
SIGNAL \Ir_out[4]$latch~combout\ : std_logic;
SIGNAL \mem_d_in[5]~input_o\ : std_logic;
SIGNAL \Ir_out[5]$latch~combout\ : std_logic;
SIGNAL \mem_d_in[6]~input_o\ : std_logic;
SIGNAL \Ir_out[6]$latch~combout\ : std_logic;
SIGNAL \mem_d_in[7]~input_o\ : std_logic;
SIGNAL \Ir_out[7]$latch~combout\ : std_logic;
SIGNAL \mem_d_in[8]~input_o\ : std_logic;
SIGNAL \Ir_out[8]$latch~combout\ : std_logic;
SIGNAL \mem_d_in[9]~input_o\ : std_logic;
SIGNAL \Ir_out[9]$latch~combout\ : std_logic;
SIGNAL \mem_d_in[10]~input_o\ : std_logic;
SIGNAL \Ir_out[10]$latch~combout\ : std_logic;
SIGNAL \mem_d_in[11]~input_o\ : std_logic;
SIGNAL \Ir_out[11]$latch~combout\ : std_logic;
SIGNAL \mem_d_in[12]~input_o\ : std_logic;
SIGNAL \Ir_out[12]$latch~combout\ : std_logic;
SIGNAL \mem_d_in[13]~input_o\ : std_logic;
SIGNAL \Ir_out[13]$latch~combout\ : std_logic;
SIGNAL \mem_d_in[14]~input_o\ : std_logic;
SIGNAL \Ir_out[14]$latch~combout\ : std_logic;
SIGNAL \mem_d_in[15]~input_o\ : std_logic;
SIGNAL \Ir_out[15]$latch~combout\ : std_logic;
SIGNAL \PC_in[0]~input_o\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector23~1_combout\ : std_logic;
SIGNAL \WideOr19~0_combout\ : std_logic;
SIGNAL \WideOr19~1_combout\ : std_logic;
SIGNAL \WideOr19~1clkctrl_outclk\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \Selector101~0_combout\ : std_logic;
SIGNAL \WideOr7~0_combout\ : std_logic;
SIGNAL \WideOr7~0clkctrl_outclk\ : std_logic;
SIGNAL \mem_a_out[0]$latch~combout\ : std_logic;
SIGNAL \PC_in[1]~input_o\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector25~1_combout\ : std_logic;
SIGNAL \Selector102~0_combout\ : std_logic;
SIGNAL \mem_a_out[1]$latch~combout\ : std_logic;
SIGNAL \PC_in[2]~input_o\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Selector26~1_combout\ : std_logic;
SIGNAL \Selector103~0_combout\ : std_logic;
SIGNAL \mem_a_out[2]$latch~combout\ : std_logic;
SIGNAL \PC_in[3]~input_o\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Selector27~1_combout\ : std_logic;
SIGNAL \Selector104~0_combout\ : std_logic;
SIGNAL \mem_a_out[3]$latch~combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Selector28~1_combout\ : std_logic;
SIGNAL \PC_in[4]~input_o\ : std_logic;
SIGNAL \Selector105~0_combout\ : std_logic;
SIGNAL \mem_a_out[4]$latch~combout\ : std_logic;
SIGNAL \PC_in[5]~input_o\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Selector29~1_combout\ : std_logic;
SIGNAL \Selector106~0_combout\ : std_logic;
SIGNAL \mem_a_out[5]$latch~combout\ : std_logic;
SIGNAL \PC_in[6]~input_o\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Selector30~1_combout\ : std_logic;
SIGNAL \Selector107~0_combout\ : std_logic;
SIGNAL \mem_a_out[6]$latch~combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \Selector31~1_combout\ : std_logic;
SIGNAL \PC_in[7]~input_o\ : std_logic;
SIGNAL \Selector108~0_combout\ : std_logic;
SIGNAL \mem_a_out[7]$latch~combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Selector32~1_combout\ : std_logic;
SIGNAL \PC_in[8]~input_o\ : std_logic;
SIGNAL \Selector109~0_combout\ : std_logic;
SIGNAL \mem_a_out[8]$latch~combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \Selector33~1_combout\ : std_logic;
SIGNAL \PC_in[9]~input_o\ : std_logic;
SIGNAL \Selector110~0_combout\ : std_logic;
SIGNAL \mem_a_out[9]$latch~combout\ : std_logic;
SIGNAL \PC_in[10]~input_o\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Selector34~1_combout\ : std_logic;
SIGNAL \Selector111~0_combout\ : std_logic;
SIGNAL \mem_a_out[10]$latch~combout\ : std_logic;
SIGNAL \PC_in[11]~input_o\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \Selector35~1_combout\ : std_logic;
SIGNAL \Selector112~0_combout\ : std_logic;
SIGNAL \mem_a_out[11]$latch~combout\ : std_logic;
SIGNAL \PC_in[12]~input_o\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \Selector36~1_combout\ : std_logic;
SIGNAL \Selector113~0_combout\ : std_logic;
SIGNAL \mem_a_out[12]$latch~combout\ : std_logic;
SIGNAL \PC_in[13]~input_o\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \Selector37~1_combout\ : std_logic;
SIGNAL \Selector114~0_combout\ : std_logic;
SIGNAL \mem_a_out[13]$latch~combout\ : std_logic;
SIGNAL \PC_in[14]~input_o\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \Selector38~1_combout\ : std_logic;
SIGNAL \Selector115~0_combout\ : std_logic;
SIGNAL \mem_a_out[14]$latch~combout\ : std_logic;
SIGNAL \PC_in[15]~input_o\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \Selector39~1_combout\ : std_logic;
SIGNAL \Selector116~0_combout\ : std_logic;
SIGNAL \mem_a_out[15]$latch~combout\ : std_logic;
SIGNAL \state.s11~clkctrl_outclk\ : std_logic;
SIGNAL \LS_out_in[0]~input_o\ : std_logic;
SIGNAL \WideOr18~0_combout\ : std_logic;
SIGNAL \Rf_D2_in[0]~input_o\ : std_logic;
SIGNAL \Selector40~2_combout\ : std_logic;
SIGNAL \Selector40~3_combout\ : std_logic;
SIGNAL \LS_in_out~0_combout\ : std_logic;
SIGNAL \WideOr17~0_combout\ : std_logic;
SIGNAL \WideOr17~0clkctrl_outclk\ : std_logic;
SIGNAL \mem_d_out[0]$latch~combout\ : std_logic;
SIGNAL \LS_out_in[1]~input_o\ : std_logic;
SIGNAL \Rf_D2_in[1]~input_o\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \Selector42~1_combout\ : std_logic;
SIGNAL \mem_d_out[1]$latch~combout\ : std_logic;
SIGNAL \LS_out_in[2]~input_o\ : std_logic;
SIGNAL \Rf_D2_in[2]~input_o\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Selector43~1_combout\ : std_logic;
SIGNAL \mem_d_out[2]$latch~combout\ : std_logic;
SIGNAL \LS_out_in[3]~input_o\ : std_logic;
SIGNAL \Rf_D2_in[3]~input_o\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Selector44~1_combout\ : std_logic;
SIGNAL \mem_d_out[3]$latch~combout\ : std_logic;
SIGNAL \LS_out_in[4]~input_o\ : std_logic;
SIGNAL \Rf_D2_in[4]~input_o\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \Selector45~1_combout\ : std_logic;
SIGNAL \mem_d_out[4]$latch~combout\ : std_logic;
SIGNAL \Rf_D2_in[5]~input_o\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \LS_out_in[5]~input_o\ : std_logic;
SIGNAL \Selector46~1_combout\ : std_logic;
SIGNAL \mem_d_out[5]$latch~combout\ : std_logic;
SIGNAL \Rf_D2_in[6]~input_o\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \LS_out_in[6]~input_o\ : std_logic;
SIGNAL \Selector47~1_combout\ : std_logic;
SIGNAL \mem_d_out[6]$latch~combout\ : std_logic;
SIGNAL \LS_out_in[7]~input_o\ : std_logic;
SIGNAL \Rf_D2_in[7]~input_o\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \Selector48~1_combout\ : std_logic;
SIGNAL \mem_d_out[7]$latch~combout\ : std_logic;
SIGNAL \LS_out_in[8]~input_o\ : std_logic;
SIGNAL \Rf_D2_in[8]~input_o\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \Selector49~1_combout\ : std_logic;
SIGNAL \mem_d_out[8]$latch~combout\ : std_logic;
SIGNAL \LS_out_in[9]~input_o\ : std_logic;
SIGNAL \Rf_D2_in[9]~input_o\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \Selector50~1_combout\ : std_logic;
SIGNAL \mem_d_out[9]$latch~combout\ : std_logic;
SIGNAL \LS_out_in[10]~input_o\ : std_logic;
SIGNAL \Rf_D2_in[10]~input_o\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \Selector51~1_combout\ : std_logic;
SIGNAL \mem_d_out[10]$latch~combout\ : std_logic;
SIGNAL \Rf_D2_in[11]~input_o\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \LS_out_in[11]~input_o\ : std_logic;
SIGNAL \Selector52~1_combout\ : std_logic;
SIGNAL \mem_d_out[11]$latch~combout\ : std_logic;
SIGNAL \LS_out_in[12]~input_o\ : std_logic;
SIGNAL \Rf_D2_in[12]~input_o\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \Selector53~1_combout\ : std_logic;
SIGNAL \mem_d_out[12]$latch~combout\ : std_logic;
SIGNAL \LS_out_in[13]~input_o\ : std_logic;
SIGNAL \Rf_D2_in[13]~input_o\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \Selector54~1_combout\ : std_logic;
SIGNAL \mem_d_out[13]$latch~combout\ : std_logic;
SIGNAL \LS_out_in[14]~input_o\ : std_logic;
SIGNAL \Rf_D2_in[14]~input_o\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \Selector55~1_combout\ : std_logic;
SIGNAL \mem_d_out[14]$latch~combout\ : std_logic;
SIGNAL \LS_out_in[15]~input_o\ : std_logic;
SIGNAL \Rf_D2_in[15]~input_o\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \Selector56~1_combout\ : std_logic;
SIGNAL \mem_d_out[15]$latch~combout\ : std_logic;
SIGNAL \LS_in_out~0clkctrl_outclk\ : std_logic;
SIGNAL \LS_in_out[0]$latch~combout\ : std_logic;
SIGNAL \LS_in_out[1]$latch~combout\ : std_logic;
SIGNAL \LS_in_out[2]$latch~combout\ : std_logic;
SIGNAL \LS_in_out[3]$latch~combout\ : std_logic;
SIGNAL \LS_in_out[4]$latch~combout\ : std_logic;
SIGNAL \LS_in_out[5]$latch~combout\ : std_logic;
SIGNAL \LS_in_out[6]$latch~combout\ : std_logic;
SIGNAL \LS_in_out[7]$latch~combout\ : std_logic;
SIGNAL \LS_in_out[8]$latch~combout\ : std_logic;
SIGNAL \LS_in_out[9]$latch~combout\ : std_logic;
SIGNAL \LS_in_out[10]$latch~combout\ : std_logic;
SIGNAL \LS_in_out[11]$latch~combout\ : std_logic;
SIGNAL \LS_in_out[12]$latch~combout\ : std_logic;
SIGNAL \LS_in_out[13]$latch~combout\ : std_logic;
SIGNAL \LS_in_out[14]$latch~combout\ : std_logic;
SIGNAL \LS_in_out[15]$latch~combout\ : std_logic;
SIGNAL \WideOr22~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \msbxtnder_in[0]~input_o\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \state.s15~clkctrl_outclk\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \WideOr22~1_combout\ : std_logic;
SIGNAL \WideOr22~1clkctrl_outclk\ : std_logic;
SIGNAL \Rf_D3_out[0]$latch~combout\ : std_logic;
SIGNAL \msbxtnder_in[1]~input_o\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Rf_D3_out[1]$latch~combout\ : std_logic;
SIGNAL \msbxtnder_in[2]~input_o\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Rf_D3_out[2]$latch~combout\ : std_logic;
SIGNAL \msbxtnder_in[3]~input_o\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Rf_D3_out[3]$latch~combout\ : std_logic;
SIGNAL \msbxtnder_in[4]~input_o\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Selector10~2_combout\ : std_logic;
SIGNAL \Rf_D3_out[4]$latch~combout\ : std_logic;
SIGNAL \msbxtnder_in[5]~input_o\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \Rf_D3_out[5]$latch~combout\ : std_logic;
SIGNAL \msbxtnder_in[6]~input_o\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \Rf_D3_out[6]$latch~combout\ : std_logic;
SIGNAL \msbxtnder_in[7]~input_o\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \Rf_D3_out[7]$latch~combout\ : std_logic;
SIGNAL \msbxtnder_in[8]~input_o\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \Rf_D3_out[8]$latch~combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \msbxtnder_in[9]~input_o\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \Rf_D3_out[9]$latch~combout\ : std_logic;
SIGNAL \msbxtnder_in[10]~input_o\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \Rf_D3_out[10]$latch~combout\ : std_logic;
SIGNAL \msbxtnder_in[11]~input_o\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \Rf_D3_out[11]$latch~combout\ : std_logic;
SIGNAL \msbxtnder_in[12]~input_o\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \Rf_D3_out[12]$latch~combout\ : std_logic;
SIGNAL \msbxtnder_in[13]~input_o\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector19~1_combout\ : std_logic;
SIGNAL \Rf_D3_out[13]$latch~combout\ : std_logic;
SIGNAL \msbxtnder_in[14]~input_o\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector20~1_combout\ : std_logic;
SIGNAL \Rf_D3_out[14]$latch~combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \msbxtnder_in[15]~input_o\ : std_logic;
SIGNAL \Selector21~1_combout\ : std_logic;
SIGNAL \Rf_D3_out[15]$latch~combout\ : std_logic;
SIGNAL \Selector136~1_combout\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \alu_a_out~4_combout\ : std_logic;
SIGNAL \SE_out6_in[0]~input_o\ : std_logic;
SIGNAL \Selector69~1_combout\ : std_logic;
SIGNAL \Selector69~2_combout\ : std_logic;
SIGNAL \Selector69~3_combout\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \Selector69~0_combout\ : std_logic;
SIGNAL \Selector57~combout\ : std_logic;
SIGNAL \WideOr11~2_combout\ : std_logic;
SIGNAL \WideOr16~0_combout\ : std_logic;
SIGNAL \WideOr16~0clkctrl_outclk\ : std_logic;
SIGNAL \Selector136~0_combout\ : std_logic;
SIGNAL \alu_a_out~5_combout\ : std_logic;
SIGNAL \Selector136~2_combout\ : std_logic;
SIGNAL \alu_b_out~1_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \WideOr3~0clkctrl_outclk\ : std_logic;
SIGNAL \alu_a_out[0]$latch~combout\ : std_logic;
SIGNAL \SE_out6_in[1]~input_o\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \Selector59~combout\ : std_logic;
SIGNAL \Selector137~0_combout\ : std_logic;
SIGNAL \Selector137~1_combout\ : std_logic;
SIGNAL \Selector137~2_combout\ : std_logic;
SIGNAL \alu_a_out[1]$latch~combout\ : std_logic;
SIGNAL \Ir_in[2]~input_o\ : std_logic;
SIGNAL \Selector138~1_combout\ : std_logic;
SIGNAL \SE_out6_in[2]~input_o\ : std_logic;
SIGNAL \Selector60~0_combout\ : std_logic;
SIGNAL \Selector60~combout\ : std_logic;
SIGNAL \Selector138~0_combout\ : std_logic;
SIGNAL \Selector138~2_combout\ : std_logic;
SIGNAL \alu_a_out[2]$latch~combout\ : std_logic;
SIGNAL \Ir_in[3]~input_o\ : std_logic;
SIGNAL \Selector139~1_combout\ : std_logic;
SIGNAL \SE_out6_in[3]~input_o\ : std_logic;
SIGNAL \Selector61~0_combout\ : std_logic;
SIGNAL \Selector61~combout\ : std_logic;
SIGNAL \Selector139~0_combout\ : std_logic;
SIGNAL \Selector139~2_combout\ : std_logic;
SIGNAL \alu_a_out[3]$latch~combout\ : std_logic;
SIGNAL \Ir_in[4]~input_o\ : std_logic;
SIGNAL \Selector140~1_combout\ : std_logic;
SIGNAL \SE_out6_in[4]~input_o\ : std_logic;
SIGNAL \Selector62~0_combout\ : std_logic;
SIGNAL \Selector62~combout\ : std_logic;
SIGNAL \Selector140~0_combout\ : std_logic;
SIGNAL \Selector140~2_combout\ : std_logic;
SIGNAL \alu_a_out[4]$latch~combout\ : std_logic;
SIGNAL \Ir_in[5]~input_o\ : std_logic;
SIGNAL \Selector141~1_combout\ : std_logic;
SIGNAL \SE_out6_in[5]~input_o\ : std_logic;
SIGNAL \Selector63~0_combout\ : std_logic;
SIGNAL \Selector63~combout\ : std_logic;
SIGNAL \Selector141~0_combout\ : std_logic;
SIGNAL \Selector141~2_combout\ : std_logic;
SIGNAL \alu_a_out[5]$latch~combout\ : std_logic;
SIGNAL \Ir_in[6]~input_o\ : std_logic;
SIGNAL \Selector142~1_combout\ : std_logic;
SIGNAL \SE_out6_in[6]~input_o\ : std_logic;
SIGNAL \Selector64~0_combout\ : std_logic;
SIGNAL \Selector64~combout\ : std_logic;
SIGNAL \Selector142~0_combout\ : std_logic;
SIGNAL \Selector142~2_combout\ : std_logic;
SIGNAL \alu_a_out[6]$latch~combout\ : std_logic;
SIGNAL \SE_out6_in[7]~input_o\ : std_logic;
SIGNAL \Selector65~0_combout\ : std_logic;
SIGNAL \Selector65~combout\ : std_logic;
SIGNAL \Selector143~0_combout\ : std_logic;
SIGNAL \Ir_in[7]~input_o\ : std_logic;
SIGNAL \Selector143~1_combout\ : std_logic;
SIGNAL \Selector143~2_combout\ : std_logic;
SIGNAL \alu_a_out[7]$latch~combout\ : std_logic;
SIGNAL \Selector144~1_combout\ : std_logic;
SIGNAL \SE_out6_in[8]~input_o\ : std_logic;
SIGNAL \Selector66~0_combout\ : std_logic;
SIGNAL \Selector66~combout\ : std_logic;
SIGNAL \Selector144~0_combout\ : std_logic;
SIGNAL \Selector144~2_combout\ : std_logic;
SIGNAL \alu_a_out[8]$latch~combout\ : std_logic;
SIGNAL \SE_out6_in[9]~input_o\ : std_logic;
SIGNAL \Selector67~0_combout\ : std_logic;
SIGNAL \Selector67~combout\ : std_logic;
SIGNAL \Selector145~0_combout\ : std_logic;
SIGNAL \Selector145~1_combout\ : std_logic;
SIGNAL \Selector145~2_combout\ : std_logic;
SIGNAL \alu_a_out[9]$latch~combout\ : std_logic;
SIGNAL \Selector146~1_combout\ : std_logic;
SIGNAL \SE_out6_in[10]~input_o\ : std_logic;
SIGNAL \Selector68~0_combout\ : std_logic;
SIGNAL \Selector68~combout\ : std_logic;
SIGNAL \Selector146~0_combout\ : std_logic;
SIGNAL \Selector146~2_combout\ : std_logic;
SIGNAL \alu_a_out[10]$latch~combout\ : std_logic;
SIGNAL \Selector147~1_combout\ : std_logic;
SIGNAL \SE_out6_in[11]~input_o\ : std_logic;
SIGNAL \Selector69~4_combout\ : std_logic;
SIGNAL \Selector69~combout\ : std_logic;
SIGNAL \Selector147~0_combout\ : std_logic;
SIGNAL \Selector147~2_combout\ : std_logic;
SIGNAL \alu_a_out[11]$latch~combout\ : std_logic;
SIGNAL \Selector148~1_combout\ : std_logic;
SIGNAL \SE_out6_in[12]~input_o\ : std_logic;
SIGNAL \Selector70~0_combout\ : std_logic;
SIGNAL \Selector70~combout\ : std_logic;
SIGNAL \Selector148~0_combout\ : std_logic;
SIGNAL \Selector148~2_combout\ : std_logic;
SIGNAL \alu_a_out[12]$latch~combout\ : std_logic;
SIGNAL \Selector149~1_combout\ : std_logic;
SIGNAL \SE_out6_in[13]~input_o\ : std_logic;
SIGNAL \Selector71~0_combout\ : std_logic;
SIGNAL \Selector71~combout\ : std_logic;
SIGNAL \Selector149~0_combout\ : std_logic;
SIGNAL \Selector149~2_combout\ : std_logic;
SIGNAL \alu_a_out[13]$latch~combout\ : std_logic;
SIGNAL \Selector150~1_combout\ : std_logic;
SIGNAL \SE_out6_in[14]~input_o\ : std_logic;
SIGNAL \Selector72~0_combout\ : std_logic;
SIGNAL \Selector72~combout\ : std_logic;
SIGNAL \Selector150~0_combout\ : std_logic;
SIGNAL \Selector150~2_combout\ : std_logic;
SIGNAL \alu_a_out[14]$latch~combout\ : std_logic;
SIGNAL \Selector151~1_combout\ : std_logic;
SIGNAL \SE_out6_in[15]~input_o\ : std_logic;
SIGNAL \Selector73~0_combout\ : std_logic;
SIGNAL \Selector73~combout\ : std_logic;
SIGNAL \Selector151~0_combout\ : std_logic;
SIGNAL \Selector151~2_combout\ : std_logic;
SIGNAL \alu_a_out[15]$latch~combout\ : std_logic;
SIGNAL \SE_out9_in[0]~input_o\ : std_logic;
SIGNAL \WideOr6~combout\ : std_logic;
SIGNAL \Selector118~2_combout\ : std_logic;
SIGNAL \Selector118~3_combout\ : std_logic;
SIGNAL \alu_b_out[0]$latch~combout\ : std_logic;
SIGNAL \SE_out9_in[1]~input_o\ : std_logic;
SIGNAL \Selector120~2_combout\ : std_logic;
SIGNAL \Selector120~3_combout\ : std_logic;
SIGNAL \alu_b_out[1]$latch~combout\ : std_logic;
SIGNAL \SE_out9_in[2]~input_o\ : std_logic;
SIGNAL \Selector121~2_combout\ : std_logic;
SIGNAL \Selector121~3_combout\ : std_logic;
SIGNAL \alu_b_out[2]$latch~combout\ : std_logic;
SIGNAL \SE_out9_in[3]~input_o\ : std_logic;
SIGNAL \Selector122~2_combout\ : std_logic;
SIGNAL \Selector122~3_combout\ : std_logic;
SIGNAL \alu_b_out[3]$latch~combout\ : std_logic;
SIGNAL \SE_out9_in[4]~input_o\ : std_logic;
SIGNAL \Selector123~2_combout\ : std_logic;
SIGNAL \Selector123~3_combout\ : std_logic;
SIGNAL \alu_b_out[4]$latch~combout\ : std_logic;
SIGNAL \SE_out9_in[5]~input_o\ : std_logic;
SIGNAL \Selector124~2_combout\ : std_logic;
SIGNAL \Selector124~3_combout\ : std_logic;
SIGNAL \alu_b_out[5]$latch~combout\ : std_logic;
SIGNAL \SE_out9_in[6]~input_o\ : std_logic;
SIGNAL \Selector125~2_combout\ : std_logic;
SIGNAL \Selector125~3_combout\ : std_logic;
SIGNAL \alu_b_out[6]$latch~combout\ : std_logic;
SIGNAL \SE_out9_in[7]~input_o\ : std_logic;
SIGNAL \Selector126~2_combout\ : std_logic;
SIGNAL \Selector126~3_combout\ : std_logic;
SIGNAL \alu_b_out[7]$latch~combout\ : std_logic;
SIGNAL \SE_out9_in[8]~input_o\ : std_logic;
SIGNAL \Selector127~2_combout\ : std_logic;
SIGNAL \Selector127~3_combout\ : std_logic;
SIGNAL \alu_b_out[8]$latch~combout\ : std_logic;
SIGNAL \SE_out9_in[9]~input_o\ : std_logic;
SIGNAL \Selector128~2_combout\ : std_logic;
SIGNAL \Selector128~3_combout\ : std_logic;
SIGNAL \alu_b_out[9]$latch~combout\ : std_logic;
SIGNAL \SE_out9_in[10]~input_o\ : std_logic;
SIGNAL \Selector129~2_combout\ : std_logic;
SIGNAL \Selector129~3_combout\ : std_logic;
SIGNAL \alu_b_out[10]$latch~combout\ : std_logic;
SIGNAL \SE_out9_in[11]~input_o\ : std_logic;
SIGNAL \Selector130~2_combout\ : std_logic;
SIGNAL \Selector130~3_combout\ : std_logic;
SIGNAL \alu_b_out[11]$latch~combout\ : std_logic;
SIGNAL \SE_out9_in[12]~input_o\ : std_logic;
SIGNAL \Selector131~2_combout\ : std_logic;
SIGNAL \Selector131~3_combout\ : std_logic;
SIGNAL \alu_b_out[12]$latch~combout\ : std_logic;
SIGNAL \SE_out9_in[13]~input_o\ : std_logic;
SIGNAL \Selector132~2_combout\ : std_logic;
SIGNAL \Selector132~3_combout\ : std_logic;
SIGNAL \alu_b_out[13]$latch~combout\ : std_logic;
SIGNAL \SE_out9_in[14]~input_o\ : std_logic;
SIGNAL \Selector133~2_combout\ : std_logic;
SIGNAL \Selector133~3_combout\ : std_logic;
SIGNAL \alu_b_out[14]$latch~combout\ : std_logic;
SIGNAL \SE_out9_in[15]~input_o\ : std_logic;
SIGNAL \Selector134~2_combout\ : std_logic;
SIGNAL \Selector134~3_combout\ : std_logic;
SIGNAL \alu_b_out[15]$latch~combout\ : std_logic;
SIGNAL \WideOr13~0_combout\ : std_logic;
SIGNAL \Ir_in[9]~input_o\ : std_logic;
SIGNAL \Selector80~0_combout\ : std_logic;
SIGNAL \Selector80~1_combout\ : std_logic;
SIGNAL \WideOr11~0_combout\ : std_logic;
SIGNAL \WideOr11~1_combout\ : std_logic;
SIGNAL \WideOr11~1clkctrl_outclk\ : std_logic;
SIGNAL \Rf_A1_out[0]$latch~combout\ : std_logic;
SIGNAL \Ir_in[10]~input_o\ : std_logic;
SIGNAL \Selector81~0_combout\ : std_logic;
SIGNAL \Selector81~1_combout\ : std_logic;
SIGNAL \Rf_A1_out[1]$latch~combout\ : std_logic;
SIGNAL \Ir_in[11]~input_o\ : std_logic;
SIGNAL \Ir_in[8]~input_o\ : std_logic;
SIGNAL \Selector82~0_combout\ : std_logic;
SIGNAL \Selector82~1_combout\ : std_logic;
SIGNAL \Rf_A1_out[2]$latch~combout\ : std_logic;
SIGNAL \Selector76~0_combout\ : std_logic;
SIGNAL \WideOr14~0_combout\ : std_logic;
SIGNAL \WideOr14~0clkctrl_outclk\ : std_logic;
SIGNAL \Rf_A2_out[0]$latch~combout\ : std_logic;
SIGNAL \Selector77~0_combout\ : std_logic;
SIGNAL \Rf_A2_out[1]$latch~combout\ : std_logic;
SIGNAL \Selector78~0_combout\ : std_logic;
SIGNAL \Rf_A2_out[2]$latch~combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Rf_A3_out[0]$latch~combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Rf_A3_out[1]$latch~combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Rf_A3_out[2]$latch~combout\ : std_logic;
SIGNAL \aluctrl_out[1]$latch~combout\ : std_logic;
SIGNAL \Selector75~0_combout\ : std_logic;
SIGNAL \Selector74~3_combout\ : std_logic;
SIGNAL \Selector74~0_combout\ : std_logic;
SIGNAL \Selector74~2_combout\ : std_logic;
SIGNAL \Selector74~1_combout\ : std_logic;
SIGNAL \Selector74~4_combout\ : std_logic;
SIGNAL \Selector74~5_combout\ : std_logic;
SIGNAL \modifyc_out$latch~combout\ : std_logic;
SIGNAL \Selector75~1_combout\ : std_logic;
SIGNAL \modifyz_out$latch~combout\ : std_logic;
SIGNAL \SE_in6_out~0_combout\ : std_logic;
SIGNAL \SE_in6_out~0clkctrl_outclk\ : std_logic;
SIGNAL \SE_in6_out[0]$latch~combout\ : std_logic;
SIGNAL \SE_in6_out[1]$latch~combout\ : std_logic;
SIGNAL \SE_in6_out[2]$latch~combout\ : std_logic;
SIGNAL \SE_in6_out[3]$latch~combout\ : std_logic;
SIGNAL \SE_in6_out[4]$latch~combout\ : std_logic;
SIGNAL \SE_in6_out[5]$latch~combout\ : std_logic;
SIGNAL \alu_b_out~1clkctrl_outclk\ : std_logic;
SIGNAL \SE_in9_out[0]$latch~combout\ : std_logic;
SIGNAL \SE_in9_out[1]$latch~combout\ : std_logic;
SIGNAL \SE_in9_out[2]$latch~combout\ : std_logic;
SIGNAL \SE_in9_out[3]$latch~combout\ : std_logic;
SIGNAL \SE_in9_out[4]$latch~combout\ : std_logic;
SIGNAL \SE_in9_out[5]$latch~combout\ : std_logic;
SIGNAL \SE_in9_out[6]$latch~combout\ : std_logic;
SIGNAL \SE_in9_out[7]$latch~combout\ : std_logic;
SIGNAL \SE_in9_out[8]$latch~combout\ : std_logic;
SIGNAL \state.s6~clkctrl_outclk\ : std_logic;
SIGNAL \msbxtnder_out[0]$latch~combout\ : std_logic;
SIGNAL \msbxtnder_out[1]$latch~combout\ : std_logic;
SIGNAL \msbxtnder_out[2]$latch~combout\ : std_logic;
SIGNAL \msbxtnder_out[3]$latch~combout\ : std_logic;
SIGNAL \msbxtnder_out[4]$latch~combout\ : std_logic;
SIGNAL \msbxtnder_out[5]$latch~combout\ : std_logic;
SIGNAL \msbxtnder_out[6]$latch~combout\ : std_logic;
SIGNAL \msbxtnder_out[7]$latch~combout\ : std_logic;
SIGNAL \msbxtnder_out[8]$latch~combout\ : std_logic;
SIGNAL T3 : std_logic_vector(15 DOWNTO 0);
SIGNAL T2 : std_logic_vector(15 DOWNTO 0);
SIGNAL T4 : std_logic_vector(15 DOWNTO 0);
SIGNAL T1 : std_logic_vector(15 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_c_out <= c_out;
ww_z_out <= z_out;
ww_PC_in <= PC_in;
ww_alu_c_in <= alu_c_in;
ww_Ir_in <= Ir_in;
ww_mem_a_in <= mem_a_in;
ww_mem_d_in <= mem_d_in;
ww_Rf_D1_in <= Rf_D1_in;
ww_Rf_D2_in <= Rf_D2_in;
ww_SE_out6_in <= SE_out6_in;
ww_SE_out9_in <= SE_out9_in;
ww_msbxtnder_in <= msbxtnder_in;
ww_LS_out_in <= LS_out_in;
PC_out <= ww_PC_out;
Ir_out <= ww_Ir_out;
mem_a_out <= ww_mem_a_out;
mem_d_out <= ww_mem_d_out;
LS_in_out <= ww_LS_in_out;
Rf_D3_out <= ww_Rf_D3_out;
alu_a_out <= ww_alu_a_out;
alu_b_out <= ww_alu_b_out;
Rf_A1_out <= ww_Rf_A1_out;
Rf_A2_out <= ww_Rf_A2_out;
Rf_A3_out <= ww_Rf_A3_out;
aluctrl_out <= ww_aluctrl_out;
Regwr_out <= ww_Regwr_out;
memwr_out <= ww_memwr_out;
iren <= ww_iren;
modifyc_out <= ww_modifyc_out;
modifyz_out <= ww_modifyz_out;
SE_in6_out <= ww_SE_in6_out;
SE_in9_out <= ww_SE_in9_out;
msbxtnder_out <= ww_msbxtnder_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\WideOr3~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \WideOr3~0_combout\);

\LS_in_out~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \LS_in_out~0_combout\);

\WideOr22~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \WideOr22~1_combout\);

\state.s0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \state.s0~q\);

\WideOr17~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \WideOr17~0_combout\);

\state.s15~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \state.s15~q\);

\WideOr16~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \WideOr16~0_combout\);

\state.s11~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \state.s11~q\);

\WideOr10~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \WideOr10~0_combout\);

\WideOr19~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \WideOr19~1_combout\);

\state.s6~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \state.s6~q\);

\SE_in6_out~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SE_in6_out~0_combout\);

\WideOr11~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \WideOr11~1_combout\);

\WideOr14~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \WideOr14~0_combout\);

\WideOr7~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \WideOr7~0_combout\);

\alu_b_out~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \alu_b_out~1_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X9_Y73_N9
\PC_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_out[0]$latch~combout\,
	devoe => ww_devoe,
	o => \PC_out[0]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\PC_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_out[1]$latch~combout\,
	devoe => ww_devoe,
	o => \PC_out[1]~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\PC_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_out[2]$latch~combout\,
	devoe => ww_devoe,
	o => \PC_out[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\PC_out[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_out[3]$latch~combout\,
	devoe => ww_devoe,
	o => \PC_out[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\PC_out[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_out[4]$latch~combout\,
	devoe => ww_devoe,
	o => \PC_out[4]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\PC_out[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_out[5]$latch~combout\,
	devoe => ww_devoe,
	o => \PC_out[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\PC_out[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_out[6]$latch~combout\,
	devoe => ww_devoe,
	o => \PC_out[6]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\PC_out[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_out[7]$latch~combout\,
	devoe => ww_devoe,
	o => \PC_out[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\PC_out[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_out[8]$latch~combout\,
	devoe => ww_devoe,
	o => \PC_out[8]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\PC_out[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_out[9]$latch~combout\,
	devoe => ww_devoe,
	o => \PC_out[9]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\PC_out[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_out[10]$latch~combout\,
	devoe => ww_devoe,
	o => \PC_out[10]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\PC_out[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_out[11]$latch~combout\,
	devoe => ww_devoe,
	o => \PC_out[11]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\PC_out[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_out[12]$latch~combout\,
	devoe => ww_devoe,
	o => \PC_out[12]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\PC_out[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_out[13]$latch~combout\,
	devoe => ww_devoe,
	o => \PC_out[13]~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\PC_out[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_out[14]$latch~combout\,
	devoe => ww_devoe,
	o => \PC_out[14]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\PC_out[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_out[15]$latch~combout\,
	devoe => ww_devoe,
	o => \PC_out[15]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\Ir_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ir_out[0]$latch~combout\,
	devoe => ww_devoe,
	o => \Ir_out[0]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\Ir_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ir_out[1]$latch~combout\,
	devoe => ww_devoe,
	o => \Ir_out[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\Ir_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ir_out[2]$latch~combout\,
	devoe => ww_devoe,
	o => \Ir_out[2]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\Ir_out[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ir_out[3]$latch~combout\,
	devoe => ww_devoe,
	o => \Ir_out[3]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\Ir_out[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ir_out[4]$latch~combout\,
	devoe => ww_devoe,
	o => \Ir_out[4]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\Ir_out[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ir_out[5]$latch~combout\,
	devoe => ww_devoe,
	o => \Ir_out[5]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\Ir_out[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ir_out[6]$latch~combout\,
	devoe => ww_devoe,
	o => \Ir_out[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\Ir_out[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ir_out[7]$latch~combout\,
	devoe => ww_devoe,
	o => \Ir_out[7]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\Ir_out[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ir_out[8]$latch~combout\,
	devoe => ww_devoe,
	o => \Ir_out[8]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\Ir_out[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ir_out[9]$latch~combout\,
	devoe => ww_devoe,
	o => \Ir_out[9]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\Ir_out[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ir_out[10]$latch~combout\,
	devoe => ww_devoe,
	o => \Ir_out[10]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\Ir_out[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ir_out[11]$latch~combout\,
	devoe => ww_devoe,
	o => \Ir_out[11]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\Ir_out[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ir_out[12]$latch~combout\,
	devoe => ww_devoe,
	o => \Ir_out[12]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\Ir_out[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ir_out[13]$latch~combout\,
	devoe => ww_devoe,
	o => \Ir_out[13]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\Ir_out[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ir_out[14]$latch~combout\,
	devoe => ww_devoe,
	o => \Ir_out[14]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\Ir_out[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ir_out[15]$latch~combout\,
	devoe => ww_devoe,
	o => \Ir_out[15]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\mem_a_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_a_out[0]$latch~combout\,
	devoe => ww_devoe,
	o => \mem_a_out[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\mem_a_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_a_out[1]$latch~combout\,
	devoe => ww_devoe,
	o => \mem_a_out[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\mem_a_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_a_out[2]$latch~combout\,
	devoe => ww_devoe,
	o => \mem_a_out[2]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\mem_a_out[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_a_out[3]$latch~combout\,
	devoe => ww_devoe,
	o => \mem_a_out[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\mem_a_out[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_a_out[4]$latch~combout\,
	devoe => ww_devoe,
	o => \mem_a_out[4]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\mem_a_out[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_a_out[5]$latch~combout\,
	devoe => ww_devoe,
	o => \mem_a_out[5]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\mem_a_out[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_a_out[6]$latch~combout\,
	devoe => ww_devoe,
	o => \mem_a_out[6]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\mem_a_out[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_a_out[7]$latch~combout\,
	devoe => ww_devoe,
	o => \mem_a_out[7]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\mem_a_out[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_a_out[8]$latch~combout\,
	devoe => ww_devoe,
	o => \mem_a_out[8]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\mem_a_out[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_a_out[9]$latch~combout\,
	devoe => ww_devoe,
	o => \mem_a_out[9]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\mem_a_out[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_a_out[10]$latch~combout\,
	devoe => ww_devoe,
	o => \mem_a_out[10]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\mem_a_out[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_a_out[11]$latch~combout\,
	devoe => ww_devoe,
	o => \mem_a_out[11]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\mem_a_out[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_a_out[12]$latch~combout\,
	devoe => ww_devoe,
	o => \mem_a_out[12]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\mem_a_out[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_a_out[13]$latch~combout\,
	devoe => ww_devoe,
	o => \mem_a_out[13]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\mem_a_out[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_a_out[14]$latch~combout\,
	devoe => ww_devoe,
	o => \mem_a_out[14]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\mem_a_out[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_a_out[15]$latch~combout\,
	devoe => ww_devoe,
	o => \mem_a_out[15]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\mem_d_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_d_out[0]$latch~combout\,
	devoe => ww_devoe,
	o => \mem_d_out[0]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\mem_d_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_d_out[1]$latch~combout\,
	devoe => ww_devoe,
	o => \mem_d_out[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\mem_d_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_d_out[2]$latch~combout\,
	devoe => ww_devoe,
	o => \mem_d_out[2]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\mem_d_out[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_d_out[3]$latch~combout\,
	devoe => ww_devoe,
	o => \mem_d_out[3]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\mem_d_out[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_d_out[4]$latch~combout\,
	devoe => ww_devoe,
	o => \mem_d_out[4]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\mem_d_out[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_d_out[5]$latch~combout\,
	devoe => ww_devoe,
	o => \mem_d_out[5]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\mem_d_out[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_d_out[6]$latch~combout\,
	devoe => ww_devoe,
	o => \mem_d_out[6]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\mem_d_out[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_d_out[7]$latch~combout\,
	devoe => ww_devoe,
	o => \mem_d_out[7]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\mem_d_out[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_d_out[8]$latch~combout\,
	devoe => ww_devoe,
	o => \mem_d_out[8]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\mem_d_out[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_d_out[9]$latch~combout\,
	devoe => ww_devoe,
	o => \mem_d_out[9]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\mem_d_out[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_d_out[10]$latch~combout\,
	devoe => ww_devoe,
	o => \mem_d_out[10]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\mem_d_out[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_d_out[11]$latch~combout\,
	devoe => ww_devoe,
	o => \mem_d_out[11]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\mem_d_out[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_d_out[12]$latch~combout\,
	devoe => ww_devoe,
	o => \mem_d_out[12]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\mem_d_out[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_d_out[13]$latch~combout\,
	devoe => ww_devoe,
	o => \mem_d_out[13]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\mem_d_out[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_d_out[14]$latch~combout\,
	devoe => ww_devoe,
	o => \mem_d_out[14]~output_o\);

-- Location: IOOBUF_X1_Y73_N2
\mem_d_out[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_d_out[15]$latch~combout\,
	devoe => ww_devoe,
	o => \mem_d_out[15]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\LS_in_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LS_in_out[0]$latch~combout\,
	devoe => ww_devoe,
	o => \LS_in_out[0]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\LS_in_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LS_in_out[1]$latch~combout\,
	devoe => ww_devoe,
	o => \LS_in_out[1]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\LS_in_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LS_in_out[2]$latch~combout\,
	devoe => ww_devoe,
	o => \LS_in_out[2]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\LS_in_out[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LS_in_out[3]$latch~combout\,
	devoe => ww_devoe,
	o => \LS_in_out[3]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\LS_in_out[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LS_in_out[4]$latch~combout\,
	devoe => ww_devoe,
	o => \LS_in_out[4]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\LS_in_out[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LS_in_out[5]$latch~combout\,
	devoe => ww_devoe,
	o => \LS_in_out[5]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\LS_in_out[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LS_in_out[6]$latch~combout\,
	devoe => ww_devoe,
	o => \LS_in_out[6]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\LS_in_out[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LS_in_out[7]$latch~combout\,
	devoe => ww_devoe,
	o => \LS_in_out[7]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LS_in_out[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LS_in_out[8]$latch~combout\,
	devoe => ww_devoe,
	o => \LS_in_out[8]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\LS_in_out[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LS_in_out[9]$latch~combout\,
	devoe => ww_devoe,
	o => \LS_in_out[9]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\LS_in_out[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LS_in_out[10]$latch~combout\,
	devoe => ww_devoe,
	o => \LS_in_out[10]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\LS_in_out[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LS_in_out[11]$latch~combout\,
	devoe => ww_devoe,
	o => \LS_in_out[11]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\LS_in_out[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LS_in_out[12]$latch~combout\,
	devoe => ww_devoe,
	o => \LS_in_out[12]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\LS_in_out[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LS_in_out[13]$latch~combout\,
	devoe => ww_devoe,
	o => \LS_in_out[13]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\LS_in_out[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LS_in_out[14]$latch~combout\,
	devoe => ww_devoe,
	o => \LS_in_out[14]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\LS_in_out[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LS_in_out[15]$latch~combout\,
	devoe => ww_devoe,
	o => \LS_in_out[15]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\Rf_D3_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rf_D3_out[0]$latch~combout\,
	devoe => ww_devoe,
	o => \Rf_D3_out[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\Rf_D3_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rf_D3_out[1]$latch~combout\,
	devoe => ww_devoe,
	o => \Rf_D3_out[1]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\Rf_D3_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rf_D3_out[2]$latch~combout\,
	devoe => ww_devoe,
	o => \Rf_D3_out[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\Rf_D3_out[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rf_D3_out[3]$latch~combout\,
	devoe => ww_devoe,
	o => \Rf_D3_out[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\Rf_D3_out[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rf_D3_out[4]$latch~combout\,
	devoe => ww_devoe,
	o => \Rf_D3_out[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\Rf_D3_out[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rf_D3_out[5]$latch~combout\,
	devoe => ww_devoe,
	o => \Rf_D3_out[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\Rf_D3_out[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rf_D3_out[6]$latch~combout\,
	devoe => ww_devoe,
	o => \Rf_D3_out[6]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\Rf_D3_out[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rf_D3_out[7]$latch~combout\,
	devoe => ww_devoe,
	o => \Rf_D3_out[7]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\Rf_D3_out[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rf_D3_out[8]$latch~combout\,
	devoe => ww_devoe,
	o => \Rf_D3_out[8]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\Rf_D3_out[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rf_D3_out[9]$latch~combout\,
	devoe => ww_devoe,
	o => \Rf_D3_out[9]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\Rf_D3_out[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rf_D3_out[10]$latch~combout\,
	devoe => ww_devoe,
	o => \Rf_D3_out[10]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\Rf_D3_out[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rf_D3_out[11]$latch~combout\,
	devoe => ww_devoe,
	o => \Rf_D3_out[11]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\Rf_D3_out[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rf_D3_out[12]$latch~combout\,
	devoe => ww_devoe,
	o => \Rf_D3_out[12]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\Rf_D3_out[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rf_D3_out[13]$latch~combout\,
	devoe => ww_devoe,
	o => \Rf_D3_out[13]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\Rf_D3_out[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rf_D3_out[14]$latch~combout\,
	devoe => ww_devoe,
	o => \Rf_D3_out[14]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\Rf_D3_out[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rf_D3_out[15]$latch~combout\,
	devoe => ww_devoe,
	o => \Rf_D3_out[15]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\alu_a_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_a_out[0]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_a_out[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\alu_a_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_a_out[1]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_a_out[1]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\alu_a_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_a_out[2]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_a_out[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\alu_a_out[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_a_out[3]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_a_out[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\alu_a_out[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_a_out[4]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_a_out[4]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\alu_a_out[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_a_out[5]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_a_out[5]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\alu_a_out[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_a_out[6]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_a_out[6]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\alu_a_out[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_a_out[7]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_a_out[7]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\alu_a_out[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_a_out[8]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_a_out[8]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\alu_a_out[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_a_out[9]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_a_out[9]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\alu_a_out[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_a_out[10]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_a_out[10]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\alu_a_out[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_a_out[11]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_a_out[11]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\alu_a_out[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_a_out[12]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_a_out[12]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\alu_a_out[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_a_out[13]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_a_out[13]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\alu_a_out[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_a_out[14]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_a_out[14]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\alu_a_out[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_a_out[15]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_a_out[15]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\alu_b_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_b_out[0]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_b_out[0]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\alu_b_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_b_out[1]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_b_out[1]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\alu_b_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_b_out[2]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_b_out[2]~output_o\);

-- Location: IOOBUF_X3_Y73_N23
\alu_b_out[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_b_out[3]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_b_out[3]~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\alu_b_out[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_b_out[4]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_b_out[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\alu_b_out[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_b_out[5]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_b_out[5]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\alu_b_out[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_b_out[6]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_b_out[6]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\alu_b_out[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_b_out[7]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_b_out[7]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\alu_b_out[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_b_out[8]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_b_out[8]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\alu_b_out[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_b_out[9]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_b_out[9]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\alu_b_out[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_b_out[10]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_b_out[10]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\alu_b_out[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_b_out[11]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_b_out[11]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\alu_b_out[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_b_out[12]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_b_out[12]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\alu_b_out[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_b_out[13]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_b_out[13]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\alu_b_out[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_b_out[14]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_b_out[14]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\alu_b_out[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_b_out[15]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_b_out[15]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\Rf_A1_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rf_A1_out[0]$latch~combout\,
	devoe => ww_devoe,
	o => \Rf_A1_out[0]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\Rf_A1_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rf_A1_out[1]$latch~combout\,
	devoe => ww_devoe,
	o => \Rf_A1_out[1]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\Rf_A1_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rf_A1_out[2]$latch~combout\,
	devoe => ww_devoe,
	o => \Rf_A1_out[2]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\Rf_A2_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rf_A2_out[0]$latch~combout\,
	devoe => ww_devoe,
	o => \Rf_A2_out[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\Rf_A2_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rf_A2_out[1]$latch~combout\,
	devoe => ww_devoe,
	o => \Rf_A2_out[1]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\Rf_A2_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rf_A2_out[2]$latch~combout\,
	devoe => ww_devoe,
	o => \Rf_A2_out[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\Rf_A3_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rf_A3_out[0]$latch~combout\,
	devoe => ww_devoe,
	o => \Rf_A3_out[0]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\Rf_A3_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rf_A3_out[1]$latch~combout\,
	devoe => ww_devoe,
	o => \Rf_A3_out[1]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\Rf_A3_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rf_A3_out[2]$latch~combout\,
	devoe => ww_devoe,
	o => \Rf_A3_out[2]~output_o\);

-- Location: IOOBUF_X96_Y0_N9
\aluctrl_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \aluctrl_out[0]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\aluctrl_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aluctrl_out[1]$latch~combout\,
	devoe => ww_devoe,
	o => \aluctrl_out[1]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\Regwr_out~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Regwr_out~output_o\);

-- Location: IOOBUF_X115_Y11_N9
\memwr_out~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \memwr_out~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\iren~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \iren~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\modifyc_out~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \modifyc_out$latch~combout\,
	devoe => ww_devoe,
	o => \modifyc_out~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\modifyz_out~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \modifyz_out$latch~combout\,
	devoe => ww_devoe,
	o => \modifyz_out~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\SE_in6_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SE_in6_out[0]$latch~combout\,
	devoe => ww_devoe,
	o => \SE_in6_out[0]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\SE_in6_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SE_in6_out[1]$latch~combout\,
	devoe => ww_devoe,
	o => \SE_in6_out[1]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\SE_in6_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SE_in6_out[2]$latch~combout\,
	devoe => ww_devoe,
	o => \SE_in6_out[2]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\SE_in6_out[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SE_in6_out[3]$latch~combout\,
	devoe => ww_devoe,
	o => \SE_in6_out[3]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\SE_in6_out[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SE_in6_out[4]$latch~combout\,
	devoe => ww_devoe,
	o => \SE_in6_out[4]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\SE_in6_out[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SE_in6_out[5]$latch~combout\,
	devoe => ww_devoe,
	o => \SE_in6_out[5]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\SE_in9_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SE_in9_out[0]$latch~combout\,
	devoe => ww_devoe,
	o => \SE_in9_out[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\SE_in9_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SE_in9_out[1]$latch~combout\,
	devoe => ww_devoe,
	o => \SE_in9_out[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\SE_in9_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SE_in9_out[2]$latch~combout\,
	devoe => ww_devoe,
	o => \SE_in9_out[2]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\SE_in9_out[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SE_in9_out[3]$latch~combout\,
	devoe => ww_devoe,
	o => \SE_in9_out[3]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\SE_in9_out[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SE_in9_out[4]$latch~combout\,
	devoe => ww_devoe,
	o => \SE_in9_out[4]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\SE_in9_out[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SE_in9_out[5]$latch~combout\,
	devoe => ww_devoe,
	o => \SE_in9_out[5]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\SE_in9_out[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SE_in9_out[6]$latch~combout\,
	devoe => ww_devoe,
	o => \SE_in9_out[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\SE_in9_out[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SE_in9_out[7]$latch~combout\,
	devoe => ww_devoe,
	o => \SE_in9_out[7]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\SE_in9_out[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SE_in9_out[8]$latch~combout\,
	devoe => ww_devoe,
	o => \SE_in9_out[8]~output_o\);

-- Location: IOOBUF_X115_Y40_N9
\msbxtnder_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \msbxtnder_out[0]$latch~combout\,
	devoe => ww_devoe,
	o => \msbxtnder_out[0]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\msbxtnder_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \msbxtnder_out[1]$latch~combout\,
	devoe => ww_devoe,
	o => \msbxtnder_out[1]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\msbxtnder_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \msbxtnder_out[2]$latch~combout\,
	devoe => ww_devoe,
	o => \msbxtnder_out[2]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\msbxtnder_out[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \msbxtnder_out[3]$latch~combout\,
	devoe => ww_devoe,
	o => \msbxtnder_out[3]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\msbxtnder_out[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \msbxtnder_out[4]$latch~combout\,
	devoe => ww_devoe,
	o => \msbxtnder_out[4]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\msbxtnder_out[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \msbxtnder_out[5]$latch~combout\,
	devoe => ww_devoe,
	o => \msbxtnder_out[5]~output_o\);

-- Location: IOOBUF_X0_Y69_N2
\msbxtnder_out[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \msbxtnder_out[6]$latch~combout\,
	devoe => ww_devoe,
	o => \msbxtnder_out[6]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\msbxtnder_out[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \msbxtnder_out[7]$latch~combout\,
	devoe => ww_devoe,
	o => \msbxtnder_out[7]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\msbxtnder_out[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \msbxtnder_out[8]$latch~combout\,
	devoe => ww_devoe,
	o => \msbxtnder_out[8]~output_o\);

-- Location: IOIBUF_X0_Y36_N1
\clock~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\reset~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X58_Y73_N8
\Ir_in[13]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ir_in(13),
	o => \Ir_in[13]~input_o\);

-- Location: IOIBUF_X42_Y0_N15
\Ir_in[12]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ir_in(12),
	o => \Ir_in[12]~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\Ir_in[15]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ir_in(15),
	o => \Ir_in[15]~input_o\);

-- Location: IOIBUF_X67_Y0_N8
\Ir_in[14]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ir_in(14),
	o => \Ir_in[14]~input_o\);

-- Location: LCCOMB_X30_Y36_N14
\Equal6~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (\Ir_in[13]~input_o\ & (!\Ir_in[12]~input_o\ & (\Ir_in[15]~input_o\ & !\Ir_in[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[13]~input_o\,
	datab => \Ir_in[12]~input_o\,
	datac => \Ir_in[15]~input_o\,
	datad => \Ir_in[14]~input_o\,
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X29_Y39_N14
\Equal6~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (\Ir_in[12]~input_o\ & (!\Ir_in[13]~input_o\ & (\Ir_in[15]~input_o\ & !\Ir_in[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[12]~input_o\,
	datab => \Ir_in[13]~input_o\,
	datac => \Ir_in[15]~input_o\,
	datad => \Ir_in[14]~input_o\,
	combout => \Equal6~1_combout\);

-- Location: CLKCTRL_G4
\clock~inputclkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X29_Y39_N24
\Equal6~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Equal6~3_combout\ = (\Ir_in[12]~input_o\ & (!\Ir_in[13]~input_o\ & (!\Ir_in[15]~input_o\ & \Ir_in[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[12]~input_o\,
	datab => \Ir_in[13]~input_o\,
	datac => \Ir_in[15]~input_o\,
	datad => \Ir_in[14]~input_o\,
	combout => \Equal6~3_combout\);

-- Location: IOIBUF_X0_Y58_N15
\Ir_in[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ir_in(0),
	o => \Ir_in[0]~input_o\);

-- Location: LCCOMB_X29_Y39_N8
\OUTPUT_DECODE~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OUTPUT_DECODE~0_combout\ = (!\Ir_in[15]~input_o\ & (!\Ir_in[14]~input_o\ & (\Ir_in[12]~input_o\ $ (\Ir_in[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[12]~input_o\,
	datab => \Ir_in[13]~input_o\,
	datac => \Ir_in[15]~input_o\,
	datad => \Ir_in[14]~input_o\,
	combout => \OUTPUT_DECODE~0_combout\);

-- Location: IOIBUF_X0_Y33_N15
\Ir_in[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ir_in(1),
	o => \Ir_in[1]~input_o\);

-- Location: LCCOMB_X30_Y36_N20
\state~52\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state~52_combout\ = (!\reset~input_o\ & \state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \state.s0~q\,
	combout => \state~52_combout\);

-- Location: LCCOMB_X30_Y36_N2
\state~53\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state~53_combout\ = (\state~52_combout\ & (((\Ir_in[0]~input_o\ & \Ir_in[1]~input_o\)) # (!\OUTPUT_DECODE~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[0]~input_o\,
	datab => \OUTPUT_DECODE~0_combout\,
	datac => \Ir_in[1]~input_o\,
	datad => \state~52_combout\,
	combout => \state~53_combout\);

-- Location: LCCOMB_X29_Y39_N4
\next_state~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \next_state~10_combout\ = (!\Ir_in[13]~input_o\ & ((\Ir_in[12]~input_o\ & (!\Ir_in[15]~input_o\ & \Ir_in[14]~input_o\)) # (!\Ir_in[12]~input_o\ & (\Ir_in[15]~input_o\ & !\Ir_in[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[12]~input_o\,
	datab => \Ir_in[13]~input_o\,
	datac => \Ir_in[15]~input_o\,
	datad => \Ir_in[14]~input_o\,
	combout => \next_state~10_combout\);

-- Location: LCCOMB_X29_Y39_N6
\Equal6~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Equal6~2_combout\ = (\Ir_in[12]~input_o\ & (\Ir_in[13]~input_o\ & (!\Ir_in[15]~input_o\ & \Ir_in[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[12]~input_o\,
	datab => \Ir_in[13]~input_o\,
	datac => \Ir_in[15]~input_o\,
	datad => \Ir_in[14]~input_o\,
	combout => \Equal6~2_combout\);

-- Location: LCCOMB_X29_Y36_N2
\state~67\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state~67_combout\ = (\state~53_combout\ & (!\next_state~10_combout\ & \Equal6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state~53_combout\,
	datac => \next_state~10_combout\,
	datad => \Equal6~2_combout\,
	combout => \state~67_combout\);

-- Location: FF_X29_Y36_N3
\state.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s7~q\);

-- Location: LCCOMB_X29_Y39_N28
\Equal6~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Equal6~6_combout\ = (\Ir_in[12]~input_o\ & (!\Ir_in[13]~input_o\ & (!\Ir_in[15]~input_o\ & !\Ir_in[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[12]~input_o\,
	datab => \Ir_in[13]~input_o\,
	datac => \Ir_in[15]~input_o\,
	datad => \Ir_in[14]~input_o\,
	combout => \Equal6~6_combout\);

-- Location: LCCOMB_X30_Y36_N30
\state~62\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state~62_combout\ = (!\Equal6~0_combout\ & (((!\Ir_in[1]~input_o\) # (!\Equal6~6_combout\)) # (!\Ir_in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[0]~input_o\,
	datab => \Equal6~6_combout\,
	datac => \Equal6~0_combout\,
	datad => \Ir_in[1]~input_o\,
	combout => \state~62_combout\);

-- Location: LCCOMB_X29_Y39_N22
\Equal6~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Equal6~7_combout\ = (\Ir_in[12]~input_o\ & (\Ir_in[13]~input_o\ & (!\Ir_in[15]~input_o\ & !\Ir_in[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[12]~input_o\,
	datab => \Ir_in[13]~input_o\,
	datac => \Ir_in[15]~input_o\,
	datad => \Ir_in[14]~input_o\,
	combout => \Equal6~7_combout\);

-- Location: LCCOMB_X30_Y36_N8
\state~63\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state~63_combout\ = (\state~53_combout\ & (!\Equal6~1_combout\ & (\state~62_combout\ & !\Equal6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~53_combout\,
	datab => \Equal6~1_combout\,
	datac => \state~62_combout\,
	datad => \Equal6~7_combout\,
	combout => \state~63_combout\);

-- Location: LCCOMB_X29_Y38_N4
\state~64\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state~64_combout\ = (\next_state~10_combout\ & \state~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \next_state~10_combout\,
	datad => \state~63_combout\,
	combout => \state~64_combout\);

-- Location: FF_X29_Y38_N5
\state.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s10~q\);

-- Location: LCCOMB_X28_Y39_N22
\Selector1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.s7~q\) # ((\Equal6~3_combout\ & \state.s10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~3_combout\,
	datab => \state.s7~q\,
	datac => \state.s10~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X28_Y39_N23
\state.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector1~0_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s8~q\);

-- Location: LCCOMB_X31_Y33_N6
\state~55\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state~55_combout\ = (\Equal6~3_combout\ & (!\reset~input_o\ & \state.s8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~3_combout\,
	datac => \reset~input_o\,
	datad => \state.s8~q\,
	combout => \state~55_combout\);

-- Location: LCCOMB_X31_Y33_N20
\state.s11~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state.s11~feeder_combout\ = \state~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state~55_combout\,
	combout => \state.s11~feeder_combout\);

-- Location: FF_X31_Y33_N21
\state.s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state.s11~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s11~q\);

-- Location: LCCOMB_X30_Y36_N12
\state~51\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state~51_combout\ = (!\reset~input_o\ & (\Equal6~1_combout\ & \state.s23~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Equal6~1_combout\,
	datad => \state.s23~q\,
	combout => \state~51_combout\);

-- Location: FF_X29_Y36_N31
\state.s24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \state~51_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s24~q\);

-- Location: LCCOMB_X30_Y36_N6
\state~41\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state~41_combout\ = (\Ir_in[13]~input_o\ & (\Ir_in[12]~input_o\ & !\Ir_in[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[13]~input_o\,
	datab => \Ir_in[12]~input_o\,
	datad => \Ir_in[14]~input_o\,
	combout => \state~41_combout\);

-- Location: LCCOMB_X30_Y36_N16
\state~78\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state~78_combout\ = (\state~41_combout\ & (\Ir_in[15]~input_o\ & (\state.s0~q\ & !\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~41_combout\,
	datab => \Ir_in[15]~input_o\,
	datac => \state.s0~q\,
	datad => \reset~input_o\,
	combout => \state~78_combout\);

-- Location: FF_X29_Y36_N1
\state.s26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \state~78_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s26~q\);

-- Location: LCCOMB_X29_Y36_N6
\WideOr24~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \WideOr24~0_combout\ = (\state.s11~q\) # ((\state.s24~q\) # ((\state.s25~q\) # (\state.s26~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s11~q\,
	datab => \state.s24~q\,
	datac => \state.s25~q\,
	datad => \state.s26~q\,
	combout => \WideOr24~0_combout\);

-- Location: LCCOMB_X29_Y39_N18
\Equal6~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Equal6~5_combout\ = (!\Ir_in[12]~input_o\ & (!\Ir_in[13]~input_o\ & (\Ir_in[15]~input_o\ & !\Ir_in[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[12]~input_o\,
	datab => \Ir_in[13]~input_o\,
	datac => \Ir_in[15]~input_o\,
	datad => \Ir_in[14]~input_o\,
	combout => \Equal6~5_combout\);

-- Location: LCCOMB_X28_Y39_N30
\state~60\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state~60_combout\ = (\Equal6~5_combout\ & (\state.s10~q\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal6~5_combout\,
	datac => \state.s10~q\,
	datad => \reset~input_o\,
	combout => \state~60_combout\);

-- Location: FF_X28_Y39_N31
\state.s21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s21~q\);

-- Location: LCCOMB_X26_Y35_N12
\NEXT_STATE_DECODE~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \NEXT_STATE_DECODE~0_combout\ = (\Ir_in[1]~input_o\ & \Ir_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ir_in[1]~input_o\,
	datad => \Ir_in[0]~input_o\,
	combout => \NEXT_STATE_DECODE~0_combout\);

-- Location: LCCOMB_X30_Y36_N28
\state~73\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state~73_combout\ = (\Equal6~7_combout\ & (\state~52_combout\ & ((\NEXT_STATE_DECODE~0_combout\) # (!\OUTPUT_DECODE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~7_combout\,
	datab => \state~52_combout\,
	datac => \OUTPUT_DECODE~0_combout\,
	datad => \NEXT_STATE_DECODE~0_combout\,
	combout => \state~73_combout\);

-- Location: FF_X29_Y38_N15
\state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \state~73_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s5~q\);

-- Location: LCCOMB_X29_Y39_N30
\next_state~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \next_state~11_combout\ = (\Ir_in[15]~input_o\ & (!\Ir_in[14]~input_o\ & (\Ir_in[12]~input_o\ $ (\Ir_in[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[12]~input_o\,
	datab => \Ir_in[13]~input_o\,
	datac => \Ir_in[15]~input_o\,
	datad => \Ir_in[14]~input_o\,
	combout => \next_state~11_combout\);

-- Location: LCCOMB_X29_Y39_N26
\next_state~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \next_state~12_combout\ = (\Ir_in[13]~input_o\ & (((!\Ir_in[12]~input_o\)))) # (!\Ir_in[13]~input_o\ & (\Ir_in[12]~input_o\ & ((!\Ir_in[0]~input_o\) # (!\Ir_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[1]~input_o\,
	datab => \Ir_in[0]~input_o\,
	datac => \Ir_in[13]~input_o\,
	datad => \Ir_in[12]~input_o\,
	combout => \next_state~12_combout\);

-- Location: LCCOMB_X29_Y39_N0
\next_state~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \next_state~13_combout\ = (\Ir_in[15]~input_o\ & (\Ir_in[14]~input_o\ & ((\next_state~12_combout\) # (\Ir_in[12]~input_o\)))) # (!\Ir_in[15]~input_o\ & (((\next_state~12_combout\ & !\Ir_in[14]~input_o\)) # (!\Ir_in[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~12_combout\,
	datab => \Ir_in[14]~input_o\,
	datac => \Ir_in[15]~input_o\,
	datad => \Ir_in[12]~input_o\,
	combout => \next_state~13_combout\);

-- Location: LCCOMB_X30_Y38_N24
\state~71\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state~71_combout\ = (\next_state~11_combout\ & (\state.s0~q\ & ((\next_state~13_combout\)))) # (!\next_state~11_combout\ & ((\state.s23~q\) # ((\state.s0~q\ & \next_state~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~11_combout\,
	datab => \state.s0~q\,
	datac => \state.s23~q\,
	datad => \next_state~13_combout\,
	combout => \state~71_combout\);

-- Location: IOIBUF_X0_Y68_N15
\c_out~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_out,
	o => \c_out~input_o\);

-- Location: LCCOMB_X29_Y39_N12
\NEXT_STATE_DECODE~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \NEXT_STATE_DECODE~1_combout\ = (!\Ir_in[13]~input_o\ & (\Ir_in[14]~input_o\ & (\Ir_in[12]~input_o\ $ (\Ir_in[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[12]~input_o\,
	datab => \Ir_in[13]~input_o\,
	datac => \Ir_in[15]~input_o\,
	datad => \Ir_in[14]~input_o\,
	combout => \NEXT_STATE_DECODE~1_combout\);

-- Location: LCCOMB_X29_Y38_N12
\state~74\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state~74_combout\ = (!\next_state~10_combout\ & (\NEXT_STATE_DECODE~1_combout\ & (!\Equal6~2_combout\ & \state~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~10_combout\,
	datab => \NEXT_STATE_DECODE~1_combout\,
	datac => \Equal6~2_combout\,
	datad => \state~63_combout\,
	combout => \state~74_combout\);

-- Location: FF_X29_Y38_N13
\state.s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s12~q\);

-- Location: IOIBUF_X0_Y55_N8
\z_out~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_z_out,
	o => \z_out~input_o\);

-- Location: LCCOMB_X28_Y38_N12
\state~61\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state~61_combout\ = (\c_out~input_o\ & (\state.s27~q\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_out~input_o\,
	datac => \state.s27~q\,
	datad => \reset~input_o\,
	combout => \state~61_combout\);

-- Location: FF_X28_Y38_N13
\state.s13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s13~q\);

-- Location: LCCOMB_X28_Y35_N20
\state~58\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state~58_combout\ = (!\reset~input_o\ & (\z_out~input_o\ & \state.s13~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \z_out~input_o\,
	datad => \state.s13~q\,
	combout => \state~58_combout\);

-- Location: FF_X28_Y35_N21
\state.s19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s19~q\);

-- Location: LCCOMB_X29_Y39_N16
\Equal6~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Equal6~8_combout\ = (\Ir_in[12]~input_o\ & (!\Ir_in[13]~input_o\ & (\Ir_in[15]~input_o\ & \Ir_in[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[12]~input_o\,
	datab => \Ir_in[13]~input_o\,
	datac => \Ir_in[15]~input_o\,
	datad => \Ir_in[14]~input_o\,
	combout => \Equal6~8_combout\);

-- Location: LCCOMB_X29_Y36_N8
\state~65\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state~65_combout\ = (!\z_out~input_o\ & (\state.s13~q\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \z_out~input_o\,
	datab => \state.s13~q\,
	datad => \reset~input_o\,
	combout => \state~65_combout\);

-- Location: FF_X29_Y36_N13
\state.s14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \state~65_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s14~q\);

-- Location: LCCOMB_X29_Y36_N30
\state~66\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state~66_combout\ = (\Equal6~8_combout\ & (!\reset~input_o\ & \state.s14~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~8_combout\,
	datab => \reset~input_o\,
	datad => \state.s14~q\,
	combout => \state~66_combout\);

-- Location: FF_X29_Y36_N9
\state.s20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \state~66_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s20~q\);

-- Location: LCCOMB_X31_Y35_N26
\Equal6~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Equal6~4_combout\ = (\Ir_in[15]~input_o\ & (!\Ir_in[13]~input_o\ & (\Ir_in[14]~input_o\ & !\Ir_in[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[15]~input_o\,
	datab => \Ir_in[13]~input_o\,
	datac => \Ir_in[14]~input_o\,
	datad => \Ir_in[12]~input_o\,
	combout => \Equal6~4_combout\);

-- Location: LCCOMB_X31_Y33_N26
\state~56\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state~56_combout\ = (\state.s14~q\ & (!\reset~input_o\ & \Equal6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s14~q\,
	datab => \reset~input_o\,
	datac => \Equal6~4_combout\,
	combout => \state~56_combout\);

-- Location: LCCOMB_X31_Y33_N12
\state.s15~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state.s15~feeder_combout\ = \state~56_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state~56_combout\,
	combout => \state.s15~feeder_combout\);

-- Location: FF_X31_Y33_N13
\state.s15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state.s15~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s15~q\);

-- Location: LCCOMB_X31_Y33_N28
\state~57\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state~57_combout\ = (!\reset~input_o\ & \state.s15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \state.s15~q\,
	combout => \state~57_combout\);

-- Location: FF_X29_Y35_N9
\state.s16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \state~57_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s16~q\);

-- Location: LCCOMB_X28_Y38_N26
WideOr28 : cyclone10lp_lcell_comb
-- Equation(s):
-- \WideOr28~combout\ = (\state.s19~q\) # ((\state.s20~q\) # (\state.s16~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s19~q\,
	datac => \state.s20~q\,
	datad => \state.s16~q\,
	combout => \WideOr28~combout\);

-- Location: FF_X28_Y38_N27
\state.s17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \WideOr28~combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s17~q\);

-- Location: LCCOMB_X28_Y38_N28
\state~59\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state~59_combout\ = (\state.s17~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s17~q\,
	datad => \reset~input_o\,
	combout => \state~59_combout\);

-- Location: FF_X28_Y38_N29
\state.s18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s18~q\);

-- Location: LCCOMB_X28_Y38_N14
\next_state.s27\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \next_state.s27~combout\ = (\state.s12~q\) # (\state.s18~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s12~q\,
	datad => \state.s18~q\,
	combout => \next_state.s27~combout\);

-- Location: FF_X28_Y38_N15
\state.s27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \next_state.s27~combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s27~q\);

-- Location: LCCOMB_X28_Y38_N4
\state~70\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state~70_combout\ = (\c_out~input_o\ & (!\next_state~10_combout\ & ((\state.s10~q\)))) # (!\c_out~input_o\ & ((\state.s27~q\) # ((!\next_state~10_combout\ & \state.s10~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_out~input_o\,
	datab => \next_state~10_combout\,
	datac => \state.s27~q\,
	datad => \state.s10~q\,
	combout => \state~70_combout\);

-- Location: LCCOMB_X29_Y39_N10
\state~68\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state~68_combout\ = (\Ir_in[14]~input_o\ & ((\Ir_in[15]~input_o\ & (!\Ir_in[13]~input_o\ & !\state.s8~q\)) # (!\Ir_in[15]~input_o\ & ((\state.s8~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[13]~input_o\,
	datab => \Ir_in[14]~input_o\,
	datac => \Ir_in[15]~input_o\,
	datad => \state.s8~q\,
	combout => \state~68_combout\);

-- Location: LCCOMB_X29_Y39_N20
\state~69\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state~69_combout\ = (\state.s8~q\ & (((\state.s14~q\) # (!\state~68_combout\)) # (!\Ir_in[12]~input_o\))) # (!\state.s8~q\ & (((\state.s14~q\ & !\state~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[12]~input_o\,
	datab => \state.s8~q\,
	datac => \state.s14~q\,
	datad => \state~68_combout\,
	combout => \state~69_combout\);

-- Location: LCCOMB_X29_Y38_N24
\state~72\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state~72_combout\ = (!\reset~input_o\ & (!\state~71_combout\ & (!\state~70_combout\ & !\state~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \state~71_combout\,
	datac => \state~70_combout\,
	datad => \state~69_combout\,
	combout => \state~72_combout\);

-- Location: FF_X29_Y38_N25
\state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s1~q\);

-- Location: LCCOMB_X30_Y36_N4
\state~77\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state~77_combout\ = (!\reset~input_o\ & (\NEXT_STATE_DECODE~0_combout\ & (\Equal6~6_combout\ & \state.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \NEXT_STATE_DECODE~0_combout\,
	datac => \Equal6~6_combout\,
	datad => \state.s0~q\,
	combout => \state~77_combout\);

-- Location: FF_X29_Y38_N29
\state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \state~77_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s4~q\);

-- Location: LCCOMB_X28_Y38_N24
\WideOr26~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \WideOr26~0_combout\ = (\state.s5~q\) # ((\state.s4~q\) # (!\state.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s5~q\,
	datac => \state.s1~q\,
	datad => \state.s4~q\,
	combout => \WideOr26~0_combout\);

-- Location: FF_X28_Y38_N25
\state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \WideOr26~0_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s2~q\);

-- Location: LCCOMB_X31_Y33_N0
\state~54\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state~54_combout\ = (\Equal6~2_combout\ & (!\reset~input_o\ & \state.s8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~2_combout\,
	datac => \reset~input_o\,
	datad => \state.s8~q\,
	combout => \state~54_combout\);

-- Location: FF_X31_Y33_N1
\state.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s9~q\);

-- Location: LCCOMB_X28_Y35_N10
\next_state.s3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \next_state.s3~combout\ = (\state.s2~q\) # (\state.s9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s2~q\,
	datac => \state.s9~q\,
	combout => \next_state.s3~combout\);

-- Location: FF_X28_Y35_N11
\state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \next_state.s3~combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s3~q\);

-- Location: LCCOMB_X30_Y36_N10
\state~76\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state~76_combout\ = (\state.s0~q\ & (\Equal6~0_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s0~q\,
	datac => \Equal6~0_combout\,
	datad => \reset~input_o\,
	combout => \state~76_combout\);

-- Location: FF_X29_Y35_N27
\state.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \state~76_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s6~q\);

-- Location: LCCOMB_X29_Y36_N14
WideOr24 : cyclone10lp_lcell_comb
-- Equation(s):
-- \WideOr24~combout\ = (\WideOr24~0_combout\) # ((\state.s21~q\) # ((\state.s3~q\) # (\state.s6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr24~0_combout\,
	datab => \state.s21~q\,
	datac => \state.s3~q\,
	datad => \state.s6~q\,
	combout => \WideOr24~combout\);

-- Location: FF_X30_Y36_N7
\state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \WideOr24~combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s0~q\);

-- Location: LCCOMB_X30_Y36_N22
\state~75\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state~75_combout\ = (!\reset~input_o\ & (\Equal6~1_combout\ & \state.s0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \Equal6~1_combout\,
	datad => \state.s0~q\,
	combout => \state~75_combout\);

-- Location: FF_X29_Y35_N5
\state.s23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \state~75_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s23~q\);

-- Location: LCCOMB_X25_Y36_N30
\state~50\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \state~50_combout\ = (!\reset~input_o\ & (\Equal6~0_combout\ & \state.s23~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \Equal6~0_combout\,
	datad => \state.s23~q\,
	combout => \state~50_combout\);

-- Location: FF_X25_Y36_N31
\state.s25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s25~q\);

-- Location: IOIBUF_X0_Y44_N15
\Rf_D1_in[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rf_D1_in(0),
	o => \Rf_D1_in[0]~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\alu_c_in[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_c_in(0),
	o => \alu_c_in[0]~input_o\);

-- Location: LCCOMB_X20_Y36_N12
\Selector84~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector84~0_combout\ = (\state.s25~q\ & (\Rf_D1_in[0]~input_o\)) # (!\state.s25~q\ & ((\alu_c_in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s25~q\,
	datac => \Rf_D1_in[0]~input_o\,
	datad => \alu_c_in[0]~input_o\,
	combout => \Selector84~0_combout\);

-- Location: LCCOMB_X29_Y36_N24
\WideOr10~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \WideOr10~0_combout\ = (\state.s0~q\) # ((\state.s24~q\) # ((\state.s25~q\) # (\state.s26~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s0~q\,
	datab => \state.s24~q\,
	datac => \state.s25~q\,
	datad => \state.s26~q\,
	combout => \WideOr10~0_combout\);

-- Location: CLKCTRL_G0
\WideOr10~0clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WideOr10~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WideOr10~0clkctrl_outclk\);

-- Location: LCCOMB_X20_Y36_N8
\PC_out[0]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \PC_out[0]$latch~combout\ = (GLOBAL(\WideOr10~0clkctrl_outclk\) & (\Selector84~0_combout\)) # (!GLOBAL(\WideOr10~0clkctrl_outclk\) & ((\PC_out[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector84~0_combout\,
	datac => \PC_out[0]$latch~combout\,
	datad => \WideOr10~0clkctrl_outclk\,
	combout => \PC_out[0]$latch~combout\);

-- Location: IOIBUF_X0_Y32_N22
\Rf_D1_in[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rf_D1_in(1),
	o => \Rf_D1_in[1]~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\alu_c_in[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_c_in(1),
	o => \alu_c_in[1]~input_o\);

-- Location: LCCOMB_X24_Y36_N8
\Selector85~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector85~0_combout\ = (\state.s25~q\ & (\Rf_D1_in[1]~input_o\)) # (!\state.s25~q\ & ((\alu_c_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s25~q\,
	datac => \Rf_D1_in[1]~input_o\,
	datad => \alu_c_in[1]~input_o\,
	combout => \Selector85~0_combout\);

-- Location: LCCOMB_X24_Y36_N4
\PC_out[1]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \PC_out[1]$latch~combout\ = (GLOBAL(\WideOr10~0clkctrl_outclk\) & (\Selector85~0_combout\)) # (!GLOBAL(\WideOr10~0clkctrl_outclk\) & ((\PC_out[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector85~0_combout\,
	datac => \WideOr10~0clkctrl_outclk\,
	datad => \PC_out[1]$latch~combout\,
	combout => \PC_out[1]$latch~combout\);

-- Location: IOIBUF_X0_Y22_N22
\alu_c_in[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_c_in(2),
	o => \alu_c_in[2]~input_o\);

-- Location: IOIBUF_X0_Y42_N1
\Rf_D1_in[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rf_D1_in(2),
	o => \Rf_D1_in[2]~input_o\);

-- Location: LCCOMB_X25_Y36_N16
\Selector86~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector86~0_combout\ = (\state.s25~q\ & ((\Rf_D1_in[2]~input_o\))) # (!\state.s25~q\ & (\alu_c_in[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s25~q\,
	datac => \alu_c_in[2]~input_o\,
	datad => \Rf_D1_in[2]~input_o\,
	combout => \Selector86~0_combout\);

-- Location: LCCOMB_X25_Y36_N24
\PC_out[2]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \PC_out[2]$latch~combout\ = (GLOBAL(\WideOr10~0clkctrl_outclk\) & ((\Selector86~0_combout\))) # (!GLOBAL(\WideOr10~0clkctrl_outclk\) & (\PC_out[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_out[2]$latch~combout\,
	datac => \Selector86~0_combout\,
	datad => \WideOr10~0clkctrl_outclk\,
	combout => \PC_out[2]$latch~combout\);

-- Location: IOIBUF_X0_Y26_N15
\Rf_D1_in[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rf_D1_in(3),
	o => \Rf_D1_in[3]~input_o\);

-- Location: IOIBUF_X0_Y29_N15
\alu_c_in[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_c_in(3),
	o => \alu_c_in[3]~input_o\);

-- Location: LCCOMB_X24_Y36_N22
\Selector87~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector87~0_combout\ = (\state.s25~q\ & (\Rf_D1_in[3]~input_o\)) # (!\state.s25~q\ & ((\alu_c_in[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s25~q\,
	datac => \Rf_D1_in[3]~input_o\,
	datad => \alu_c_in[3]~input_o\,
	combout => \Selector87~0_combout\);

-- Location: LCCOMB_X24_Y36_N26
\PC_out[3]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \PC_out[3]$latch~combout\ = (GLOBAL(\WideOr10~0clkctrl_outclk\) & ((\Selector87~0_combout\))) # (!GLOBAL(\WideOr10~0clkctrl_outclk\) & (\PC_out[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_out[3]$latch~combout\,
	datab => \Selector87~0_combout\,
	datad => \WideOr10~0clkctrl_outclk\,
	combout => \PC_out[3]$latch~combout\);

-- Location: IOIBUF_X0_Y34_N1
\alu_c_in[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_c_in(4),
	o => \alu_c_in[4]~input_o\);

-- Location: IOIBUF_X0_Y35_N8
\Rf_D1_in[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rf_D1_in(4),
	o => \Rf_D1_in[4]~input_o\);

-- Location: LCCOMB_X25_Y36_N26
\Selector88~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector88~0_combout\ = (\state.s25~q\ & ((\Rf_D1_in[4]~input_o\))) # (!\state.s25~q\ & (\alu_c_in[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s25~q\,
	datac => \alu_c_in[4]~input_o\,
	datad => \Rf_D1_in[4]~input_o\,
	combout => \Selector88~0_combout\);

-- Location: LCCOMB_X25_Y36_N8
\PC_out[4]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \PC_out[4]$latch~combout\ = (GLOBAL(\WideOr10~0clkctrl_outclk\) & ((\Selector88~0_combout\))) # (!GLOBAL(\WideOr10~0clkctrl_outclk\) & (\PC_out[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_out[4]$latch~combout\,
	datac => \Selector88~0_combout\,
	datad => \WideOr10~0clkctrl_outclk\,
	combout => \PC_out[4]$latch~combout\);

-- Location: IOIBUF_X0_Y24_N1
\alu_c_in[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_c_in(5),
	o => \alu_c_in[5]~input_o\);

-- Location: IOIBUF_X0_Y33_N22
\Rf_D1_in[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rf_D1_in(5),
	o => \Rf_D1_in[5]~input_o\);

-- Location: LCCOMB_X20_Y36_N10
\Selector89~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector89~0_combout\ = (\state.s25~q\ & ((\Rf_D1_in[5]~input_o\))) # (!\state.s25~q\ & (\alu_c_in[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s25~q\,
	datac => \alu_c_in[5]~input_o\,
	datad => \Rf_D1_in[5]~input_o\,
	combout => \Selector89~0_combout\);

-- Location: LCCOMB_X20_Y36_N22
\PC_out[5]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \PC_out[5]$latch~combout\ = (GLOBAL(\WideOr10~0clkctrl_outclk\) & (\Selector89~0_combout\)) # (!GLOBAL(\WideOr10~0clkctrl_outclk\) & ((\PC_out[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector89~0_combout\,
	datac => \PC_out[5]$latch~combout\,
	datad => \WideOr10~0clkctrl_outclk\,
	combout => \PC_out[5]$latch~combout\);

-- Location: IOIBUF_X0_Y27_N22
\alu_c_in[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_c_in(6),
	o => \alu_c_in[6]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\Rf_D1_in[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rf_D1_in(6),
	o => \Rf_D1_in[6]~input_o\);

-- Location: LCCOMB_X24_Y36_N28
\Selector90~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector90~0_combout\ = (\state.s25~q\ & ((\Rf_D1_in[6]~input_o\))) # (!\state.s25~q\ & (\alu_c_in[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s25~q\,
	datac => \alu_c_in[6]~input_o\,
	datad => \Rf_D1_in[6]~input_o\,
	combout => \Selector90~0_combout\);

-- Location: LCCOMB_X24_Y36_N12
\PC_out[6]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \PC_out[6]$latch~combout\ = (GLOBAL(\WideOr10~0clkctrl_outclk\) & ((\Selector90~0_combout\))) # (!GLOBAL(\WideOr10~0clkctrl_outclk\) & (\PC_out[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_out[6]$latch~combout\,
	datab => \Selector90~0_combout\,
	datad => \WideOr10~0clkctrl_outclk\,
	combout => \PC_out[6]$latch~combout\);

-- Location: IOIBUF_X0_Y34_N8
\Rf_D1_in[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rf_D1_in(7),
	o => \Rf_D1_in[7]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\alu_c_in[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_c_in(7),
	o => \alu_c_in[7]~input_o\);

-- Location: LCCOMB_X24_Y36_N14
\Selector91~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector91~0_combout\ = (\state.s25~q\ & (\Rf_D1_in[7]~input_o\)) # (!\state.s25~q\ & ((\alu_c_in[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s25~q\,
	datab => \Rf_D1_in[7]~input_o\,
	datac => \alu_c_in[7]~input_o\,
	combout => \Selector91~0_combout\);

-- Location: LCCOMB_X24_Y36_N18
\PC_out[7]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \PC_out[7]$latch~combout\ = (GLOBAL(\WideOr10~0clkctrl_outclk\) & ((\Selector91~0_combout\))) # (!GLOBAL(\WideOr10~0clkctrl_outclk\) & (\PC_out[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_out[7]$latch~combout\,
	datac => \Selector91~0_combout\,
	datad => \WideOr10~0clkctrl_outclk\,
	combout => \PC_out[7]$latch~combout\);

-- Location: IOIBUF_X0_Y34_N22
\Rf_D1_in[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rf_D1_in(8),
	o => \Rf_D1_in[8]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\alu_c_in[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_c_in(8),
	o => \alu_c_in[8]~input_o\);

-- Location: LCCOMB_X25_Y36_N18
\Selector92~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector92~0_combout\ = (\state.s25~q\ & (\Rf_D1_in[8]~input_o\)) # (!\state.s25~q\ & ((\alu_c_in[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s25~q\,
	datac => \Rf_D1_in[8]~input_o\,
	datad => \alu_c_in[8]~input_o\,
	combout => \Selector92~0_combout\);

-- Location: LCCOMB_X25_Y36_N12
\PC_out[8]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \PC_out[8]$latch~combout\ = (GLOBAL(\WideOr10~0clkctrl_outclk\) & ((\Selector92~0_combout\))) # (!GLOBAL(\WideOr10~0clkctrl_outclk\) & (\PC_out[8]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_out[8]$latch~combout\,
	datac => \Selector92~0_combout\,
	datad => \WideOr10~0clkctrl_outclk\,
	combout => \PC_out[8]$latch~combout\);

-- Location: IOIBUF_X0_Y30_N1
\alu_c_in[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_c_in(9),
	o => \alu_c_in[9]~input_o\);

-- Location: IOIBUF_X0_Y31_N15
\Rf_D1_in[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rf_D1_in(9),
	o => \Rf_D1_in[9]~input_o\);

-- Location: LCCOMB_X29_Y36_N22
\Selector93~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector93~0_combout\ = (\state.s25~q\ & ((\Rf_D1_in[9]~input_o\))) # (!\state.s25~q\ & (\alu_c_in[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s25~q\,
	datac => \alu_c_in[9]~input_o\,
	datad => \Rf_D1_in[9]~input_o\,
	combout => \Selector93~0_combout\);

-- Location: LCCOMB_X29_Y36_N28
\PC_out[9]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \PC_out[9]$latch~combout\ = (GLOBAL(\WideOr10~0clkctrl_outclk\) & (\Selector93~0_combout\)) # (!GLOBAL(\WideOr10~0clkctrl_outclk\) & ((\PC_out[9]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector93~0_combout\,
	datab => \PC_out[9]$latch~combout\,
	datac => \WideOr10~0clkctrl_outclk\,
	combout => \PC_out[9]$latch~combout\);

-- Location: IOIBUF_X0_Y30_N8
\Rf_D1_in[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rf_D1_in(10),
	o => \Rf_D1_in[10]~input_o\);

-- Location: IOIBUF_X0_Y19_N8
\alu_c_in[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_c_in(10),
	o => \alu_c_in[10]~input_o\);

-- Location: LCCOMB_X25_Y36_N28
\Selector94~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector94~0_combout\ = (\state.s25~q\ & (\Rf_D1_in[10]~input_o\)) # (!\state.s25~q\ & ((\alu_c_in[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D1_in[10]~input_o\,
	datab => \state.s25~q\,
	datad => \alu_c_in[10]~input_o\,
	combout => \Selector94~0_combout\);

-- Location: LCCOMB_X25_Y36_N10
\PC_out[10]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \PC_out[10]$latch~combout\ = (GLOBAL(\WideOr10~0clkctrl_outclk\) & ((\Selector94~0_combout\))) # (!GLOBAL(\WideOr10~0clkctrl_outclk\) & (\PC_out[10]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_out[10]$latch~combout\,
	datac => \Selector94~0_combout\,
	datad => \WideOr10~0clkctrl_outclk\,
	combout => \PC_out[10]$latch~combout\);

-- Location: IOIBUF_X0_Y22_N15
\alu_c_in[11]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_c_in(11),
	o => \alu_c_in[11]~input_o\);

-- Location: IOIBUF_X0_Y35_N15
\Rf_D1_in[11]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rf_D1_in(11),
	o => \Rf_D1_in[11]~input_o\);

-- Location: LCCOMB_X24_Y36_N16
\Selector95~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector95~0_combout\ = (\state.s25~q\ & ((\Rf_D1_in[11]~input_o\))) # (!\state.s25~q\ & (\alu_c_in[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s25~q\,
	datac => \alu_c_in[11]~input_o\,
	datad => \Rf_D1_in[11]~input_o\,
	combout => \Selector95~0_combout\);

-- Location: LCCOMB_X24_Y36_N20
\PC_out[11]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \PC_out[11]$latch~combout\ = (GLOBAL(\WideOr10~0clkctrl_outclk\) & (\Selector95~0_combout\)) # (!GLOBAL(\WideOr10~0clkctrl_outclk\) & ((\PC_out[11]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector95~0_combout\,
	datab => \PC_out[11]$latch~combout\,
	datad => \WideOr10~0clkctrl_outclk\,
	combout => \PC_out[11]$latch~combout\);

-- Location: IOIBUF_X0_Y44_N1
\Rf_D1_in[12]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rf_D1_in(12),
	o => \Rf_D1_in[12]~input_o\);

-- Location: IOIBUF_X0_Y28_N22
\alu_c_in[12]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_c_in(12),
	o => \alu_c_in[12]~input_o\);

-- Location: LCCOMB_X25_Y36_N14
\Selector96~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector96~0_combout\ = (\state.s25~q\ & (\Rf_D1_in[12]~input_o\)) # (!\state.s25~q\ & ((\alu_c_in[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D1_in[12]~input_o\,
	datab => \state.s25~q\,
	datad => \alu_c_in[12]~input_o\,
	combout => \Selector96~0_combout\);

-- Location: LCCOMB_X25_Y36_N2
\PC_out[12]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \PC_out[12]$latch~combout\ = (GLOBAL(\WideOr10~0clkctrl_outclk\) & ((\Selector96~0_combout\))) # (!GLOBAL(\WideOr10~0clkctrl_outclk\) & (\PC_out[12]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_out[12]$latch~combout\,
	datac => \WideOr10~0clkctrl_outclk\,
	datad => \Selector96~0_combout\,
	combout => \PC_out[12]$latch~combout\);

-- Location: IOIBUF_X0_Y35_N1
\Rf_D1_in[13]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rf_D1_in(13),
	o => \Rf_D1_in[13]~input_o\);

-- Location: IOIBUF_X0_Y24_N15
\alu_c_in[13]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_c_in(13),
	o => \alu_c_in[13]~input_o\);

-- Location: LCCOMB_X24_Y36_N2
\Selector97~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector97~0_combout\ = (\state.s25~q\ & (\Rf_D1_in[13]~input_o\)) # (!\state.s25~q\ & ((\alu_c_in[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s25~q\,
	datab => \Rf_D1_in[13]~input_o\,
	datad => \alu_c_in[13]~input_o\,
	combout => \Selector97~0_combout\);

-- Location: LCCOMB_X24_Y36_N30
\PC_out[13]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \PC_out[13]$latch~combout\ = (GLOBAL(\WideOr10~0clkctrl_outclk\) & (\Selector97~0_combout\)) # (!GLOBAL(\WideOr10~0clkctrl_outclk\) & ((\PC_out[13]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector97~0_combout\,
	datac => \PC_out[13]$latch~combout\,
	datad => \WideOr10~0clkctrl_outclk\,
	combout => \PC_out[13]$latch~combout\);

-- Location: IOIBUF_X0_Y24_N8
\alu_c_in[14]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_c_in(14),
	o => \alu_c_in[14]~input_o\);

-- Location: IOIBUF_X0_Y28_N15
\Rf_D1_in[14]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rf_D1_in(14),
	o => \Rf_D1_in[14]~input_o\);

-- Location: LCCOMB_X25_Y36_N20
\Selector98~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector98~0_combout\ = (\state.s25~q\ & ((\Rf_D1_in[14]~input_o\))) # (!\state.s25~q\ & (\alu_c_in[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s25~q\,
	datac => \alu_c_in[14]~input_o\,
	datad => \Rf_D1_in[14]~input_o\,
	combout => \Selector98~0_combout\);

-- Location: LCCOMB_X25_Y36_N6
\PC_out[14]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \PC_out[14]$latch~combout\ = (GLOBAL(\WideOr10~0clkctrl_outclk\) & ((\Selector98~0_combout\))) # (!GLOBAL(\WideOr10~0clkctrl_outclk\) & (\PC_out[14]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_out[14]$latch~combout\,
	datac => \Selector98~0_combout\,
	datad => \WideOr10~0clkctrl_outclk\,
	combout => \PC_out[14]$latch~combout\);

-- Location: IOIBUF_X3_Y0_N22
\alu_c_in[15]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_c_in(15),
	o => \alu_c_in[15]~input_o\);

-- Location: IOIBUF_X0_Y34_N15
\Rf_D1_in[15]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rf_D1_in(15),
	o => \Rf_D1_in[15]~input_o\);

-- Location: LCCOMB_X25_Y36_N4
\Selector99~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector99~0_combout\ = (\state.s25~q\ & ((\Rf_D1_in[15]~input_o\))) # (!\state.s25~q\ & (\alu_c_in[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s25~q\,
	datac => \alu_c_in[15]~input_o\,
	datad => \Rf_D1_in[15]~input_o\,
	combout => \Selector99~0_combout\);

-- Location: LCCOMB_X25_Y36_N22
\PC_out[15]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \PC_out[15]$latch~combout\ = (GLOBAL(\WideOr10~0clkctrl_outclk\) & ((\Selector99~0_combout\))) # (!GLOBAL(\WideOr10~0clkctrl_outclk\) & (\PC_out[15]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_out[15]$latch~combout\,
	datac => \WideOr10~0clkctrl_outclk\,
	datad => \Selector99~0_combout\,
	combout => \PC_out[15]$latch~combout\);

-- Location: IOIBUF_X56_Y0_N15
\mem_d_in[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_d_in(0),
	o => \mem_d_in[0]~input_o\);

-- Location: CLKCTRL_G1
\state.s0~clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \state.s0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \state.s0~clkctrl_outclk\);

-- Location: LCCOMB_X29_Y34_N4
\Ir_out[0]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Ir_out[0]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & (\mem_d_in[0]~input_o\)) # (!GLOBAL(\state.s0~clkctrl_outclk\) & ((\Ir_out[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d_in[0]~input_o\,
	datac => \Ir_out[0]$latch~combout\,
	datad => \state.s0~clkctrl_outclk\,
	combout => \Ir_out[0]$latch~combout\);

-- Location: IOIBUF_X42_Y0_N22
\mem_d_in[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_d_in(1),
	o => \mem_d_in[1]~input_o\);

-- Location: LCCOMB_X42_Y8_N4
\Ir_out[1]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Ir_out[1]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & (\mem_d_in[1]~input_o\)) # (!GLOBAL(\state.s0~clkctrl_outclk\) & ((\Ir_out[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d_in[1]~input_o\,
	datac => \Ir_out[1]$latch~combout\,
	datad => \state.s0~clkctrl_outclk\,
	combout => \Ir_out[1]$latch~combout\);

-- Location: IOIBUF_X40_Y0_N15
\mem_d_in[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_d_in(2),
	o => \mem_d_in[2]~input_o\);

-- Location: LCCOMB_X29_Y34_N30
\Ir_out[2]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Ir_out[2]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & (\mem_d_in[2]~input_o\)) # (!GLOBAL(\state.s0~clkctrl_outclk\) & ((\Ir_out[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d_in[2]~input_o\,
	datac => \Ir_out[2]$latch~combout\,
	datad => \state.s0~clkctrl_outclk\,
	combout => \Ir_out[2]$latch~combout\);

-- Location: IOIBUF_X38_Y0_N1
\mem_d_in[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_d_in(3),
	o => \mem_d_in[3]~input_o\);

-- Location: LCCOMB_X38_Y2_N8
\Ir_out[3]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Ir_out[3]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & (\mem_d_in[3]~input_o\)) # (!GLOBAL(\state.s0~clkctrl_outclk\) & ((\Ir_out[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d_in[3]~input_o\,
	datac => \Ir_out[3]$latch~combout\,
	datad => \state.s0~clkctrl_outclk\,
	combout => \Ir_out[3]$latch~combout\);

-- Location: IOIBUF_X72_Y73_N1
\mem_d_in[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_d_in(4),
	o => \mem_d_in[4]~input_o\);

-- Location: LCCOMB_X73_Y72_N8
\Ir_out[4]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Ir_out[4]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & (\mem_d_in[4]~input_o\)) # (!GLOBAL(\state.s0~clkctrl_outclk\) & ((\Ir_out[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d_in[4]~input_o\,
	datac => \Ir_out[4]$latch~combout\,
	datad => \state.s0~clkctrl_outclk\,
	combout => \Ir_out[4]$latch~combout\);

-- Location: IOIBUF_X54_Y0_N1
\mem_d_in[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_d_in(5),
	o => \mem_d_in[5]~input_o\);

-- Location: LCCOMB_X54_Y2_N8
\Ir_out[5]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Ir_out[5]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & (\mem_d_in[5]~input_o\)) # (!GLOBAL(\state.s0~clkctrl_outclk\) & ((\Ir_out[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d_in[5]~input_o\,
	datac => \Ir_out[5]$latch~combout\,
	datad => \state.s0~clkctrl_outclk\,
	combout => \Ir_out[5]$latch~combout\);

-- Location: IOIBUF_X49_Y0_N8
\mem_d_in[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_d_in(6),
	o => \mem_d_in[6]~input_o\);

-- Location: LCCOMB_X45_Y2_N28
\Ir_out[6]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Ir_out[6]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & (\mem_d_in[6]~input_o\)) # (!GLOBAL(\state.s0~clkctrl_outclk\) & ((\Ir_out[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d_in[6]~input_o\,
	datac => \Ir_out[6]$latch~combout\,
	datad => \state.s0~clkctrl_outclk\,
	combout => \Ir_out[6]$latch~combout\);

-- Location: IOIBUF_X79_Y73_N1
\mem_d_in[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_d_in(7),
	o => \mem_d_in[7]~input_o\);

-- Location: LCCOMB_X72_Y72_N8
\Ir_out[7]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Ir_out[7]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & (\mem_d_in[7]~input_o\)) # (!GLOBAL(\state.s0~clkctrl_outclk\) & ((\Ir_out[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d_in[7]~input_o\,
	datac => \Ir_out[7]$latch~combout\,
	datad => \state.s0~clkctrl_outclk\,
	combout => \Ir_out[7]$latch~combout\);

-- Location: IOIBUF_X85_Y73_N8
\mem_d_in[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_d_in(8),
	o => \mem_d_in[8]~input_o\);

-- Location: LCCOMB_X84_Y72_N4
\Ir_out[8]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Ir_out[8]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & (\mem_d_in[8]~input_o\)) # (!GLOBAL(\state.s0~clkctrl_outclk\) & ((\Ir_out[8]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d_in[8]~input_o\,
	datac => \Ir_out[8]$latch~combout\,
	datad => \state.s0~clkctrl_outclk\,
	combout => \Ir_out[8]$latch~combout\);

-- Location: IOIBUF_X56_Y0_N8
\mem_d_in[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_d_in(9),
	o => \mem_d_in[9]~input_o\);

-- Location: LCCOMB_X32_Y35_N20
\Ir_out[9]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Ir_out[9]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & (\mem_d_in[9]~input_o\)) # (!GLOBAL(\state.s0~clkctrl_outclk\) & ((\Ir_out[9]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d_in[9]~input_o\,
	datac => \state.s0~clkctrl_outclk\,
	datad => \Ir_out[9]$latch~combout\,
	combout => \Ir_out[9]$latch~combout\);

-- Location: IOIBUF_X0_Y16_N15
\mem_d_in[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_d_in(10),
	o => \mem_d_in[10]~input_o\);

-- Location: LCCOMB_X1_Y18_N8
\Ir_out[10]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Ir_out[10]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & (\mem_d_in[10]~input_o\)) # (!GLOBAL(\state.s0~clkctrl_outclk\) & ((\Ir_out[10]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d_in[10]~input_o\,
	datac => \Ir_out[10]$latch~combout\,
	datad => \state.s0~clkctrl_outclk\,
	combout => \Ir_out[10]$latch~combout\);

-- Location: IOIBUF_X31_Y0_N1
\mem_d_in[11]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_d_in(11),
	o => \mem_d_in[11]~input_o\);

-- Location: LCCOMB_X29_Y21_N28
\Ir_out[11]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Ir_out[11]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & (\mem_d_in[11]~input_o\)) # (!GLOBAL(\state.s0~clkctrl_outclk\) & ((\Ir_out[11]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d_in[11]~input_o\,
	datac => \Ir_out[11]$latch~combout\,
	datad => \state.s0~clkctrl_outclk\,
	combout => \Ir_out[11]$latch~combout\);

-- Location: IOIBUF_X9_Y0_N15
\mem_d_in[12]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_d_in(12),
	o => \mem_d_in[12]~input_o\);

-- Location: LCCOMB_X21_Y1_N24
\Ir_out[12]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Ir_out[12]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & (\mem_d_in[12]~input_o\)) # (!GLOBAL(\state.s0~clkctrl_outclk\) & ((\Ir_out[12]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d_in[12]~input_o\,
	datac => \Ir_out[12]$latch~combout\,
	datad => \state.s0~clkctrl_outclk\,
	combout => \Ir_out[12]$latch~combout\);

-- Location: IOIBUF_X52_Y0_N22
\mem_d_in[13]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_d_in(13),
	o => \mem_d_in[13]~input_o\);

-- Location: LCCOMB_X48_Y2_N28
\Ir_out[13]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Ir_out[13]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & (\mem_d_in[13]~input_o\)) # (!GLOBAL(\state.s0~clkctrl_outclk\) & ((\Ir_out[13]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d_in[13]~input_o\,
	datab => \Ir_out[13]$latch~combout\,
	datad => \state.s0~clkctrl_outclk\,
	combout => \Ir_out[13]$latch~combout\);

-- Location: IOIBUF_X115_Y36_N1
\mem_d_in[14]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_d_in(14),
	o => \mem_d_in[14]~input_o\);

-- Location: LCCOMB_X56_Y28_N12
\Ir_out[14]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Ir_out[14]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & ((\mem_d_in[14]~input_o\))) # (!GLOBAL(\state.s0~clkctrl_outclk\) & (\Ir_out[14]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_out[14]$latch~combout\,
	datab => \mem_d_in[14]~input_o\,
	datad => \state.s0~clkctrl_outclk\,
	combout => \Ir_out[14]$latch~combout\);

-- Location: IOIBUF_X20_Y0_N22
\mem_d_in[15]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_d_in(15),
	o => \mem_d_in[15]~input_o\);

-- Location: LCCOMB_X24_Y1_N24
\Ir_out[15]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Ir_out[15]$latch~combout\ = (GLOBAL(\state.s0~clkctrl_outclk\) & (\mem_d_in[15]~input_o\)) # (!GLOBAL(\state.s0~clkctrl_outclk\) & ((\Ir_out[15]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d_in[15]~input_o\,
	datac => \Ir_out[15]$latch~combout\,
	datad => \state.s0~clkctrl_outclk\,
	combout => \Ir_out[15]$latch~combout\);

-- Location: IOIBUF_X52_Y0_N1
\PC_in[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_in(0),
	o => \PC_in[0]~input_o\);

-- Location: LCCOMB_X27_Y35_N0
\Selector23~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\state.s9~q\ & (\mem_d_in[0]~input_o\)) # (!\state.s9~q\ & ((\alu_c_in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d_in[0]~input_o\,
	datac => \alu_c_in[0]~input_o\,
	datad => \state.s9~q\,
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X27_Y35_N2
\Selector23~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector23~1_combout\ = (\state.s20~q\ & (\Rf_D1_in[0]~input_o\)) # (!\state.s20~q\ & ((\state.s14~q\ & (\Rf_D1_in[0]~input_o\)) # (!\state.s14~q\ & ((\Selector23~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s20~q\,
	datab => \Rf_D1_in[0]~input_o\,
	datac => \state.s14~q\,
	datad => \Selector23~0_combout\,
	combout => \Selector23~1_combout\);

-- Location: LCCOMB_X28_Y38_N16
\WideOr19~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \WideOr19~0_combout\ = (!\state.s21~q\ & (!\state.s18~q\ & (!\state.s8~q\ & !\state.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s21~q\,
	datab => \state.s18~q\,
	datac => \state.s8~q\,
	datad => \state.s2~q\,
	combout => \WideOr19~0_combout\);

-- Location: LCCOMB_X29_Y36_N20
\WideOr19~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \WideOr19~1_combout\ = (\state.s14~q\) # (((\state.s20~q\) # (\state.s9~q\)) # (!\WideOr19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s14~q\,
	datab => \WideOr19~0_combout\,
	datac => \state.s20~q\,
	datad => \state.s9~q\,
	combout => \WideOr19~1_combout\);

-- Location: CLKCTRL_G3
\WideOr19~1clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WideOr19~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WideOr19~1clkctrl_outclk\);

-- Location: LCCOMB_X27_Y35_N24
\T3[0]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T3(0) = (GLOBAL(\WideOr19~1clkctrl_outclk\) & (\Selector23~1_combout\)) # (!GLOBAL(\WideOr19~1clkctrl_outclk\) & ((T3(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~1_combout\,
	datac => \WideOr19~1clkctrl_outclk\,
	datad => T3(0),
	combout => T3(0));

-- Location: LCCOMB_X31_Y33_N30
\WideOr8~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \WideOr8~0_combout\ = (!\state.s15~q\ & (!\state.s11~q\ & !\state.s9~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s15~q\,
	datac => \state.s11~q\,
	datad => \state.s9~q\,
	combout => \WideOr8~0_combout\);

-- Location: LCCOMB_X27_Y35_N16
\Selector101~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector101~0_combout\ = (\WideOr8~0_combout\ & (\PC_in[0]~input_o\)) # (!\WideOr8~0_combout\ & ((T3(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in[0]~input_o\,
	datab => T3(0),
	datad => \WideOr8~0_combout\,
	combout => \Selector101~0_combout\);

-- Location: LCCOMB_X31_Y33_N16
\WideOr7~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \WideOr7~0_combout\ = (\state.s15~q\) # ((\state.s11~q\) # ((\state.s0~q\) # (\state.s9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s15~q\,
	datab => \state.s11~q\,
	datac => \state.s0~q\,
	datad => \state.s9~q\,
	combout => \WideOr7~0_combout\);

-- Location: CLKCTRL_G15
\WideOr7~0clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WideOr7~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WideOr7~0clkctrl_outclk\);

-- Location: LCCOMB_X27_Y35_N20
\mem_a_out[0]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mem_a_out[0]$latch~combout\ = (GLOBAL(\WideOr7~0clkctrl_outclk\) & ((\Selector101~0_combout\))) # (!GLOBAL(\WideOr7~0clkctrl_outclk\) & (\mem_a_out[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_a_out[0]$latch~combout\,
	datac => \Selector101~0_combout\,
	datad => \WideOr7~0clkctrl_outclk\,
	combout => \mem_a_out[0]$latch~combout\);

-- Location: IOIBUF_X0_Y12_N22
\PC_in[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_in(1),
	o => \PC_in[1]~input_o\);

-- Location: LCCOMB_X31_Y33_N18
\Selector25~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\state.s9~q\ & (\mem_d_in[1]~input_o\)) # (!\state.s9~q\ & ((\alu_c_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d_in[1]~input_o\,
	datac => \alu_c_in[1]~input_o\,
	datad => \state.s9~q\,
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X30_Y33_N12
\Selector25~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector25~1_combout\ = (\state.s14~q\ & (\Rf_D1_in[1]~input_o\)) # (!\state.s14~q\ & ((\state.s20~q\ & (\Rf_D1_in[1]~input_o\)) # (!\state.s20~q\ & ((\Selector25~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s14~q\,
	datab => \Rf_D1_in[1]~input_o\,
	datac => \state.s20~q\,
	datad => \Selector25~0_combout\,
	combout => \Selector25~1_combout\);

-- Location: LCCOMB_X29_Y33_N16
\T3[1]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T3(1) = (GLOBAL(\WideOr19~1clkctrl_outclk\) & ((\Selector25~1_combout\))) # (!GLOBAL(\WideOr19~1clkctrl_outclk\) & (T3(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => T3(1),
	datac => \Selector25~1_combout\,
	datad => \WideOr19~1clkctrl_outclk\,
	combout => T3(1));

-- Location: LCCOMB_X29_Y33_N24
\Selector102~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector102~0_combout\ = (\WideOr8~0_combout\ & (\PC_in[1]~input_o\)) # (!\WideOr8~0_combout\ & ((T3(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in[1]~input_o\,
	datac => T3(1),
	datad => \WideOr8~0_combout\,
	combout => \Selector102~0_combout\);

-- Location: LCCOMB_X29_Y33_N8
\mem_a_out[1]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mem_a_out[1]$latch~combout\ = (GLOBAL(\WideOr7~0clkctrl_outclk\) & ((\Selector102~0_combout\))) # (!GLOBAL(\WideOr7~0clkctrl_outclk\) & (\mem_a_out[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_a_out[1]$latch~combout\,
	datac => \Selector102~0_combout\,
	datad => \WideOr7~0clkctrl_outclk\,
	combout => \mem_a_out[1]$latch~combout\);

-- Location: IOIBUF_X47_Y0_N8
\PC_in[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_in(2),
	o => \PC_in[2]~input_o\);

-- Location: LCCOMB_X30_Y35_N12
\Selector26~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\state.s9~q\ & (\mem_d_in[2]~input_o\)) # (!\state.s9~q\ & ((\alu_c_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d_in[2]~input_o\,
	datac => \alu_c_in[2]~input_o\,
	datad => \state.s9~q\,
	combout => \Selector26~0_combout\);

-- Location: LCCOMB_X30_Y35_N18
\Selector26~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector26~1_combout\ = (\state.s14~q\ & (\Rf_D1_in[2]~input_o\)) # (!\state.s14~q\ & ((\state.s20~q\ & (\Rf_D1_in[2]~input_o\)) # (!\state.s20~q\ & ((\Selector26~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s14~q\,
	datab => \Rf_D1_in[2]~input_o\,
	datac => \state.s20~q\,
	datad => \Selector26~0_combout\,
	combout => \Selector26~1_combout\);

-- Location: LCCOMB_X30_Y35_N0
\T3[2]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T3(2) = (GLOBAL(\WideOr19~1clkctrl_outclk\) & ((\Selector26~1_combout\))) # (!GLOBAL(\WideOr19~1clkctrl_outclk\) & (T3(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => T3(2),
	datac => \WideOr19~1clkctrl_outclk\,
	datad => \Selector26~1_combout\,
	combout => T3(2));

-- Location: LCCOMB_X30_Y35_N24
\Selector103~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector103~0_combout\ = (\WideOr8~0_combout\ & (\PC_in[2]~input_o\)) # (!\WideOr8~0_combout\ & ((T3(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in[2]~input_o\,
	datab => \WideOr8~0_combout\,
	datad => T3(2),
	combout => \Selector103~0_combout\);

-- Location: LCCOMB_X30_Y35_N20
\mem_a_out[2]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mem_a_out[2]$latch~combout\ = (GLOBAL(\WideOr7~0clkctrl_outclk\) & ((\Selector103~0_combout\))) # (!GLOBAL(\WideOr7~0clkctrl_outclk\) & (\mem_a_out[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_a_out[2]$latch~combout\,
	datac => \Selector103~0_combout\,
	datad => \WideOr7~0clkctrl_outclk\,
	combout => \mem_a_out[2]$latch~combout\);

-- Location: IOIBUF_X0_Y10_N22
\PC_in[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_in(3),
	o => \PC_in[3]~input_o\);

-- Location: LCCOMB_X31_Y33_N22
\Selector27~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\state.s9~q\ & (\mem_d_in[3]~input_o\)) # (!\state.s9~q\ & ((\alu_c_in[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d_in[3]~input_o\,
	datac => \alu_c_in[3]~input_o\,
	datad => \state.s9~q\,
	combout => \Selector27~0_combout\);

-- Location: LCCOMB_X30_Y33_N10
\Selector27~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector27~1_combout\ = (\state.s14~q\ & (\Rf_D1_in[3]~input_o\)) # (!\state.s14~q\ & ((\state.s20~q\ & (\Rf_D1_in[3]~input_o\)) # (!\state.s20~q\ & ((\Selector27~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s14~q\,
	datab => \Rf_D1_in[3]~input_o\,
	datac => \state.s20~q\,
	datad => \Selector27~0_combout\,
	combout => \Selector27~1_combout\);

-- Location: LCCOMB_X30_Y33_N20
\T3[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T3(3) = (GLOBAL(\WideOr19~1clkctrl_outclk\) & ((\Selector27~1_combout\))) # (!GLOBAL(\WideOr19~1clkctrl_outclk\) & (T3(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => T3(3),
	datac => \Selector27~1_combout\,
	datad => \WideOr19~1clkctrl_outclk\,
	combout => T3(3));

-- Location: LCCOMB_X30_Y33_N8
\Selector104~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector104~0_combout\ = (\WideOr8~0_combout\ & (\PC_in[3]~input_o\)) # (!\WideOr8~0_combout\ & ((T3(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in[3]~input_o\,
	datac => \WideOr8~0_combout\,
	datad => T3(3),
	combout => \Selector104~0_combout\);

-- Location: LCCOMB_X30_Y33_N0
\mem_a_out[3]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mem_a_out[3]$latch~combout\ = (GLOBAL(\WideOr7~0clkctrl_outclk\) & ((\Selector104~0_combout\))) # (!GLOBAL(\WideOr7~0clkctrl_outclk\) & (\mem_a_out[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_a_out[3]$latch~combout\,
	datac => \Selector104~0_combout\,
	datad => \WideOr7~0clkctrl_outclk\,
	combout => \mem_a_out[3]$latch~combout\);

-- Location: LCCOMB_X26_Y35_N20
\Selector28~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\state.s9~q\ & ((\mem_d_in[4]~input_o\))) # (!\state.s9~q\ & (\alu_c_in[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_c_in[4]~input_o\,
	datac => \mem_d_in[4]~input_o\,
	datad => \state.s9~q\,
	combout => \Selector28~0_combout\);

-- Location: LCCOMB_X26_Y35_N18
\Selector28~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector28~1_combout\ = (\state.s20~q\ & (\Rf_D1_in[4]~input_o\)) # (!\state.s20~q\ & ((\state.s14~q\ & (\Rf_D1_in[4]~input_o\)) # (!\state.s14~q\ & ((\Selector28~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D1_in[4]~input_o\,
	datab => \state.s20~q\,
	datac => \state.s14~q\,
	datad => \Selector28~0_combout\,
	combout => \Selector28~1_combout\);

-- Location: LCCOMB_X26_Y35_N28
\T3[4]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T3(4) = (GLOBAL(\WideOr19~1clkctrl_outclk\) & (\Selector28~1_combout\)) # (!GLOBAL(\WideOr19~1clkctrl_outclk\) & ((T3(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector28~1_combout\,
	datac => \WideOr19~1clkctrl_outclk\,
	datad => T3(4),
	combout => T3(4));

-- Location: IOIBUF_X0_Y12_N15
\PC_in[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_in(4),
	o => \PC_in[4]~input_o\);

-- Location: LCCOMB_X27_Y35_N30
\Selector105~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector105~0_combout\ = (\WideOr8~0_combout\ & ((\PC_in[4]~input_o\))) # (!\WideOr8~0_combout\ & (T3(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T3(4),
	datac => \PC_in[4]~input_o\,
	datad => \WideOr8~0_combout\,
	combout => \Selector105~0_combout\);

-- Location: LCCOMB_X27_Y35_N26
\mem_a_out[4]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mem_a_out[4]$latch~combout\ = (GLOBAL(\WideOr7~0clkctrl_outclk\) & ((\Selector105~0_combout\))) # (!GLOBAL(\WideOr7~0clkctrl_outclk\) & (\mem_a_out[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a_out[4]$latch~combout\,
	datac => \Selector105~0_combout\,
	datad => \WideOr7~0clkctrl_outclk\,
	combout => \mem_a_out[4]$latch~combout\);

-- Location: IOIBUF_X33_Y0_N8
\PC_in[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_in(5),
	o => \PC_in[5]~input_o\);

-- Location: LCCOMB_X30_Y33_N24
\Selector29~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\state.s9~q\ & (\mem_d_in[5]~input_o\)) # (!\state.s9~q\ & ((\alu_c_in[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d_in[5]~input_o\,
	datab => \alu_c_in[5]~input_o\,
	datac => \state.s9~q\,
	combout => \Selector29~0_combout\);

-- Location: LCCOMB_X30_Y33_N22
\Selector29~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector29~1_combout\ = (\state.s14~q\ & (\Rf_D1_in[5]~input_o\)) # (!\state.s14~q\ & ((\state.s20~q\ & (\Rf_D1_in[5]~input_o\)) # (!\state.s20~q\ & ((\Selector29~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s14~q\,
	datab => \Rf_D1_in[5]~input_o\,
	datac => \state.s20~q\,
	datad => \Selector29~0_combout\,
	combout => \Selector29~1_combout\);

-- Location: LCCOMB_X30_Y33_N6
\T3[5]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T3(5) = (GLOBAL(\WideOr19~1clkctrl_outclk\) & ((\Selector29~1_combout\))) # (!GLOBAL(\WideOr19~1clkctrl_outclk\) & (T3(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T3(5),
	datac => \Selector29~1_combout\,
	datad => \WideOr19~1clkctrl_outclk\,
	combout => T3(5));

-- Location: LCCOMB_X30_Y33_N2
\Selector106~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector106~0_combout\ = (\WideOr8~0_combout\ & (\PC_in[5]~input_o\)) # (!\WideOr8~0_combout\ & ((T3(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in[5]~input_o\,
	datab => T3(5),
	datac => \WideOr8~0_combout\,
	combout => \Selector106~0_combout\);

-- Location: LCCOMB_X30_Y33_N26
\mem_a_out[5]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mem_a_out[5]$latch~combout\ = (GLOBAL(\WideOr7~0clkctrl_outclk\) & (\Selector106~0_combout\)) # (!GLOBAL(\WideOr7~0clkctrl_outclk\) & ((\mem_a_out[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector106~0_combout\,
	datac => \mem_a_out[5]$latch~combout\,
	datad => \WideOr7~0clkctrl_outclk\,
	combout => \mem_a_out[5]$latch~combout\);

-- Location: IOIBUF_X65_Y73_N15
\PC_in[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_in(6),
	o => \PC_in[6]~input_o\);

-- Location: LCCOMB_X30_Y36_N24
\Selector30~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (\state.s9~q\ & (\mem_d_in[6]~input_o\)) # (!\state.s9~q\ & ((\alu_c_in[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d_in[6]~input_o\,
	datac => \alu_c_in[6]~input_o\,
	datad => \state.s9~q\,
	combout => \Selector30~0_combout\);

-- Location: LCCOMB_X30_Y36_N0
\Selector30~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector30~1_combout\ = (\state.s20~q\ & (\Rf_D1_in[6]~input_o\)) # (!\state.s20~q\ & ((\state.s14~q\ & (\Rf_D1_in[6]~input_o\)) # (!\state.s14~q\ & ((\Selector30~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D1_in[6]~input_o\,
	datab => \state.s20~q\,
	datac => \state.s14~q\,
	datad => \Selector30~0_combout\,
	combout => \Selector30~1_combout\);

-- Location: LCCOMB_X30_Y36_N18
\T3[6]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T3(6) = (GLOBAL(\WideOr19~1clkctrl_outclk\) & ((\Selector30~1_combout\))) # (!GLOBAL(\WideOr19~1clkctrl_outclk\) & (T3(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => T3(6),
	datac => \Selector30~1_combout\,
	datad => \WideOr19~1clkctrl_outclk\,
	combout => T3(6));

-- Location: LCCOMB_X31_Y36_N20
\Selector107~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector107~0_combout\ = (\WideOr8~0_combout\ & (\PC_in[6]~input_o\)) # (!\WideOr8~0_combout\ & ((T3(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in[6]~input_o\,
	datac => T3(6),
	datad => \WideOr8~0_combout\,
	combout => \Selector107~0_combout\);

-- Location: LCCOMB_X31_Y36_N28
\mem_a_out[6]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mem_a_out[6]$latch~combout\ = (GLOBAL(\WideOr7~0clkctrl_outclk\) & ((\Selector107~0_combout\))) # (!GLOBAL(\WideOr7~0clkctrl_outclk\) & (\mem_a_out[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_a_out[6]$latch~combout\,
	datac => \WideOr7~0clkctrl_outclk\,
	datad => \Selector107~0_combout\,
	combout => \mem_a_out[6]$latch~combout\);

-- Location: LCCOMB_X30_Y34_N0
\Selector31~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\state.s9~q\ & ((\mem_d_in[7]~input_o\))) # (!\state.s9~q\ & (\alu_c_in[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_c_in[7]~input_o\,
	datac => \mem_d_in[7]~input_o\,
	datad => \state.s9~q\,
	combout => \Selector31~0_combout\);

-- Location: LCCOMB_X30_Y34_N30
\Selector31~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector31~1_combout\ = (\state.s20~q\ & (\Rf_D1_in[7]~input_o\)) # (!\state.s20~q\ & ((\state.s14~q\ & (\Rf_D1_in[7]~input_o\)) # (!\state.s14~q\ & ((\Selector31~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D1_in[7]~input_o\,
	datab => \state.s20~q\,
	datac => \state.s14~q\,
	datad => \Selector31~0_combout\,
	combout => \Selector31~1_combout\);

-- Location: LCCOMB_X30_Y34_N8
\T3[7]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T3(7) = (GLOBAL(\WideOr19~1clkctrl_outclk\) & (\Selector31~1_combout\)) # (!GLOBAL(\WideOr19~1clkctrl_outclk\) & ((T3(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector31~1_combout\,
	datac => T3(7),
	datad => \WideOr19~1clkctrl_outclk\,
	combout => T3(7));

-- Location: IOIBUF_X47_Y0_N1
\PC_in[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_in(7),
	o => \PC_in[7]~input_o\);

-- Location: LCCOMB_X31_Y34_N28
\Selector108~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector108~0_combout\ = (\WideOr8~0_combout\ & ((\PC_in[7]~input_o\))) # (!\WideOr8~0_combout\ & (T3(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => T3(7),
	datac => \PC_in[7]~input_o\,
	datad => \WideOr8~0_combout\,
	combout => \Selector108~0_combout\);

-- Location: LCCOMB_X31_Y34_N4
\mem_a_out[7]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mem_a_out[7]$latch~combout\ = (GLOBAL(\WideOr7~0clkctrl_outclk\) & (\Selector108~0_combout\)) # (!GLOBAL(\WideOr7~0clkctrl_outclk\) & ((\mem_a_out[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector108~0_combout\,
	datac => \mem_a_out[7]$latch~combout\,
	datad => \WideOr7~0clkctrl_outclk\,
	combout => \mem_a_out[7]$latch~combout\);

-- Location: LCCOMB_X30_Y34_N28
\Selector32~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\state.s9~q\ & (\mem_d_in[8]~input_o\)) # (!\state.s9~q\ & ((\alu_c_in[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d_in[8]~input_o\,
	datac => \alu_c_in[8]~input_o\,
	datad => \state.s9~q\,
	combout => \Selector32~0_combout\);

-- Location: LCCOMB_X30_Y34_N22
\Selector32~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector32~1_combout\ = (\state.s20~q\ & (\Rf_D1_in[8]~input_o\)) # (!\state.s20~q\ & ((\state.s14~q\ & (\Rf_D1_in[8]~input_o\)) # (!\state.s14~q\ & ((\Selector32~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D1_in[8]~input_o\,
	datab => \state.s20~q\,
	datac => \state.s14~q\,
	datad => \Selector32~0_combout\,
	combout => \Selector32~1_combout\);

-- Location: LCCOMB_X30_Y34_N2
\T3[8]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T3(8) = (GLOBAL(\WideOr19~1clkctrl_outclk\) & ((\Selector32~1_combout\))) # (!GLOBAL(\WideOr19~1clkctrl_outclk\) & (T3(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => T3(8),
	datac => \Selector32~1_combout\,
	datad => \WideOr19~1clkctrl_outclk\,
	combout => T3(8));

-- Location: IOIBUF_X38_Y73_N1
\PC_in[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_in(8),
	o => \PC_in[8]~input_o\);

-- Location: LCCOMB_X31_Y34_N18
\Selector109~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector109~0_combout\ = (\WideOr8~0_combout\ & ((\PC_in[8]~input_o\))) # (!\WideOr8~0_combout\ & (T3(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T3(8),
	datac => \PC_in[8]~input_o\,
	datad => \WideOr8~0_combout\,
	combout => \Selector109~0_combout\);

-- Location: LCCOMB_X31_Y34_N30
\mem_a_out[8]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mem_a_out[8]$latch~combout\ = (GLOBAL(\WideOr7~0clkctrl_outclk\) & (\Selector109~0_combout\)) # (!GLOBAL(\WideOr7~0clkctrl_outclk\) & ((\mem_a_out[8]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector109~0_combout\,
	datac => \mem_a_out[8]$latch~combout\,
	datad => \WideOr7~0clkctrl_outclk\,
	combout => \mem_a_out[8]$latch~combout\);

-- Location: LCCOMB_X28_Y33_N18
\Selector33~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\state.s9~q\ & ((\mem_d_in[9]~input_o\))) # (!\state.s9~q\ & (\alu_c_in[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_c_in[9]~input_o\,
	datac => \mem_d_in[9]~input_o\,
	datad => \state.s9~q\,
	combout => \Selector33~0_combout\);

-- Location: LCCOMB_X28_Y33_N0
\Selector33~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector33~1_combout\ = (\state.s14~q\ & (\Rf_D1_in[9]~input_o\)) # (!\state.s14~q\ & ((\state.s20~q\ & (\Rf_D1_in[9]~input_o\)) # (!\state.s20~q\ & ((\Selector33~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s14~q\,
	datab => \Rf_D1_in[9]~input_o\,
	datac => \state.s20~q\,
	datad => \Selector33~0_combout\,
	combout => \Selector33~1_combout\);

-- Location: LCCOMB_X29_Y33_N22
\T3[9]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T3(9) = (GLOBAL(\WideOr19~1clkctrl_outclk\) & ((\Selector33~1_combout\))) # (!GLOBAL(\WideOr19~1clkctrl_outclk\) & (T3(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T3(9),
	datac => \Selector33~1_combout\,
	datad => \WideOr19~1clkctrl_outclk\,
	combout => T3(9));

-- Location: IOIBUF_X67_Y0_N1
\PC_in[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_in(9),
	o => \PC_in[9]~input_o\);

-- Location: LCCOMB_X29_Y33_N10
\Selector110~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector110~0_combout\ = (\WideOr8~0_combout\ & ((\PC_in[9]~input_o\))) # (!\WideOr8~0_combout\ & (T3(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => T3(9),
	datac => \PC_in[9]~input_o\,
	datad => \WideOr8~0_combout\,
	combout => \Selector110~0_combout\);

-- Location: LCCOMB_X29_Y33_N14
\mem_a_out[9]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mem_a_out[9]$latch~combout\ = (GLOBAL(\WideOr7~0clkctrl_outclk\) & (\Selector110~0_combout\)) # (!GLOBAL(\WideOr7~0clkctrl_outclk\) & ((\mem_a_out[9]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector110~0_combout\,
	datac => \mem_a_out[9]$latch~combout\,
	datad => \WideOr7~0clkctrl_outclk\,
	combout => \mem_a_out[9]$latch~combout\);

-- Location: IOIBUF_X0_Y11_N22
\PC_in[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_in(10),
	o => \PC_in[10]~input_o\);

-- Location: LCCOMB_X31_Y33_N14
\Selector34~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\state.s9~q\ & (\mem_d_in[10]~input_o\)) # (!\state.s9~q\ & ((\alu_c_in[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d_in[10]~input_o\,
	datac => \alu_c_in[10]~input_o\,
	datad => \state.s9~q\,
	combout => \Selector34~0_combout\);

-- Location: LCCOMB_X28_Y33_N26
\Selector34~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector34~1_combout\ = (\state.s14~q\ & (\Rf_D1_in[10]~input_o\)) # (!\state.s14~q\ & ((\state.s20~q\ & (\Rf_D1_in[10]~input_o\)) # (!\state.s20~q\ & ((\Selector34~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s14~q\,
	datab => \Rf_D1_in[10]~input_o\,
	datac => \state.s20~q\,
	datad => \Selector34~0_combout\,
	combout => \Selector34~1_combout\);

-- Location: LCCOMB_X28_Y33_N24
\T3[10]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T3(10) = (GLOBAL(\WideOr19~1clkctrl_outclk\) & ((\Selector34~1_combout\))) # (!GLOBAL(\WideOr19~1clkctrl_outclk\) & (T3(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => T3(10),
	datac => \Selector34~1_combout\,
	datad => \WideOr19~1clkctrl_outclk\,
	combout => T3(10));

-- Location: LCCOMB_X27_Y33_N28
\Selector111~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector111~0_combout\ = (\WideOr8~0_combout\ & (\PC_in[10]~input_o\)) # (!\WideOr8~0_combout\ & ((T3(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_in[10]~input_o\,
	datac => T3(10),
	datad => \WideOr8~0_combout\,
	combout => \Selector111~0_combout\);

-- Location: LCCOMB_X27_Y33_N22
\mem_a_out[10]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mem_a_out[10]$latch~combout\ = (GLOBAL(\WideOr7~0clkctrl_outclk\) & (\Selector111~0_combout\)) # (!GLOBAL(\WideOr7~0clkctrl_outclk\) & ((\mem_a_out[10]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector111~0_combout\,
	datac => \mem_a_out[10]$latch~combout\,
	datad => \WideOr7~0clkctrl_outclk\,
	combout => \mem_a_out[10]$latch~combout\);

-- Location: IOIBUF_X69_Y0_N1
\PC_in[11]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_in(11),
	o => \PC_in[11]~input_o\);

-- Location: LCCOMB_X30_Y35_N28
\Selector35~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\state.s9~q\ & (\mem_d_in[11]~input_o\)) # (!\state.s9~q\ & ((\alu_c_in[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d_in[11]~input_o\,
	datac => \alu_c_in[11]~input_o\,
	datad => \state.s9~q\,
	combout => \Selector35~0_combout\);

-- Location: LCCOMB_X30_Y35_N22
\Selector35~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector35~1_combout\ = (\state.s20~q\ & (\Rf_D1_in[11]~input_o\)) # (!\state.s20~q\ & ((\state.s14~q\ & (\Rf_D1_in[11]~input_o\)) # (!\state.s14~q\ & ((\Selector35~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s20~q\,
	datab => \Rf_D1_in[11]~input_o\,
	datac => \state.s14~q\,
	datad => \Selector35~0_combout\,
	combout => \Selector35~1_combout\);

-- Location: LCCOMB_X30_Y35_N6
\T3[11]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T3(11) = (GLOBAL(\WideOr19~1clkctrl_outclk\) & (\Selector35~1_combout\)) # (!GLOBAL(\WideOr19~1clkctrl_outclk\) & ((T3(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr19~1clkctrl_outclk\,
	datac => \Selector35~1_combout\,
	datad => T3(11),
	combout => T3(11));

-- Location: LCCOMB_X30_Y35_N30
\Selector112~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector112~0_combout\ = (\WideOr8~0_combout\ & (\PC_in[11]~input_o\)) # (!\WideOr8~0_combout\ & ((T3(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in[11]~input_o\,
	datab => \WideOr8~0_combout\,
	datac => T3(11),
	combout => \Selector112~0_combout\);

-- Location: LCCOMB_X30_Y35_N26
\mem_a_out[11]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mem_a_out[11]$latch~combout\ = (GLOBAL(\WideOr7~0clkctrl_outclk\) & ((\Selector112~0_combout\))) # (!GLOBAL(\WideOr7~0clkctrl_outclk\) & (\mem_a_out[11]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a_out[11]$latch~combout\,
	datac => \Selector112~0_combout\,
	datad => \WideOr7~0clkctrl_outclk\,
	combout => \mem_a_out[11]$latch~combout\);

-- Location: IOIBUF_X0_Y10_N15
\PC_in[12]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_in(12),
	o => \PC_in[12]~input_o\);

-- Location: LCCOMB_X28_Y35_N24
\Selector36~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\state.s9~q\ & ((\mem_d_in[12]~input_o\))) # (!\state.s9~q\ & (\alu_c_in[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_c_in[12]~input_o\,
	datab => \state.s9~q\,
	datac => \mem_d_in[12]~input_o\,
	combout => \Selector36~0_combout\);

-- Location: LCCOMB_X28_Y35_N28
\Selector36~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector36~1_combout\ = (\state.s14~q\ & (\Rf_D1_in[12]~input_o\)) # (!\state.s14~q\ & ((\state.s20~q\ & (\Rf_D1_in[12]~input_o\)) # (!\state.s20~q\ & ((\Selector36~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D1_in[12]~input_o\,
	datab => \state.s14~q\,
	datac => \state.s20~q\,
	datad => \Selector36~0_combout\,
	combout => \Selector36~1_combout\);

-- Location: LCCOMB_X28_Y35_N22
\T3[12]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T3(12) = (GLOBAL(\WideOr19~1clkctrl_outclk\) & (\Selector36~1_combout\)) # (!GLOBAL(\WideOr19~1clkctrl_outclk\) & ((T3(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector36~1_combout\,
	datac => T3(12),
	datad => \WideOr19~1clkctrl_outclk\,
	combout => T3(12));

-- Location: LCCOMB_X29_Y33_N4
\Selector113~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector113~0_combout\ = (\WideOr8~0_combout\ & (\PC_in[12]~input_o\)) # (!\WideOr8~0_combout\ & ((T3(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in[12]~input_o\,
	datab => \WideOr8~0_combout\,
	datad => T3(12),
	combout => \Selector113~0_combout\);

-- Location: LCCOMB_X29_Y33_N28
\mem_a_out[12]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mem_a_out[12]$latch~combout\ = (GLOBAL(\WideOr7~0clkctrl_outclk\) & ((\Selector113~0_combout\))) # (!GLOBAL(\WideOr7~0clkctrl_outclk\) & (\mem_a_out[12]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_a_out[12]$latch~combout\,
	datac => \Selector113~0_combout\,
	datad => \WideOr7~0clkctrl_outclk\,
	combout => \mem_a_out[12]$latch~combout\);

-- Location: IOIBUF_X60_Y0_N1
\PC_in[13]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_in(13),
	o => \PC_in[13]~input_o\);

-- Location: LCCOMB_X32_Y36_N10
\Selector37~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\state.s9~q\ & (\mem_d_in[13]~input_o\)) # (!\state.s9~q\ & ((\alu_c_in[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d_in[13]~input_o\,
	datac => \state.s9~q\,
	datad => \alu_c_in[13]~input_o\,
	combout => \Selector37~0_combout\);

-- Location: LCCOMB_X32_Y36_N16
\Selector37~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector37~1_combout\ = (\state.s20~q\ & (\Rf_D1_in[13]~input_o\)) # (!\state.s20~q\ & ((\state.s14~q\ & (\Rf_D1_in[13]~input_o\)) # (!\state.s14~q\ & ((\Selector37~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D1_in[13]~input_o\,
	datab => \state.s20~q\,
	datac => \state.s14~q\,
	datad => \Selector37~0_combout\,
	combout => \Selector37~1_combout\);

-- Location: LCCOMB_X32_Y36_N0
\T3[13]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T3(13) = (GLOBAL(\WideOr19~1clkctrl_outclk\) & (\Selector37~1_combout\)) # (!GLOBAL(\WideOr19~1clkctrl_outclk\) & ((T3(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~1_combout\,
	datab => T3(13),
	datac => \WideOr19~1clkctrl_outclk\,
	combout => T3(13));

-- Location: LCCOMB_X32_Y36_N4
\Selector114~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector114~0_combout\ = (\WideOr8~0_combout\ & (\PC_in[13]~input_o\)) # (!\WideOr8~0_combout\ & ((T3(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_in[13]~input_o\,
	datac => T3(13),
	datad => \WideOr8~0_combout\,
	combout => \Selector114~0_combout\);

-- Location: LCCOMB_X32_Y36_N12
\mem_a_out[13]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mem_a_out[13]$latch~combout\ = (GLOBAL(\WideOr7~0clkctrl_outclk\) & ((\Selector114~0_combout\))) # (!GLOBAL(\WideOr7~0clkctrl_outclk\) & (\mem_a_out[13]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a_out[13]$latch~combout\,
	datac => \Selector114~0_combout\,
	datad => \WideOr7~0clkctrl_outclk\,
	combout => \mem_a_out[13]$latch~combout\);

-- Location: IOIBUF_X69_Y73_N1
\PC_in[14]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_in(14),
	o => \PC_in[14]~input_o\);

-- Location: LCCOMB_X31_Y33_N24
\Selector38~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\state.s9~q\ & ((\mem_d_in[14]~input_o\))) # (!\state.s9~q\ & (\alu_c_in[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_c_in[14]~input_o\,
	datac => \mem_d_in[14]~input_o\,
	datad => \state.s9~q\,
	combout => \Selector38~0_combout\);

-- Location: LCCOMB_X32_Y36_N2
\Selector38~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector38~1_combout\ = (\state.s20~q\ & (\Rf_D1_in[14]~input_o\)) # (!\state.s20~q\ & ((\state.s14~q\ & (\Rf_D1_in[14]~input_o\)) # (!\state.s14~q\ & ((\Selector38~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D1_in[14]~input_o\,
	datab => \state.s20~q\,
	datac => \state.s14~q\,
	datad => \Selector38~0_combout\,
	combout => \Selector38~1_combout\);

-- Location: LCCOMB_X32_Y36_N14
\T3[14]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T3(14) = (GLOBAL(\WideOr19~1clkctrl_outclk\) & ((\Selector38~1_combout\))) # (!GLOBAL(\WideOr19~1clkctrl_outclk\) & (T3(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T3(14),
	datac => \WideOr19~1clkctrl_outclk\,
	datad => \Selector38~1_combout\,
	combout => T3(14));

-- Location: LCCOMB_X32_Y36_N22
\Selector115~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector115~0_combout\ = (\WideOr8~0_combout\ & (\PC_in[14]~input_o\)) # (!\WideOr8~0_combout\ & ((T3(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_in[14]~input_o\,
	datac => T3(14),
	datad => \WideOr8~0_combout\,
	combout => \Selector115~0_combout\);

-- Location: LCCOMB_X32_Y36_N30
\mem_a_out[14]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mem_a_out[14]$latch~combout\ = (GLOBAL(\WideOr7~0clkctrl_outclk\) & ((\Selector115~0_combout\))) # (!GLOBAL(\WideOr7~0clkctrl_outclk\) & (\mem_a_out[14]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a_out[14]$latch~combout\,
	datac => \Selector115~0_combout\,
	datad => \WideOr7~0clkctrl_outclk\,
	combout => \mem_a_out[14]$latch~combout\);

-- Location: IOIBUF_X5_Y0_N8
\PC_in[15]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_in(15),
	o => \PC_in[15]~input_o\);

-- Location: LCCOMB_X28_Y34_N6
\Selector39~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\state.s9~q\ & ((\mem_d_in[15]~input_o\))) # (!\state.s9~q\ & (\alu_c_in[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_c_in[15]~input_o\,
	datab => \mem_d_in[15]~input_o\,
	datad => \state.s9~q\,
	combout => \Selector39~0_combout\);

-- Location: LCCOMB_X28_Y34_N20
\Selector39~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector39~1_combout\ = (\state.s20~q\ & (\Rf_D1_in[15]~input_o\)) # (!\state.s20~q\ & ((\state.s14~q\ & (\Rf_D1_in[15]~input_o\)) # (!\state.s14~q\ & ((\Selector39~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D1_in[15]~input_o\,
	datab => \state.s20~q\,
	datac => \state.s14~q\,
	datad => \Selector39~0_combout\,
	combout => \Selector39~1_combout\);

-- Location: LCCOMB_X28_Y34_N26
\T3[15]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T3(15) = (GLOBAL(\WideOr19~1clkctrl_outclk\) & ((\Selector39~1_combout\))) # (!GLOBAL(\WideOr19~1clkctrl_outclk\) & (T3(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T3(15),
	datac => \Selector39~1_combout\,
	datad => \WideOr19~1clkctrl_outclk\,
	combout => T3(15));

-- Location: LCCOMB_X29_Y33_N2
\Selector116~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector116~0_combout\ = (\WideOr8~0_combout\ & (\PC_in[15]~input_o\)) # (!\WideOr8~0_combout\ & ((T3(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in[15]~input_o\,
	datab => \WideOr8~0_combout\,
	datac => T3(15),
	combout => \Selector116~0_combout\);

-- Location: LCCOMB_X29_Y33_N18
\mem_a_out[15]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mem_a_out[15]$latch~combout\ = (GLOBAL(\WideOr7~0clkctrl_outclk\) & ((\Selector116~0_combout\))) # (!GLOBAL(\WideOr7~0clkctrl_outclk\) & (\mem_a_out[15]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_a_out[15]$latch~combout\,
	datac => \Selector116~0_combout\,
	datad => \WideOr7~0clkctrl_outclk\,
	combout => \mem_a_out[15]$latch~combout\);

-- Location: CLKCTRL_G19
\state.s11~clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \state.s11~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \state.s11~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y63_N15
\LS_out_in[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LS_out_in(0),
	o => \LS_out_in[0]~input_o\);

-- Location: LCCOMB_X29_Y38_N6
\WideOr18~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \WideOr18~0_combout\ = (!\state.s10~q\ & (!\state.s5~q\ & !\state.s4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s10~q\,
	datac => \state.s5~q\,
	datad => \state.s4~q\,
	combout => \WideOr18~0_combout\);

-- Location: IOIBUF_X0_Y66_N15
\Rf_D2_in[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rf_D2_in(0),
	o => \Rf_D2_in[0]~input_o\);

-- Location: LCCOMB_X30_Y39_N24
\Selector40~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector40~2_combout\ = (\state.s12~q\) # ((\WideOr18~0_combout\ & ((\Rf_D2_in[0]~input_o\))) # (!\WideOr18~0_combout\ & (\Rf_D1_in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D1_in[0]~input_o\,
	datab => \WideOr18~0_combout\,
	datac => \Rf_D2_in[0]~input_o\,
	datad => \state.s12~q\,
	combout => \Selector40~2_combout\);

-- Location: LCCOMB_X30_Y39_N22
\Selector40~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector40~3_combout\ = (\state.s19~q\ & (\LS_out_in[0]~input_o\)) # (!\state.s19~q\ & ((\state.s16~q\ & (\LS_out_in[0]~input_o\)) # (!\state.s16~q\ & ((\Selector40~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LS_out_in[0]~input_o\,
	datab => \state.s19~q\,
	datac => \Selector40~2_combout\,
	datad => \state.s16~q\,
	combout => \Selector40~3_combout\);

-- Location: LCCOMB_X29_Y35_N8
\LS_in_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LS_in_out~0_combout\ = (!\state.s16~q\ & !\state.s19~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s16~q\,
	datad => \state.s19~q\,
	combout => \LS_in_out~0_combout\);

-- Location: LCCOMB_X29_Y38_N2
\WideOr17~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \WideOr17~0_combout\ = (((\state.s12~q\) # (!\state.s1~q\)) # (!\LS_in_out~0_combout\)) # (!\WideOr18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr18~0_combout\,
	datab => \LS_in_out~0_combout\,
	datac => \state.s12~q\,
	datad => \state.s1~q\,
	combout => \WideOr17~0_combout\);

-- Location: CLKCTRL_G11
\WideOr17~0clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WideOr17~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WideOr17~0clkctrl_outclk\);

-- Location: LCCOMB_X30_Y39_N20
\T2[0]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T2(0) = (GLOBAL(\WideOr17~0clkctrl_outclk\) & ((\Selector40~3_combout\))) # (!GLOBAL(\WideOr17~0clkctrl_outclk\) & (T2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => T2(0),
	datac => \Selector40~3_combout\,
	datad => \WideOr17~0clkctrl_outclk\,
	combout => T2(0));

-- Location: LCCOMB_X30_Y39_N28
\mem_d_out[0]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mem_d_out[0]$latch~combout\ = (GLOBAL(\state.s11~clkctrl_outclk\) & ((T2(0)))) # (!GLOBAL(\state.s11~clkctrl_outclk\) & (\mem_d_out[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d_out[0]$latch~combout\,
	datac => \state.s11~clkctrl_outclk\,
	datad => T2(0),
	combout => \mem_d_out[0]$latch~combout\);

-- Location: IOIBUF_X25_Y73_N22
\LS_out_in[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LS_out_in(1),
	o => \LS_out_in[1]~input_o\);

-- Location: IOIBUF_X0_Y45_N22
\Rf_D2_in[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rf_D2_in(1),
	o => \Rf_D2_in[1]~input_o\);

-- Location: LCCOMB_X25_Y39_N28
\Selector42~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\WideOr18~0_combout\ & ((\Rf_D2_in[1]~input_o\))) # (!\WideOr18~0_combout\ & (\Rf_D1_in[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D1_in[1]~input_o\,
	datab => \Rf_D2_in[1]~input_o\,
	datac => \WideOr18~0_combout\,
	combout => \Selector42~0_combout\);

-- Location: LCCOMB_X25_Y39_N10
\Selector42~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector42~1_combout\ = (\LS_in_out~0_combout\ & (!\state.s12~q\ & ((\Selector42~0_combout\)))) # (!\LS_in_out~0_combout\ & (((\LS_out_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s12~q\,
	datab => \LS_out_in[1]~input_o\,
	datac => \Selector42~0_combout\,
	datad => \LS_in_out~0_combout\,
	combout => \Selector42~1_combout\);

-- Location: LCCOMB_X25_Y39_N20
\T2[1]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T2(1) = (GLOBAL(\WideOr17~0clkctrl_outclk\) & (\Selector42~1_combout\)) # (!GLOBAL(\WideOr17~0clkctrl_outclk\) & ((T2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector42~1_combout\,
	datab => T2(1),
	datad => \WideOr17~0clkctrl_outclk\,
	combout => T2(1));

-- Location: LCCOMB_X25_Y39_N8
\mem_d_out[1]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mem_d_out[1]$latch~combout\ = (GLOBAL(\state.s11~clkctrl_outclk\) & ((T2(1)))) # (!GLOBAL(\state.s11~clkctrl_outclk\) & (\mem_d_out[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d_out[1]$latch~combout\,
	datac => \state.s11~clkctrl_outclk\,
	datad => T2(1),
	combout => \mem_d_out[1]$latch~combout\);

-- Location: IOIBUF_X60_Y73_N8
\LS_out_in[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LS_out_in(2),
	o => \LS_out_in[2]~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\Rf_D2_in[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rf_D2_in(2),
	o => \Rf_D2_in[2]~input_o\);

-- Location: LCCOMB_X29_Y38_N14
\Selector43~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\WideOr18~0_combout\ & ((\Rf_D2_in[2]~input_o\))) # (!\WideOr18~0_combout\ & (\Rf_D1_in[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D1_in[2]~input_o\,
	datab => \Rf_D2_in[2]~input_o\,
	datad => \WideOr18~0_combout\,
	combout => \Selector43~0_combout\);

-- Location: LCCOMB_X32_Y38_N8
\Selector43~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector43~1_combout\ = (\LS_in_out~0_combout\ & (((!\state.s12~q\ & \Selector43~0_combout\)))) # (!\LS_in_out~0_combout\ & (\LS_out_in[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LS_out_in[2]~input_o\,
	datab => \state.s12~q\,
	datac => \LS_in_out~0_combout\,
	datad => \Selector43~0_combout\,
	combout => \Selector43~1_combout\);

-- Location: LCCOMB_X32_Y38_N24
\T2[2]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T2(2) = (GLOBAL(\WideOr17~0clkctrl_outclk\) & ((\Selector43~1_combout\))) # (!GLOBAL(\WideOr17~0clkctrl_outclk\) & (T2(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => T2(2),
	datac => \Selector43~1_combout\,
	datad => \WideOr17~0clkctrl_outclk\,
	combout => T2(2));

-- Location: LCCOMB_X32_Y38_N4
\mem_d_out[2]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mem_d_out[2]$latch~combout\ = (GLOBAL(\state.s11~clkctrl_outclk\) & ((T2(2)))) # (!GLOBAL(\state.s11~clkctrl_outclk\) & (\mem_d_out[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d_out[2]$latch~combout\,
	datac => \state.s11~clkctrl_outclk\,
	datad => T2(2),
	combout => \mem_d_out[2]$latch~combout\);

-- Location: IOIBUF_X0_Y13_N1
\LS_out_in[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LS_out_in(3),
	o => \LS_out_in[3]~input_o\);

-- Location: IOIBUF_X5_Y73_N8
\Rf_D2_in[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rf_D2_in(3),
	o => \Rf_D2_in[3]~input_o\);

-- Location: LCCOMB_X28_Y37_N0
\Selector44~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\WideOr18~0_combout\ & ((\Rf_D2_in[3]~input_o\))) # (!\WideOr18~0_combout\ & (\Rf_D1_in[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D1_in[3]~input_o\,
	datab => \Rf_D2_in[3]~input_o\,
	datad => \WideOr18~0_combout\,
	combout => \Selector44~0_combout\);

-- Location: LCCOMB_X28_Y37_N26
\Selector44~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector44~1_combout\ = (\LS_in_out~0_combout\ & (((!\state.s12~q\ & \Selector44~0_combout\)))) # (!\LS_in_out~0_combout\ & (\LS_out_in[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LS_out_in[3]~input_o\,
	datab => \state.s12~q\,
	datac => \Selector44~0_combout\,
	datad => \LS_in_out~0_combout\,
	combout => \Selector44~1_combout\);

-- Location: LCCOMB_X28_Y37_N12
\T2[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T2(3) = (GLOBAL(\WideOr17~0clkctrl_outclk\) & ((\Selector44~1_combout\))) # (!GLOBAL(\WideOr17~0clkctrl_outclk\) & (T2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T2(3),
	datac => \WideOr17~0clkctrl_outclk\,
	datad => \Selector44~1_combout\,
	combout => T2(3));

-- Location: LCCOMB_X28_Y37_N8
\mem_d_out[3]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mem_d_out[3]$latch~combout\ = (GLOBAL(\state.s11~clkctrl_outclk\) & ((T2(3)))) # (!GLOBAL(\state.s11~clkctrl_outclk\) & (\mem_d_out[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d_out[3]$latch~combout\,
	datac => \state.s11~clkctrl_outclk\,
	datad => T2(3),
	combout => \mem_d_out[3]$latch~combout\);

-- Location: IOIBUF_X11_Y73_N15
\LS_out_in[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LS_out_in(4),
	o => \LS_out_in[4]~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\Rf_D2_in[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rf_D2_in(4),
	o => \Rf_D2_in[4]~input_o\);

-- Location: LCCOMB_X27_Y38_N24
\Selector45~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\WideOr18~0_combout\ & ((\Rf_D2_in[4]~input_o\))) # (!\WideOr18~0_combout\ & (\Rf_D1_in[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr18~0_combout\,
	datac => \Rf_D1_in[4]~input_o\,
	datad => \Rf_D2_in[4]~input_o\,
	combout => \Selector45~0_combout\);

-- Location: LCCOMB_X27_Y38_N14
\Selector45~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector45~1_combout\ = (\LS_in_out~0_combout\ & (((!\state.s12~q\ & \Selector45~0_combout\)))) # (!\LS_in_out~0_combout\ & (\LS_out_in[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LS_out_in[4]~input_o\,
	datab => \state.s12~q\,
	datac => \LS_in_out~0_combout\,
	datad => \Selector45~0_combout\,
	combout => \Selector45~1_combout\);

-- Location: LCCOMB_X27_Y38_N16
\T2[4]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T2(4) = (GLOBAL(\WideOr17~0clkctrl_outclk\) & ((\Selector45~1_combout\))) # (!GLOBAL(\WideOr17~0clkctrl_outclk\) & (T2(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => T2(4),
	datac => \WideOr17~0clkctrl_outclk\,
	datad => \Selector45~1_combout\,
	combout => T2(4));

-- Location: LCCOMB_X27_Y38_N8
\mem_d_out[4]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mem_d_out[4]$latch~combout\ = (GLOBAL(\state.s11~clkctrl_outclk\) & ((T2(4)))) # (!GLOBAL(\state.s11~clkctrl_outclk\) & (\mem_d_out[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d_out[4]$latch~combout\,
	datac => \state.s11~clkctrl_outclk\,
	datad => T2(4),
	combout => \mem_d_out[4]$latch~combout\);

-- Location: IOIBUF_X52_Y73_N1
\Rf_D2_in[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rf_D2_in(5),
	o => \Rf_D2_in[5]~input_o\);

-- Location: LCCOMB_X30_Y39_N2
\Selector46~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (\WideOr18~0_combout\ & (\Rf_D2_in[5]~input_o\)) # (!\WideOr18~0_combout\ & ((\Rf_D1_in[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D2_in[5]~input_o\,
	datac => \Rf_D1_in[5]~input_o\,
	datad => \WideOr18~0_combout\,
	combout => \Selector46~0_combout\);

-- Location: IOIBUF_X31_Y73_N8
\LS_out_in[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LS_out_in(5),
	o => \LS_out_in[5]~input_o\);

-- Location: LCCOMB_X30_Y39_N12
\Selector46~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector46~1_combout\ = (\LS_in_out~0_combout\ & (\Selector46~0_combout\ & ((!\state.s12~q\)))) # (!\LS_in_out~0_combout\ & (((\LS_out_in[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector46~0_combout\,
	datab => \LS_out_in[5]~input_o\,
	datac => \state.s12~q\,
	datad => \LS_in_out~0_combout\,
	combout => \Selector46~1_combout\);

-- Location: LCCOMB_X30_Y39_N18
\T2[5]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T2(5) = (GLOBAL(\WideOr17~0clkctrl_outclk\) & ((\Selector46~1_combout\))) # (!GLOBAL(\WideOr17~0clkctrl_outclk\) & (T2(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => T2(5),
	datac => \Selector46~1_combout\,
	datad => \WideOr17~0clkctrl_outclk\,
	combout => T2(5));

-- Location: LCCOMB_X30_Y39_N6
\mem_d_out[5]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mem_d_out[5]$latch~combout\ = (GLOBAL(\state.s11~clkctrl_outclk\) & ((T2(5)))) # (!GLOBAL(\state.s11~clkctrl_outclk\) & (\mem_d_out[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d_out[5]$latch~combout\,
	datac => \state.s11~clkctrl_outclk\,
	datad => T2(5),
	combout => \mem_d_out[5]$latch~combout\);

-- Location: IOIBUF_X54_Y73_N1
\Rf_D2_in[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rf_D2_in(6),
	o => \Rf_D2_in[6]~input_o\);

-- Location: LCCOMB_X30_Y38_N18
\Selector47~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\WideOr18~0_combout\ & (\Rf_D2_in[6]~input_o\)) # (!\WideOr18~0_combout\ & ((\Rf_D1_in[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr18~0_combout\,
	datab => \Rf_D2_in[6]~input_o\,
	datac => \Rf_D1_in[6]~input_o\,
	combout => \Selector47~0_combout\);

-- Location: IOIBUF_X7_Y73_N15
\LS_out_in[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LS_out_in(6),
	o => \LS_out_in[6]~input_o\);

-- Location: LCCOMB_X30_Y38_N12
\Selector47~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector47~1_combout\ = (\LS_in_out~0_combout\ & (\Selector47~0_combout\ & (!\state.s12~q\))) # (!\LS_in_out~0_combout\ & (((\LS_out_in[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector47~0_combout\,
	datab => \state.s12~q\,
	datac => \LS_out_in[6]~input_o\,
	datad => \LS_in_out~0_combout\,
	combout => \Selector47~1_combout\);

-- Location: LCCOMB_X30_Y38_N2
\T2[6]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T2(6) = (GLOBAL(\WideOr17~0clkctrl_outclk\) & (\Selector47~1_combout\)) # (!GLOBAL(\WideOr17~0clkctrl_outclk\) & ((T2(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector47~1_combout\,
	datac => T2(6),
	datad => \WideOr17~0clkctrl_outclk\,
	combout => T2(6));

-- Location: LCCOMB_X30_Y38_N22
\mem_d_out[6]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mem_d_out[6]$latch~combout\ = (GLOBAL(\state.s11~clkctrl_outclk\) & ((T2(6)))) # (!GLOBAL(\state.s11~clkctrl_outclk\) & (\mem_d_out[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d_out[6]$latch~combout\,
	datac => \state.s11~clkctrl_outclk\,
	datad => T2(6),
	combout => \mem_d_out[6]$latch~combout\);

-- Location: IOIBUF_X18_Y73_N15
\LS_out_in[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LS_out_in(7),
	o => \LS_out_in[7]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\Rf_D2_in[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rf_D2_in(7),
	o => \Rf_D2_in[7]~input_o\);

-- Location: LCCOMB_X25_Y39_N0
\Selector48~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (\WideOr18~0_combout\ & ((\Rf_D2_in[7]~input_o\))) # (!\WideOr18~0_combout\ & (\Rf_D1_in[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Rf_D1_in[7]~input_o\,
	datac => \Rf_D2_in[7]~input_o\,
	datad => \WideOr18~0_combout\,
	combout => \Selector48~0_combout\);

-- Location: LCCOMB_X25_Y39_N2
\Selector48~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector48~1_combout\ = (\LS_in_out~0_combout\ & (!\state.s12~q\ & ((\Selector48~0_combout\)))) # (!\LS_in_out~0_combout\ & (((\LS_out_in[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s12~q\,
	datab => \LS_out_in[7]~input_o\,
	datac => \Selector48~0_combout\,
	datad => \LS_in_out~0_combout\,
	combout => \Selector48~1_combout\);

-- Location: LCCOMB_X25_Y39_N6
\T2[7]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T2(7) = (GLOBAL(\WideOr17~0clkctrl_outclk\) & ((\Selector48~1_combout\))) # (!GLOBAL(\WideOr17~0clkctrl_outclk\) & (T2(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T2(7),
	datac => \Selector48~1_combout\,
	datad => \WideOr17~0clkctrl_outclk\,
	combout => T2(7));

-- Location: LCCOMB_X25_Y39_N22
\mem_d_out[7]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mem_d_out[7]$latch~combout\ = (GLOBAL(\state.s11~clkctrl_outclk\) & ((T2(7)))) # (!GLOBAL(\state.s11~clkctrl_outclk\) & (\mem_d_out[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d_out[7]$latch~combout\,
	datac => \state.s11~clkctrl_outclk\,
	datad => T2(7),
	combout => \mem_d_out[7]$latch~combout\);

-- Location: IOIBUF_X40_Y73_N1
\LS_out_in[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LS_out_in(8),
	o => \LS_out_in[8]~input_o\);

-- Location: IOIBUF_X33_Y73_N1
\Rf_D2_in[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rf_D2_in(8),
	o => \Rf_D2_in[8]~input_o\);

-- Location: LCCOMB_X30_Y38_N14
\Selector49~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\WideOr18~0_combout\ & (\Rf_D2_in[8]~input_o\)) # (!\WideOr18~0_combout\ & ((\Rf_D1_in[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr18~0_combout\,
	datac => \Rf_D2_in[8]~input_o\,
	datad => \Rf_D1_in[8]~input_o\,
	combout => \Selector49~0_combout\);

-- Location: LCCOMB_X32_Y38_N14
\Selector49~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector49~1_combout\ = (\LS_in_out~0_combout\ & (((!\state.s12~q\ & \Selector49~0_combout\)))) # (!\LS_in_out~0_combout\ & (\LS_out_in[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LS_out_in[8]~input_o\,
	datab => \state.s12~q\,
	datac => \LS_in_out~0_combout\,
	datad => \Selector49~0_combout\,
	combout => \Selector49~1_combout\);

-- Location: LCCOMB_X32_Y38_N18
\T2[8]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T2(8) = (GLOBAL(\WideOr17~0clkctrl_outclk\) & ((\Selector49~1_combout\))) # (!GLOBAL(\WideOr17~0clkctrl_outclk\) & (T2(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => T2(8),
	datac => \Selector49~1_combout\,
	datad => \WideOr17~0clkctrl_outclk\,
	combout => T2(8));

-- Location: LCCOMB_X32_Y38_N22
\mem_d_out[8]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mem_d_out[8]$latch~combout\ = (GLOBAL(\state.s11~clkctrl_outclk\) & ((T2(8)))) # (!GLOBAL(\state.s11~clkctrl_outclk\) & (\mem_d_out[8]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d_out[8]$latch~combout\,
	datac => \state.s11~clkctrl_outclk\,
	datad => T2(8),
	combout => \mem_d_out[8]$latch~combout\);

-- Location: IOIBUF_X1_Y73_N15
\LS_out_in[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LS_out_in(9),
	o => \LS_out_in[9]~input_o\);

-- Location: IOIBUF_X72_Y0_N8
\Rf_D2_in[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rf_D2_in(9),
	o => \Rf_D2_in[9]~input_o\);

-- Location: LCCOMB_X28_Y39_N8
\Selector50~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (\WideOr18~0_combout\ & ((\Rf_D2_in[9]~input_o\))) # (!\WideOr18~0_combout\ & (\Rf_D1_in[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D1_in[9]~input_o\,
	datab => \Rf_D2_in[9]~input_o\,
	datad => \WideOr18~0_combout\,
	combout => \Selector50~0_combout\);

-- Location: LCCOMB_X28_Y39_N12
\Selector50~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector50~1_combout\ = (\LS_in_out~0_combout\ & (!\state.s12~q\ & ((\Selector50~0_combout\)))) # (!\LS_in_out~0_combout\ & (((\LS_out_in[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s12~q\,
	datab => \LS_out_in[9]~input_o\,
	datac => \Selector50~0_combout\,
	datad => \LS_in_out~0_combout\,
	combout => \Selector50~1_combout\);

-- Location: LCCOMB_X28_Y39_N16
\T2[9]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T2(9) = (GLOBAL(\WideOr17~0clkctrl_outclk\) & ((\Selector50~1_combout\))) # (!GLOBAL(\WideOr17~0clkctrl_outclk\) & (T2(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => T2(9),
	datac => \WideOr17~0clkctrl_outclk\,
	datad => \Selector50~1_combout\,
	combout => T2(9));

-- Location: LCCOMB_X28_Y39_N10
\mem_d_out[9]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mem_d_out[9]$latch~combout\ = (GLOBAL(\state.s11~clkctrl_outclk\) & ((T2(9)))) # (!GLOBAL(\state.s11~clkctrl_outclk\) & (\mem_d_out[9]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d_out[9]$latch~combout\,
	datac => \state.s11~clkctrl_outclk\,
	datad => T2(9),
	combout => \mem_d_out[9]$latch~combout\);

-- Location: IOIBUF_X27_Y73_N15
\LS_out_in[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LS_out_in(10),
	o => \LS_out_in[10]~input_o\);

-- Location: IOIBUF_X0_Y9_N15
\Rf_D2_in[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rf_D2_in(10),
	o => \Rf_D2_in[10]~input_o\);

-- Location: LCCOMB_X27_Y38_N12
\Selector51~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (\WideOr18~0_combout\ & (\Rf_D2_in[10]~input_o\)) # (!\WideOr18~0_combout\ & ((\Rf_D1_in[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr18~0_combout\,
	datac => \Rf_D2_in[10]~input_o\,
	datad => \Rf_D1_in[10]~input_o\,
	combout => \Selector51~0_combout\);

-- Location: LCCOMB_X27_Y38_N22
\Selector51~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector51~1_combout\ = (\LS_in_out~0_combout\ & (((!\state.s12~q\ & \Selector51~0_combout\)))) # (!\LS_in_out~0_combout\ & (\LS_out_in[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LS_out_in[10]~input_o\,
	datab => \state.s12~q\,
	datac => \LS_in_out~0_combout\,
	datad => \Selector51~0_combout\,
	combout => \Selector51~1_combout\);

-- Location: LCCOMB_X27_Y38_N6
\T2[10]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T2(10) = (GLOBAL(\WideOr17~0clkctrl_outclk\) & ((\Selector51~1_combout\))) # (!GLOBAL(\WideOr17~0clkctrl_outclk\) & (T2(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T2(10),
	datac => \Selector51~1_combout\,
	datad => \WideOr17~0clkctrl_outclk\,
	combout => T2(10));

-- Location: LCCOMB_X27_Y38_N30
\mem_d_out[10]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mem_d_out[10]$latch~combout\ = (GLOBAL(\state.s11~clkctrl_outclk\) & ((T2(10)))) # (!GLOBAL(\state.s11~clkctrl_outclk\) & (\mem_d_out[10]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d_out[10]$latch~combout\,
	datac => \state.s11~clkctrl_outclk\,
	datad => T2(10),
	combout => \mem_d_out[10]$latch~combout\);

-- Location: IOIBUF_X65_Y0_N1
\Rf_D2_in[11]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rf_D2_in(11),
	o => \Rf_D2_in[11]~input_o\);

-- Location: LCCOMB_X30_Y37_N28
\Selector52~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (\WideOr18~0_combout\ & (\Rf_D2_in[11]~input_o\)) # (!\WideOr18~0_combout\ & ((\Rf_D1_in[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D2_in[11]~input_o\,
	datab => \Rf_D1_in[11]~input_o\,
	datad => \WideOr18~0_combout\,
	combout => \Selector52~0_combout\);

-- Location: IOIBUF_X81_Y73_N1
\LS_out_in[11]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LS_out_in(11),
	o => \LS_out_in[11]~input_o\);

-- Location: LCCOMB_X30_Y37_N22
\Selector52~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector52~1_combout\ = (\LS_in_out~0_combout\ & (!\state.s12~q\ & (\Selector52~0_combout\))) # (!\LS_in_out~0_combout\ & (((\LS_out_in[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s12~q\,
	datab => \Selector52~0_combout\,
	datac => \LS_out_in[11]~input_o\,
	datad => \LS_in_out~0_combout\,
	combout => \Selector52~1_combout\);

-- Location: LCCOMB_X30_Y37_N20
\T2[11]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T2(11) = (GLOBAL(\WideOr17~0clkctrl_outclk\) & (\Selector52~1_combout\)) # (!GLOBAL(\WideOr17~0clkctrl_outclk\) & ((T2(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector52~1_combout\,
	datab => T2(11),
	datad => \WideOr17~0clkctrl_outclk\,
	combout => T2(11));

-- Location: LCCOMB_X30_Y37_N4
\mem_d_out[11]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mem_d_out[11]$latch~combout\ = (GLOBAL(\state.s11~clkctrl_outclk\) & ((T2(11)))) # (!GLOBAL(\state.s11~clkctrl_outclk\) & (\mem_d_out[11]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d_out[11]$latch~combout\,
	datac => \state.s11~clkctrl_outclk\,
	datad => T2(11),
	combout => \mem_d_out[11]$latch~combout\);

-- Location: IOIBUF_X0_Y47_N22
\LS_out_in[12]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LS_out_in(12),
	o => \LS_out_in[12]~input_o\);

-- Location: IOIBUF_X0_Y55_N15
\Rf_D2_in[12]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rf_D2_in(12),
	o => \Rf_D2_in[12]~input_o\);

-- Location: LCCOMB_X28_Y39_N6
\Selector53~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (\WideOr18~0_combout\ & ((\Rf_D2_in[12]~input_o\))) # (!\WideOr18~0_combout\ & (\Rf_D1_in[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D1_in[12]~input_o\,
	datac => \Rf_D2_in[12]~input_o\,
	datad => \WideOr18~0_combout\,
	combout => \Selector53~0_combout\);

-- Location: LCCOMB_X28_Y39_N28
\Selector53~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector53~1_combout\ = (\LS_in_out~0_combout\ & (!\state.s12~q\ & ((\Selector53~0_combout\)))) # (!\LS_in_out~0_combout\ & (((\LS_out_in[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s12~q\,
	datab => \LS_out_in[12]~input_o\,
	datac => \Selector53~0_combout\,
	datad => \LS_in_out~0_combout\,
	combout => \Selector53~1_combout\);

-- Location: LCCOMB_X28_Y39_N2
\T2[12]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T2(12) = (GLOBAL(\WideOr17~0clkctrl_outclk\) & ((\Selector53~1_combout\))) # (!GLOBAL(\WideOr17~0clkctrl_outclk\) & (T2(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => T2(12),
	datac => \Selector53~1_combout\,
	datad => \WideOr17~0clkctrl_outclk\,
	combout => T2(12));

-- Location: LCCOMB_X28_Y39_N24
\mem_d_out[12]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mem_d_out[12]$latch~combout\ = (GLOBAL(\state.s11~clkctrl_outclk\) & ((T2(12)))) # (!GLOBAL(\state.s11~clkctrl_outclk\) & (\mem_d_out[12]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d_out[12]$latch~combout\,
	datac => \state.s11~clkctrl_outclk\,
	datad => T2(12),
	combout => \mem_d_out[12]$latch~combout\);

-- Location: IOIBUF_X49_Y73_N15
\LS_out_in[13]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LS_out_in(13),
	o => \LS_out_in[13]~input_o\);

-- Location: IOIBUF_X0_Y66_N22
\Rf_D2_in[13]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rf_D2_in(13),
	o => \Rf_D2_in[13]~input_o\);

-- Location: LCCOMB_X30_Y37_N24
\Selector54~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = (\WideOr18~0_combout\ & (\Rf_D2_in[13]~input_o\)) # (!\WideOr18~0_combout\ & ((\Rf_D1_in[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D2_in[13]~input_o\,
	datab => \Rf_D1_in[13]~input_o\,
	datad => \WideOr18~0_combout\,
	combout => \Selector54~0_combout\);

-- Location: LCCOMB_X30_Y37_N10
\Selector54~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector54~1_combout\ = (\LS_in_out~0_combout\ & (!\state.s12~q\ & ((\Selector54~0_combout\)))) # (!\LS_in_out~0_combout\ & (((\LS_out_in[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s12~q\,
	datab => \LS_out_in[13]~input_o\,
	datac => \LS_in_out~0_combout\,
	datad => \Selector54~0_combout\,
	combout => \Selector54~1_combout\);

-- Location: LCCOMB_X30_Y37_N6
\T2[13]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T2(13) = (GLOBAL(\WideOr17~0clkctrl_outclk\) & ((\Selector54~1_combout\))) # (!GLOBAL(\WideOr17~0clkctrl_outclk\) & (T2(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T2(13),
	datac => \Selector54~1_combout\,
	datad => \WideOr17~0clkctrl_outclk\,
	combout => T2(13));

-- Location: LCCOMB_X30_Y37_N14
\mem_d_out[13]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mem_d_out[13]$latch~combout\ = (GLOBAL(\state.s11~clkctrl_outclk\) & ((T2(13)))) # (!GLOBAL(\state.s11~clkctrl_outclk\) & (\mem_d_out[13]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d_out[13]$latch~combout\,
	datac => \state.s11~clkctrl_outclk\,
	datad => T2(13),
	combout => \mem_d_out[13]$latch~combout\);

-- Location: IOIBUF_X83_Y73_N1
\LS_out_in[14]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LS_out_in(14),
	o => \LS_out_in[14]~input_o\);

-- Location: IOIBUF_X67_Y73_N1
\Rf_D2_in[14]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rf_D2_in(14),
	o => \Rf_D2_in[14]~input_o\);

-- Location: LCCOMB_X29_Y37_N10
\Selector55~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (\WideOr18~0_combout\ & (\Rf_D2_in[14]~input_o\)) # (!\WideOr18~0_combout\ & ((\Rf_D1_in[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Rf_D2_in[14]~input_o\,
	datac => \WideOr18~0_combout\,
	datad => \Rf_D1_in[14]~input_o\,
	combout => \Selector55~0_combout\);

-- Location: LCCOMB_X29_Y37_N24
\Selector55~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector55~1_combout\ = (\LS_in_out~0_combout\ & (!\state.s12~q\ & ((\Selector55~0_combout\)))) # (!\LS_in_out~0_combout\ & (((\LS_out_in[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s12~q\,
	datab => \LS_out_in[14]~input_o\,
	datac => \LS_in_out~0_combout\,
	datad => \Selector55~0_combout\,
	combout => \Selector55~1_combout\);

-- Location: LCCOMB_X29_Y37_N2
\T2[14]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T2(14) = (GLOBAL(\WideOr17~0clkctrl_outclk\) & ((\Selector55~1_combout\))) # (!GLOBAL(\WideOr17~0clkctrl_outclk\) & (T2(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => T2(14),
	datac => \WideOr17~0clkctrl_outclk\,
	datad => \Selector55~1_combout\,
	combout => T2(14));

-- Location: LCCOMB_X29_Y37_N30
\mem_d_out[14]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mem_d_out[14]$latch~combout\ = (GLOBAL(\state.s11~clkctrl_outclk\) & ((T2(14)))) # (!GLOBAL(\state.s11~clkctrl_outclk\) & (\mem_d_out[14]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d_out[14]$latch~combout\,
	datac => \state.s11~clkctrl_outclk\,
	datad => T2(14),
	combout => \mem_d_out[14]$latch~combout\);

-- Location: IOIBUF_X23_Y73_N22
\LS_out_in[15]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LS_out_in(15),
	o => \LS_out_in[15]~input_o\);

-- Location: IOIBUF_X69_Y0_N8
\Rf_D2_in[15]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rf_D2_in(15),
	o => \Rf_D2_in[15]~input_o\);

-- Location: LCCOMB_X26_Y39_N4
\Selector56~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (\WideOr18~0_combout\ & ((\Rf_D2_in[15]~input_o\))) # (!\WideOr18~0_combout\ & (\Rf_D1_in[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Rf_D1_in[15]~input_o\,
	datac => \Rf_D2_in[15]~input_o\,
	datad => \WideOr18~0_combout\,
	combout => \Selector56~0_combout\);

-- Location: LCCOMB_X26_Y39_N10
\Selector56~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector56~1_combout\ = (\LS_in_out~0_combout\ & (((!\state.s12~q\ & \Selector56~0_combout\)))) # (!\LS_in_out~0_combout\ & (\LS_out_in[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LS_out_in[15]~input_o\,
	datab => \state.s12~q\,
	datac => \Selector56~0_combout\,
	datad => \LS_in_out~0_combout\,
	combout => \Selector56~1_combout\);

-- Location: LCCOMB_X26_Y39_N12
\T2[15]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T2(15) = (GLOBAL(\WideOr17~0clkctrl_outclk\) & ((\Selector56~1_combout\))) # (!GLOBAL(\WideOr17~0clkctrl_outclk\) & (T2(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T2(15),
	datac => \WideOr17~0clkctrl_outclk\,
	datad => \Selector56~1_combout\,
	combout => T2(15));

-- Location: LCCOMB_X26_Y39_N8
\mem_d_out[15]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mem_d_out[15]$latch~combout\ = (GLOBAL(\state.s11~clkctrl_outclk\) & ((T2(15)))) # (!GLOBAL(\state.s11~clkctrl_outclk\) & (\mem_d_out[15]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d_out[15]$latch~combout\,
	datac => \state.s11~clkctrl_outclk\,
	datad => T2(15),
	combout => \mem_d_out[15]$latch~combout\);

-- Location: CLKCTRL_G8
\LS_in_out~0clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \LS_in_out~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \LS_in_out~0clkctrl_outclk\);

-- Location: LCCOMB_X30_Y39_N8
\LS_in_out[0]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LS_in_out[0]$latch~combout\ = (GLOBAL(\LS_in_out~0clkctrl_outclk\) & (\LS_in_out[0]$latch~combout\)) # (!GLOBAL(\LS_in_out~0clkctrl_outclk\) & ((T2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LS_in_out[0]$latch~combout\,
	datac => \LS_in_out~0clkctrl_outclk\,
	datad => T2(0),
	combout => \LS_in_out[0]$latch~combout\);

-- Location: LCCOMB_X25_Y39_N24
\LS_in_out[1]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LS_in_out[1]$latch~combout\ = (GLOBAL(\LS_in_out~0clkctrl_outclk\) & ((\LS_in_out[1]$latch~combout\))) # (!GLOBAL(\LS_in_out~0clkctrl_outclk\) & (T2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T2(1),
	datab => \LS_in_out[1]$latch~combout\,
	datad => \LS_in_out~0clkctrl_outclk\,
	combout => \LS_in_out[1]$latch~combout\);

-- Location: LCCOMB_X32_Y38_N16
\LS_in_out[2]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LS_in_out[2]$latch~combout\ = (GLOBAL(\LS_in_out~0clkctrl_outclk\) & ((\LS_in_out[2]$latch~combout\))) # (!GLOBAL(\LS_in_out~0clkctrl_outclk\) & (T2(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T2(2),
	datab => \LS_in_out[2]$latch~combout\,
	datad => \LS_in_out~0clkctrl_outclk\,
	combout => \LS_in_out[2]$latch~combout\);

-- Location: LCCOMB_X28_Y37_N30
\LS_in_out[3]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LS_in_out[3]$latch~combout\ = (GLOBAL(\LS_in_out~0clkctrl_outclk\) & ((\LS_in_out[3]$latch~combout\))) # (!GLOBAL(\LS_in_out~0clkctrl_outclk\) & (T2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => T2(3),
	datac => \LS_in_out[3]$latch~combout\,
	datad => \LS_in_out~0clkctrl_outclk\,
	combout => \LS_in_out[3]$latch~combout\);

-- Location: LCCOMB_X27_Y38_N4
\LS_in_out[4]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LS_in_out[4]$latch~combout\ = (GLOBAL(\LS_in_out~0clkctrl_outclk\) & ((\LS_in_out[4]$latch~combout\))) # (!GLOBAL(\LS_in_out~0clkctrl_outclk\) & (T2(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T2(4),
	datac => \LS_in_out[4]$latch~combout\,
	datad => \LS_in_out~0clkctrl_outclk\,
	combout => \LS_in_out[4]$latch~combout\);

-- Location: LCCOMB_X30_Y39_N26
\LS_in_out[5]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LS_in_out[5]$latch~combout\ = (GLOBAL(\LS_in_out~0clkctrl_outclk\) & (\LS_in_out[5]$latch~combout\)) # (!GLOBAL(\LS_in_out~0clkctrl_outclk\) & ((T2(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LS_in_out[5]$latch~combout\,
	datac => \LS_in_out~0clkctrl_outclk\,
	datad => T2(5),
	combout => \LS_in_out[5]$latch~combout\);

-- Location: LCCOMB_X30_Y38_N8
\LS_in_out[6]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LS_in_out[6]$latch~combout\ = (GLOBAL(\LS_in_out~0clkctrl_outclk\) & ((\LS_in_out[6]$latch~combout\))) # (!GLOBAL(\LS_in_out~0clkctrl_outclk\) & (T2(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => T2(6),
	datac => \LS_in_out[6]$latch~combout\,
	datad => \LS_in_out~0clkctrl_outclk\,
	combout => \LS_in_out[6]$latch~combout\);

-- Location: LCCOMB_X25_Y39_N14
\LS_in_out[7]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LS_in_out[7]$latch~combout\ = (GLOBAL(\LS_in_out~0clkctrl_outclk\) & ((\LS_in_out[7]$latch~combout\))) # (!GLOBAL(\LS_in_out~0clkctrl_outclk\) & (T2(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => T2(7),
	datac => \LS_in_out[7]$latch~combout\,
	datad => \LS_in_out~0clkctrl_outclk\,
	combout => \LS_in_out[7]$latch~combout\);

-- Location: LCCOMB_X32_Y38_N30
\LS_in_out[8]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LS_in_out[8]$latch~combout\ = (GLOBAL(\LS_in_out~0clkctrl_outclk\) & ((\LS_in_out[8]$latch~combout\))) # (!GLOBAL(\LS_in_out~0clkctrl_outclk\) & (T2(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T2(8),
	datac => \LS_in_out[8]$latch~combout\,
	datad => \LS_in_out~0clkctrl_outclk\,
	combout => \LS_in_out[8]$latch~combout\);

-- Location: LCCOMB_X28_Y39_N4
\LS_in_out[9]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LS_in_out[9]$latch~combout\ = (GLOBAL(\LS_in_out~0clkctrl_outclk\) & ((\LS_in_out[9]$latch~combout\))) # (!GLOBAL(\LS_in_out~0clkctrl_outclk\) & (T2(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T2(9),
	datac => \LS_in_out[9]$latch~combout\,
	datad => \LS_in_out~0clkctrl_outclk\,
	combout => \LS_in_out[9]$latch~combout\);

-- Location: LCCOMB_X27_Y38_N18
\LS_in_out[10]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LS_in_out[10]$latch~combout\ = (GLOBAL(\LS_in_out~0clkctrl_outclk\) & ((\LS_in_out[10]$latch~combout\))) # (!GLOBAL(\LS_in_out~0clkctrl_outclk\) & (T2(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => T2(10),
	datac => \LS_in_out[10]$latch~combout\,
	datad => \LS_in_out~0clkctrl_outclk\,
	combout => \LS_in_out[10]$latch~combout\);

-- Location: LCCOMB_X30_Y37_N8
\LS_in_out[11]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LS_in_out[11]$latch~combout\ = (GLOBAL(\LS_in_out~0clkctrl_outclk\) & (\LS_in_out[11]$latch~combout\)) # (!GLOBAL(\LS_in_out~0clkctrl_outclk\) & ((T2(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LS_in_out[11]$latch~combout\,
	datac => \LS_in_out~0clkctrl_outclk\,
	datad => T2(11),
	combout => \LS_in_out[11]$latch~combout\);

-- Location: LCCOMB_X28_Y39_N14
\LS_in_out[12]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LS_in_out[12]$latch~combout\ = (GLOBAL(\LS_in_out~0clkctrl_outclk\) & ((\LS_in_out[12]$latch~combout\))) # (!GLOBAL(\LS_in_out~0clkctrl_outclk\) & (T2(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => T2(12),
	datac => \LS_in_out[12]$latch~combout\,
	datad => \LS_in_out~0clkctrl_outclk\,
	combout => \LS_in_out[12]$latch~combout\);

-- Location: LCCOMB_X30_Y37_N30
\LS_in_out[13]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LS_in_out[13]$latch~combout\ = (GLOBAL(\LS_in_out~0clkctrl_outclk\) & (\LS_in_out[13]$latch~combout\)) # (!GLOBAL(\LS_in_out~0clkctrl_outclk\) & ((T2(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LS_in_out[13]$latch~combout\,
	datac => \LS_in_out~0clkctrl_outclk\,
	datad => T2(13),
	combout => \LS_in_out[13]$latch~combout\);

-- Location: LCCOMB_X29_Y37_N4
\LS_in_out[14]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LS_in_out[14]$latch~combout\ = (GLOBAL(\LS_in_out~0clkctrl_outclk\) & ((\LS_in_out[14]$latch~combout\))) # (!GLOBAL(\LS_in_out~0clkctrl_outclk\) & (T2(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => T2(14),
	datac => \LS_in_out[14]$latch~combout\,
	datad => \LS_in_out~0clkctrl_outclk\,
	combout => \LS_in_out[14]$latch~combout\);

-- Location: LCCOMB_X26_Y39_N30
\LS_in_out[15]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LS_in_out[15]$latch~combout\ = (GLOBAL(\LS_in_out~0clkctrl_outclk\) & ((\LS_in_out[15]$latch~combout\))) # (!GLOBAL(\LS_in_out~0clkctrl_outclk\) & (T2(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => T2(15),
	datac => \LS_in_out[15]$latch~combout\,
	datad => \LS_in_out~0clkctrl_outclk\,
	combout => \LS_in_out[15]$latch~combout\);

-- Location: LCCOMB_X29_Y35_N26
\WideOr22~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \WideOr22~0_combout\ = (!\state.s16~q\ & !\state.s23~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s16~q\,
	datab => \state.s23~q\,
	combout => \WideOr22~0_combout\);

-- Location: LCCOMB_X29_Y35_N24
\Selector10~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\state.s23~q\) # ((!\state.s16~q\ & \state.s6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s16~q\,
	datab => \state.s23~q\,
	datac => \state.s6~q\,
	combout => \Selector10~0_combout\);

-- Location: IOIBUF_X115_Y34_N15
\msbxtnder_in[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_msbxtnder_in(0),
	o => \msbxtnder_in[0]~input_o\);

-- Location: LCCOMB_X29_Y34_N12
\Selector6~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\WideOr22~0_combout\ & ((\Selector10~0_combout\ & (\msbxtnder_in[0]~input_o\)) # (!\Selector10~0_combout\ & ((T3(0)))))) # (!\WideOr22~0_combout\ & (\Selector10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr22~0_combout\,
	datab => \Selector10~0_combout\,
	datac => \msbxtnder_in[0]~input_o\,
	datad => T3(0),
	combout => \Selector6~0_combout\);

-- Location: CLKCTRL_G16
\state.s15~clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \state.s15~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \state.s15~clkctrl_outclk\);

-- Location: LCCOMB_X29_Y34_N14
\T4[0]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T4(0) = (GLOBAL(\state.s15~clkctrl_outclk\) & ((\mem_d_in[0]~input_o\))) # (!GLOBAL(\state.s15~clkctrl_outclk\) & (T4(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => T4(0),
	datac => \state.s15~clkctrl_outclk\,
	datad => \mem_d_in[0]~input_o\,
	combout => T4(0));

-- Location: LCCOMB_X29_Y34_N18
\Selector6~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\Selector6~0_combout\ & ((\PC_in[0]~input_o\) # ((\WideOr22~0_combout\)))) # (!\Selector6~0_combout\ & (((T4(0) & !\WideOr22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in[0]~input_o\,
	datab => \Selector6~0_combout\,
	datac => T4(0),
	datad => \WideOr22~0_combout\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X29_Y35_N4
\WideOr22~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \WideOr22~1_combout\ = (\state.s6~q\) # ((\state.s16~q\) # ((\state.s23~q\) # (\state.s3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s6~q\,
	datab => \state.s16~q\,
	datac => \state.s23~q\,
	datad => \state.s3~q\,
	combout => \WideOr22~1_combout\);

-- Location: CLKCTRL_G17
\WideOr22~1clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WideOr22~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WideOr22~1clkctrl_outclk\);

-- Location: LCCOMB_X29_Y34_N28
\Rf_D3_out[0]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Rf_D3_out[0]$latch~combout\ = (GLOBAL(\WideOr22~1clkctrl_outclk\) & (\Selector6~1_combout\)) # (!GLOBAL(\WideOr22~1clkctrl_outclk\) & ((\Rf_D3_out[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~1_combout\,
	datab => \Rf_D3_out[0]$latch~combout\,
	datad => \WideOr22~1clkctrl_outclk\,
	combout => \Rf_D3_out[0]$latch~combout\);

-- Location: IOIBUF_X0_Y4_N22
\msbxtnder_in[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_msbxtnder_in(1),
	o => \msbxtnder_in[1]~input_o\);

-- Location: LCCOMB_X32_Y35_N24
\T4[1]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T4(1) = (GLOBAL(\state.s15~clkctrl_outclk\) & ((\mem_d_in[1]~input_o\))) # (!GLOBAL(\state.s15~clkctrl_outclk\) & (T4(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => T4(1),
	datac => \mem_d_in[1]~input_o\,
	datad => \state.s15~clkctrl_outclk\,
	combout => T4(1));

-- Location: LCCOMB_X29_Y35_N14
\Selector7~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\WideOr22~0_combout\ & (!\Selector10~0_combout\ & (T3(1)))) # (!\WideOr22~0_combout\ & ((\Selector10~0_combout\) # ((T4(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr22~0_combout\,
	datab => \Selector10~0_combout\,
	datac => T3(1),
	datad => T4(1),
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X29_Y35_N28
\Selector7~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\Selector7~0_combout\ & (((\PC_in[1]~input_o\) # (!\Selector10~0_combout\)))) # (!\Selector7~0_combout\ & (\msbxtnder_in[1]~input_o\ & ((\Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msbxtnder_in[1]~input_o\,
	datab => \Selector7~0_combout\,
	datac => \PC_in[1]~input_o\,
	datad => \Selector10~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X29_Y35_N6
\Rf_D3_out[1]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Rf_D3_out[1]$latch~combout\ = (GLOBAL(\WideOr22~1clkctrl_outclk\) & (\Selector7~1_combout\)) # (!GLOBAL(\WideOr22~1clkctrl_outclk\) & ((\Rf_D3_out[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector7~1_combout\,
	datac => \WideOr22~1clkctrl_outclk\,
	datad => \Rf_D3_out[1]$latch~combout\,
	combout => \Rf_D3_out[1]$latch~combout\);

-- Location: IOIBUF_X7_Y0_N15
\msbxtnder_in[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_msbxtnder_in(2),
	o => \msbxtnder_in[2]~input_o\);

-- Location: LCCOMB_X29_Y34_N20
\Selector8~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\WideOr22~0_combout\ & ((\Selector10~0_combout\ & (\msbxtnder_in[2]~input_o\)) # (!\Selector10~0_combout\ & ((T3(2)))))) # (!\WideOr22~0_combout\ & (((\Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr22~0_combout\,
	datab => \msbxtnder_in[2]~input_o\,
	datac => T3(2),
	datad => \Selector10~0_combout\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X29_Y34_N24
\T4[2]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T4(2) = (GLOBAL(\state.s15~clkctrl_outclk\) & (\mem_d_in[2]~input_o\)) # (!GLOBAL(\state.s15~clkctrl_outclk\) & ((T4(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d_in[2]~input_o\,
	datac => \state.s15~clkctrl_outclk\,
	datad => T4(2),
	combout => T4(2));

-- Location: LCCOMB_X29_Y34_N10
\Selector8~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\Selector8~0_combout\ & ((\PC_in[2]~input_o\) # ((\WideOr22~0_combout\)))) # (!\Selector8~0_combout\ & (((!\WideOr22~0_combout\ & T4(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in[2]~input_o\,
	datab => \Selector8~0_combout\,
	datac => \WideOr22~0_combout\,
	datad => T4(2),
	combout => \Selector8~1_combout\);

-- Location: LCCOMB_X29_Y34_N22
\Rf_D3_out[2]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Rf_D3_out[2]$latch~combout\ = (GLOBAL(\WideOr22~1clkctrl_outclk\) & (\Selector8~1_combout\)) # (!GLOBAL(\WideOr22~1clkctrl_outclk\) & ((\Rf_D3_out[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~1_combout\,
	datac => \Rf_D3_out[2]$latch~combout\,
	datad => \WideOr22~1clkctrl_outclk\,
	combout => \Rf_D3_out[2]$latch~combout\);

-- Location: IOIBUF_X1_Y0_N15
\msbxtnder_in[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_msbxtnder_in(3),
	o => \msbxtnder_in[3]~input_o\);

-- Location: LCCOMB_X32_Y35_N22
\T4[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T4(3) = (GLOBAL(\state.s15~clkctrl_outclk\) & (\mem_d_in[3]~input_o\)) # (!GLOBAL(\state.s15~clkctrl_outclk\) & ((T4(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d_in[3]~input_o\,
	datac => T4(3),
	datad => \state.s15~clkctrl_outclk\,
	combout => T4(3));

-- Location: LCCOMB_X29_Y35_N22
\Selector9~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\WideOr22~0_combout\ & (!\Selector10~0_combout\ & (T3(3)))) # (!\WideOr22~0_combout\ & ((\Selector10~0_combout\) # ((T4(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr22~0_combout\,
	datab => \Selector10~0_combout\,
	datac => T3(3),
	datad => T4(3),
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X29_Y35_N16
\Selector9~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (\Selector9~0_combout\ & (((\PC_in[3]~input_o\) # (!\Selector10~0_combout\)))) # (!\Selector9~0_combout\ & (\msbxtnder_in[3]~input_o\ & ((\Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msbxtnder_in[3]~input_o\,
	datab => \Selector9~0_combout\,
	datac => \PC_in[3]~input_o\,
	datad => \Selector10~0_combout\,
	combout => \Selector9~1_combout\);

-- Location: LCCOMB_X29_Y35_N20
\Rf_D3_out[3]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Rf_D3_out[3]$latch~combout\ = (GLOBAL(\WideOr22~1clkctrl_outclk\) & (\Selector9~1_combout\)) # (!GLOBAL(\WideOr22~1clkctrl_outclk\) & ((\Rf_D3_out[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~1_combout\,
	datac => \WideOr22~1clkctrl_outclk\,
	datad => \Rf_D3_out[3]$latch~combout\,
	combout => \Rf_D3_out[3]$latch~combout\);

-- Location: IOIBUF_X11_Y73_N22
\msbxtnder_in[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_msbxtnder_in(4),
	o => \msbxtnder_in[4]~input_o\);

-- Location: LCCOMB_X26_Y35_N8
\Selector10~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\WideOr22~0_combout\ & ((\Selector10~0_combout\ & (\msbxtnder_in[4]~input_o\)) # (!\Selector10~0_combout\ & ((T3(4)))))) # (!\WideOr22~0_combout\ & (((\Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr22~0_combout\,
	datab => \msbxtnder_in[4]~input_o\,
	datac => \Selector10~0_combout\,
	datad => T3(4),
	combout => \Selector10~1_combout\);

-- Location: LCCOMB_X26_Y35_N26
\T4[4]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T4(4) = (GLOBAL(\state.s15~clkctrl_outclk\) & (\mem_d_in[4]~input_o\)) # (!GLOBAL(\state.s15~clkctrl_outclk\) & ((T4(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d_in[4]~input_o\,
	datac => \state.s15~clkctrl_outclk\,
	datad => T4(4),
	combout => T4(4));

-- Location: LCCOMB_X26_Y35_N22
\Selector10~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector10~2_combout\ = (\Selector10~1_combout\ & ((\PC_in[4]~input_o\) # ((\WideOr22~0_combout\)))) # (!\Selector10~1_combout\ & (((T4(4) & !\WideOr22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in[4]~input_o\,
	datab => \Selector10~1_combout\,
	datac => T4(4),
	datad => \WideOr22~0_combout\,
	combout => \Selector10~2_combout\);

-- Location: LCCOMB_X26_Y35_N14
\Rf_D3_out[4]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Rf_D3_out[4]$latch~combout\ = (GLOBAL(\WideOr22~1clkctrl_outclk\) & (\Selector10~2_combout\)) # (!GLOBAL(\WideOr22~1clkctrl_outclk\) & ((\Rf_D3_out[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector10~2_combout\,
	datac => \Rf_D3_out[4]$latch~combout\,
	datad => \WideOr22~1clkctrl_outclk\,
	combout => \Rf_D3_out[4]$latch~combout\);

-- Location: IOIBUF_X83_Y0_N8
\msbxtnder_in[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_msbxtnder_in(5),
	o => \msbxtnder_in[5]~input_o\);

-- Location: LCCOMB_X29_Y34_N26
\T4[5]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T4(5) = (GLOBAL(\state.s15~clkctrl_outclk\) & ((\mem_d_in[5]~input_o\))) # (!GLOBAL(\state.s15~clkctrl_outclk\) & (T4(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T4(5),
	datab => \mem_d_in[5]~input_o\,
	datac => \state.s15~clkctrl_outclk\,
	combout => T4(5));

-- Location: LCCOMB_X29_Y34_N16
\Selector11~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\WideOr22~0_combout\ & (!\Selector10~0_combout\ & ((T3(5))))) # (!\WideOr22~0_combout\ & ((\Selector10~0_combout\) # ((T4(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr22~0_combout\,
	datab => \Selector10~0_combout\,
	datac => T4(5),
	datad => T3(5),
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X29_Y34_N6
\Selector11~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (\Selector10~0_combout\ & ((\Selector11~0_combout\ & (\PC_in[5]~input_o\)) # (!\Selector11~0_combout\ & ((\msbxtnder_in[5]~input_o\))))) # (!\Selector10~0_combout\ & (((\Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in[5]~input_o\,
	datab => \msbxtnder_in[5]~input_o\,
	datac => \Selector10~0_combout\,
	datad => \Selector11~0_combout\,
	combout => \Selector11~1_combout\);

-- Location: LCCOMB_X29_Y34_N8
\Rf_D3_out[5]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Rf_D3_out[5]$latch~combout\ = (GLOBAL(\WideOr22~1clkctrl_outclk\) & (\Selector11~1_combout\)) # (!GLOBAL(\WideOr22~1clkctrl_outclk\) & ((\Rf_D3_out[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~1_combout\,
	datac => \Rf_D3_out[5]$latch~combout\,
	datad => \WideOr22~1clkctrl_outclk\,
	combout => \Rf_D3_out[5]$latch~combout\);

-- Location: IOIBUF_X56_Y0_N1
\msbxtnder_in[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_msbxtnder_in(6),
	o => \msbxtnder_in[6]~input_o\);

-- Location: LCCOMB_X29_Y35_N0
\Selector12~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\WideOr22~0_combout\ & ((\Selector10~0_combout\ & (\msbxtnder_in[6]~input_o\)) # (!\Selector10~0_combout\ & ((T3(6)))))) # (!\WideOr22~0_combout\ & (\Selector10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr22~0_combout\,
	datab => \Selector10~0_combout\,
	datac => \msbxtnder_in[6]~input_o\,
	datad => T3(6),
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X32_Y35_N4
\T4[6]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T4(6) = (GLOBAL(\state.s15~clkctrl_outclk\) & (\mem_d_in[6]~input_o\)) # (!GLOBAL(\state.s15~clkctrl_outclk\) & ((T4(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d_in[6]~input_o\,
	datac => T4(6),
	datad => \state.s15~clkctrl_outclk\,
	combout => T4(6));

-- Location: LCCOMB_X29_Y35_N10
\Selector12~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (\Selector12~0_combout\ & ((\PC_in[6]~input_o\) # ((\WideOr22~0_combout\)))) # (!\Selector12~0_combout\ & (((!\WideOr22~0_combout\ & T4(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in[6]~input_o\,
	datab => \Selector12~0_combout\,
	datac => \WideOr22~0_combout\,
	datad => T4(6),
	combout => \Selector12~1_combout\);

-- Location: LCCOMB_X29_Y35_N2
\Rf_D3_out[6]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Rf_D3_out[6]$latch~combout\ = (GLOBAL(\WideOr22~1clkctrl_outclk\) & (\Selector12~1_combout\)) # (!GLOBAL(\WideOr22~1clkctrl_outclk\) & ((\Rf_D3_out[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr22~1clkctrl_outclk\,
	datac => \Selector12~1_combout\,
	datad => \Rf_D3_out[6]$latch~combout\,
	combout => \Rf_D3_out[6]$latch~combout\);

-- Location: IOIBUF_X5_Y0_N15
\msbxtnder_in[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_msbxtnder_in(7),
	o => \msbxtnder_in[7]~input_o\);

-- Location: LCCOMB_X30_Y34_N24
\T4[7]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T4(7) = (GLOBAL(\state.s15~clkctrl_outclk\) & (\mem_d_in[7]~input_o\)) # (!GLOBAL(\state.s15~clkctrl_outclk\) & ((T4(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d_in[7]~input_o\,
	datac => \state.s15~clkctrl_outclk\,
	datad => T4(7),
	combout => T4(7));

-- Location: LCCOMB_X30_Y34_N16
\Selector13~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\Selector10~0_combout\ & (!\WideOr22~0_combout\)) # (!\Selector10~0_combout\ & ((\WideOr22~0_combout\ & (T3(7))) # (!\WideOr22~0_combout\ & ((T4(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~0_combout\,
	datab => \WideOr22~0_combout\,
	datac => T3(7),
	datad => T4(7),
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X30_Y34_N6
\Selector13~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\Selector13~0_combout\ & (((\PC_in[7]~input_o\) # (!\Selector10~0_combout\)))) # (!\Selector13~0_combout\ & (\msbxtnder_in[7]~input_o\ & ((\Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msbxtnder_in[7]~input_o\,
	datab => \PC_in[7]~input_o\,
	datac => \Selector13~0_combout\,
	datad => \Selector10~0_combout\,
	combout => \Selector13~1_combout\);

-- Location: LCCOMB_X30_Y34_N4
\Rf_D3_out[7]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Rf_D3_out[7]$latch~combout\ = (GLOBAL(\WideOr22~1clkctrl_outclk\) & (\Selector13~1_combout\)) # (!GLOBAL(\WideOr22~1clkctrl_outclk\) & ((\Rf_D3_out[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~1_combout\,
	datac => \Rf_D3_out[7]$latch~combout\,
	datad => \WideOr22~1clkctrl_outclk\,
	combout => \Rf_D3_out[7]$latch~combout\);

-- Location: LCCOMB_X30_Y34_N26
\T4[8]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T4(8) = (GLOBAL(\state.s15~clkctrl_outclk\) & ((\mem_d_in[8]~input_o\))) # (!GLOBAL(\state.s15~clkctrl_outclk\) & (T4(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T4(8),
	datab => \mem_d_in[8]~input_o\,
	datac => \state.s15~clkctrl_outclk\,
	combout => T4(8));

-- Location: IOIBUF_X31_Y0_N8
\msbxtnder_in[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_msbxtnder_in(8),
	o => \msbxtnder_in[8]~input_o\);

-- Location: LCCOMB_X30_Y34_N20
\Selector14~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\Selector10~0_combout\ & ((\msbxtnder_in[8]~input_o\) # ((!\WideOr22~0_combout\)))) # (!\Selector10~0_combout\ & (((\WideOr22~0_combout\ & T3(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msbxtnder_in[8]~input_o\,
	datab => \Selector10~0_combout\,
	datac => \WideOr22~0_combout\,
	datad => T3(8),
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X30_Y34_N18
\Selector14~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (\WideOr22~0_combout\ & (((\Selector14~0_combout\)))) # (!\WideOr22~0_combout\ & ((\Selector14~0_combout\ & (\PC_in[8]~input_o\)) # (!\Selector14~0_combout\ & ((T4(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in[8]~input_o\,
	datab => \WideOr22~0_combout\,
	datac => T4(8),
	datad => \Selector14~0_combout\,
	combout => \Selector14~1_combout\);

-- Location: LCCOMB_X30_Y34_N14
\Rf_D3_out[8]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Rf_D3_out[8]$latch~combout\ = (GLOBAL(\WideOr22~1clkctrl_outclk\) & (\Selector14~1_combout\)) # (!GLOBAL(\WideOr22~1clkctrl_outclk\) & ((\Rf_D3_out[8]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector14~1_combout\,
	datac => \Rf_D3_out[8]$latch~combout\,
	datad => \WideOr22~1clkctrl_outclk\,
	combout => \Rf_D3_out[8]$latch~combout\);

-- Location: LCCOMB_X32_Y35_N26
\T4[9]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T4(9) = (GLOBAL(\state.s15~clkctrl_outclk\) & (\mem_d_in[9]~input_o\)) # (!GLOBAL(\state.s15~clkctrl_outclk\) & ((T4(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d_in[9]~input_o\,
	datac => T4(9),
	datad => \state.s15~clkctrl_outclk\,
	combout => T4(9));

-- Location: LCCOMB_X32_Y35_N28
\Selector15~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\WideOr22~0_combout\ & (!\Selector10~0_combout\ & ((T3(9))))) # (!\WideOr22~0_combout\ & ((\Selector10~0_combout\) # ((T4(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr22~0_combout\,
	datab => \Selector10~0_combout\,
	datac => T4(9),
	datad => T3(9),
	combout => \Selector15~0_combout\);

-- Location: IOIBUF_X60_Y0_N8
\msbxtnder_in[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_msbxtnder_in(9),
	o => \msbxtnder_in[9]~input_o\);

-- Location: LCCOMB_X32_Y35_N6
\Selector15~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (\Selector15~0_combout\ & ((\PC_in[9]~input_o\) # ((!\Selector10~0_combout\)))) # (!\Selector15~0_combout\ & (((\msbxtnder_in[9]~input_o\ & \Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~0_combout\,
	datab => \PC_in[9]~input_o\,
	datac => \msbxtnder_in[9]~input_o\,
	datad => \Selector10~0_combout\,
	combout => \Selector15~1_combout\);

-- Location: LCCOMB_X32_Y35_N30
\Rf_D3_out[9]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Rf_D3_out[9]$latch~combout\ = (GLOBAL(\WideOr22~1clkctrl_outclk\) & (\Selector15~1_combout\)) # (!GLOBAL(\WideOr22~1clkctrl_outclk\) & ((\Rf_D3_out[9]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~1_combout\,
	datac => \Rf_D3_out[9]$latch~combout\,
	datad => \WideOr22~1clkctrl_outclk\,
	combout => \Rf_D3_out[9]$latch~combout\);

-- Location: IOIBUF_X27_Y0_N22
\msbxtnder_in[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_msbxtnder_in(10),
	o => \msbxtnder_in[10]~input_o\);

-- Location: LCCOMB_X28_Y33_N8
\Selector16~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\WideOr22~0_combout\ & ((\Selector10~0_combout\ & (\msbxtnder_in[10]~input_o\)) # (!\Selector10~0_combout\ & ((T3(10)))))) # (!\WideOr22~0_combout\ & (((\Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msbxtnder_in[10]~input_o\,
	datab => T3(10),
	datac => \WideOr22~0_combout\,
	datad => \Selector10~0_combout\,
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X27_Y33_N24
\T4[10]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T4(10) = (GLOBAL(\state.s15~clkctrl_outclk\) & ((\mem_d_in[10]~input_o\))) # (!GLOBAL(\state.s15~clkctrl_outclk\) & (T4(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => T4(10),
	datac => \mem_d_in[10]~input_o\,
	datad => \state.s15~clkctrl_outclk\,
	combout => T4(10));

-- Location: LCCOMB_X28_Y33_N30
\Selector16~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector16~1_combout\ = (\Selector16~0_combout\ & ((\PC_in[10]~input_o\) # ((\WideOr22~0_combout\)))) # (!\Selector16~0_combout\ & (((!\WideOr22~0_combout\ & T4(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in[10]~input_o\,
	datab => \Selector16~0_combout\,
	datac => \WideOr22~0_combout\,
	datad => T4(10),
	combout => \Selector16~1_combout\);

-- Location: LCCOMB_X28_Y33_N12
\Rf_D3_out[10]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Rf_D3_out[10]$latch~combout\ = (GLOBAL(\WideOr22~1clkctrl_outclk\) & (\Selector16~1_combout\)) # (!GLOBAL(\WideOr22~1clkctrl_outclk\) & ((\Rf_D3_out[10]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector16~1_combout\,
	datac => \WideOr22~1clkctrl_outclk\,
	datad => \Rf_D3_out[10]$latch~combout\,
	combout => \Rf_D3_out[10]$latch~combout\);

-- Location: IOIBUF_X74_Y0_N1
\msbxtnder_in[11]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_msbxtnder_in(11),
	o => \msbxtnder_in[11]~input_o\);

-- Location: LCCOMB_X29_Y34_N0
\T4[11]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T4(11) = (GLOBAL(\state.s15~clkctrl_outclk\) & (\mem_d_in[11]~input_o\)) # (!GLOBAL(\state.s15~clkctrl_outclk\) & ((T4(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d_in[11]~input_o\,
	datac => \state.s15~clkctrl_outclk\,
	datad => T4(11),
	combout => T4(11));

-- Location: LCCOMB_X29_Y35_N30
\Selector17~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\Selector10~0_combout\ & (((!\WideOr22~0_combout\)))) # (!\Selector10~0_combout\ & ((\WideOr22~0_combout\ & (T3(11))) # (!\WideOr22~0_combout\ & ((T4(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T3(11),
	datab => \Selector10~0_combout\,
	datac => \WideOr22~0_combout\,
	datad => T4(11),
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X29_Y35_N18
\Selector17~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = (\Selector17~0_combout\ & ((\PC_in[11]~input_o\) # ((!\Selector10~0_combout\)))) # (!\Selector17~0_combout\ & (((\msbxtnder_in[11]~input_o\ & \Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in[11]~input_o\,
	datab => \msbxtnder_in[11]~input_o\,
	datac => \Selector17~0_combout\,
	datad => \Selector10~0_combout\,
	combout => \Selector17~1_combout\);

-- Location: LCCOMB_X29_Y35_N12
\Rf_D3_out[11]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Rf_D3_out[11]$latch~combout\ = (GLOBAL(\WideOr22~1clkctrl_outclk\) & ((\Selector17~1_combout\))) # (!GLOBAL(\WideOr22~1clkctrl_outclk\) & (\Rf_D3_out[11]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D3_out[11]$latch~combout\,
	datac => \WideOr22~1clkctrl_outclk\,
	datad => \Selector17~1_combout\,
	combout => \Rf_D3_out[11]$latch~combout\);

-- Location: IOIBUF_X52_Y0_N8
\msbxtnder_in[12]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_msbxtnder_in(12),
	o => \msbxtnder_in[12]~input_o\);

-- Location: LCCOMB_X28_Y35_N2
\Selector18~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\Selector10~0_combout\ & (((\msbxtnder_in[12]~input_o\) # (!\WideOr22~0_combout\)))) # (!\Selector10~0_combout\ & (T3(12) & (\WideOr22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T3(12),
	datab => \Selector10~0_combout\,
	datac => \WideOr22~0_combout\,
	datad => \msbxtnder_in[12]~input_o\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X26_Y35_N24
\T4[12]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T4(12) = (GLOBAL(\state.s15~clkctrl_outclk\) & (\mem_d_in[12]~input_o\)) # (!GLOBAL(\state.s15~clkctrl_outclk\) & ((T4(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d_in[12]~input_o\,
	datab => T4(12),
	datac => \state.s15~clkctrl_outclk\,
	combout => T4(12));

-- Location: LCCOMB_X28_Y35_N14
\Selector18~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = (\Selector18~0_combout\ & ((\PC_in[12]~input_o\) # ((\WideOr22~0_combout\)))) # (!\Selector18~0_combout\ & (((!\WideOr22~0_combout\ & T4(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~0_combout\,
	datab => \PC_in[12]~input_o\,
	datac => \WideOr22~0_combout\,
	datad => T4(12),
	combout => \Selector18~1_combout\);

-- Location: LCCOMB_X28_Y35_N30
\Rf_D3_out[12]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Rf_D3_out[12]$latch~combout\ = (GLOBAL(\WideOr22~1clkctrl_outclk\) & ((\Selector18~1_combout\))) # (!GLOBAL(\WideOr22~1clkctrl_outclk\) & (\Rf_D3_out[12]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D3_out[12]$latch~combout\,
	datac => \Selector18~1_combout\,
	datad => \WideOr22~1clkctrl_outclk\,
	combout => \Rf_D3_out[12]$latch~combout\);

-- Location: IOIBUF_X60_Y73_N1
\msbxtnder_in[13]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_msbxtnder_in(13),
	o => \msbxtnder_in[13]~input_o\);

-- Location: LCCOMB_X33_Y36_N4
\T4[13]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T4(13) = (GLOBAL(\state.s15~clkctrl_outclk\) & (\mem_d_in[13]~input_o\)) # (!GLOBAL(\state.s15~clkctrl_outclk\) & ((T4(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d_in[13]~input_o\,
	datac => T4(13),
	datad => \state.s15~clkctrl_outclk\,
	combout => T4(13));

-- Location: LCCOMB_X32_Y36_N28
\Selector19~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\Selector10~0_combout\ & (((!\WideOr22~0_combout\)))) # (!\Selector10~0_combout\ & ((\WideOr22~0_combout\ & (T3(13))) # (!\WideOr22~0_combout\ & ((T4(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~0_combout\,
	datab => T3(13),
	datac => \WideOr22~0_combout\,
	datad => T4(13),
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X32_Y36_N18
\Selector19~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector19~1_combout\ = (\Selector10~0_combout\ & ((\Selector19~0_combout\ & (\PC_in[13]~input_o\)) # (!\Selector19~0_combout\ & ((\msbxtnder_in[13]~input_o\))))) # (!\Selector10~0_combout\ & (((\Selector19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~0_combout\,
	datab => \PC_in[13]~input_o\,
	datac => \msbxtnder_in[13]~input_o\,
	datad => \Selector19~0_combout\,
	combout => \Selector19~1_combout\);

-- Location: LCCOMB_X32_Y36_N24
\Rf_D3_out[13]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Rf_D3_out[13]$latch~combout\ = (GLOBAL(\WideOr22~1clkctrl_outclk\) & (\Selector19~1_combout\)) # (!GLOBAL(\WideOr22~1clkctrl_outclk\) & ((\Rf_D3_out[13]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~1_combout\,
	datab => \Rf_D3_out[13]$latch~combout\,
	datad => \WideOr22~1clkctrl_outclk\,
	combout => \Rf_D3_out[13]$latch~combout\);

-- Location: IOIBUF_X81_Y73_N22
\msbxtnder_in[14]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_msbxtnder_in(14),
	o => \msbxtnder_in[14]~input_o\);

-- Location: LCCOMB_X32_Y36_N20
\Selector20~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\Selector10~0_combout\ & (((\msbxtnder_in[14]~input_o\)) # (!\WideOr22~0_combout\))) # (!\Selector10~0_combout\ & (\WideOr22~0_combout\ & (T3(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~0_combout\,
	datab => \WideOr22~0_combout\,
	datac => T3(14),
	datad => \msbxtnder_in[14]~input_o\,
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X33_Y36_N22
\T4[14]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T4(14) = (GLOBAL(\state.s15~clkctrl_outclk\) & (\mem_d_in[14]~input_o\)) # (!GLOBAL(\state.s15~clkctrl_outclk\) & ((T4(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d_in[14]~input_o\,
	datac => T4(14),
	datad => \state.s15~clkctrl_outclk\,
	combout => T4(14));

-- Location: LCCOMB_X32_Y36_N6
\Selector20~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector20~1_combout\ = (\Selector20~0_combout\ & ((\WideOr22~0_combout\) # ((\PC_in[14]~input_o\)))) # (!\Selector20~0_combout\ & (!\WideOr22~0_combout\ & ((T4(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector20~0_combout\,
	datab => \WideOr22~0_combout\,
	datac => \PC_in[14]~input_o\,
	datad => T4(14),
	combout => \Selector20~1_combout\);

-- Location: LCCOMB_X32_Y36_N26
\Rf_D3_out[14]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Rf_D3_out[14]$latch~combout\ = (GLOBAL(\WideOr22~1clkctrl_outclk\) & (\Selector20~1_combout\)) # (!GLOBAL(\WideOr22~1clkctrl_outclk\) & ((\Rf_D3_out[14]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector20~1_combout\,
	datac => \Rf_D3_out[14]$latch~combout\,
	datad => \WideOr22~1clkctrl_outclk\,
	combout => \Rf_D3_out[14]$latch~combout\);

-- Location: LCCOMB_X27_Y34_N20
\T4[15]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T4(15) = (GLOBAL(\state.s15~clkctrl_outclk\) & (\mem_d_in[15]~input_o\)) # (!GLOBAL(\state.s15~clkctrl_outclk\) & ((T4(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d_in[15]~input_o\,
	datac => T4(15),
	datad => \state.s15~clkctrl_outclk\,
	combout => T4(15));

-- Location: LCCOMB_X28_Y34_N0
\Selector21~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\WideOr22~0_combout\ & (!\Selector10~0_combout\ & (T3(15)))) # (!\WideOr22~0_combout\ & ((\Selector10~0_combout\) # ((T4(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr22~0_combout\,
	datab => \Selector10~0_combout\,
	datac => T3(15),
	datad => T4(15),
	combout => \Selector21~0_combout\);

-- Location: IOIBUF_X9_Y0_N8
\msbxtnder_in[15]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_msbxtnder_in(15),
	o => \msbxtnder_in[15]~input_o\);

-- Location: LCCOMB_X28_Y34_N14
\Selector21~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector21~1_combout\ = (\Selector21~0_combout\ & ((\PC_in[15]~input_o\) # ((!\Selector10~0_combout\)))) # (!\Selector21~0_combout\ & (((\msbxtnder_in[15]~input_o\ & \Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in[15]~input_o\,
	datab => \Selector21~0_combout\,
	datac => \msbxtnder_in[15]~input_o\,
	datad => \Selector10~0_combout\,
	combout => \Selector21~1_combout\);

-- Location: LCCOMB_X28_Y34_N2
\Rf_D3_out[15]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Rf_D3_out[15]$latch~combout\ = (GLOBAL(\WideOr22~1clkctrl_outclk\) & (\Selector21~1_combout\)) # (!GLOBAL(\WideOr22~1clkctrl_outclk\) & ((\Rf_D3_out[15]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector21~1_combout\,
	datac => \Rf_D3_out[15]$latch~combout\,
	datad => \WideOr22~1clkctrl_outclk\,
	combout => \Rf_D3_out[15]$latch~combout\);

-- Location: LCCOMB_X27_Y35_N22
\Selector136~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector136~1_combout\ = (\Rf_D1_in[0]~input_o\ & ((\state.s26~q\) # ((\Ir_in[0]~input_o\ & \state.s13~q\)))) # (!\Rf_D1_in[0]~input_o\ & (\Ir_in[0]~input_o\ & (\state.s13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D1_in[0]~input_o\,
	datab => \Ir_in[0]~input_o\,
	datac => \state.s13~q\,
	datad => \state.s26~q\,
	combout => \Selector136~1_combout\);

-- Location: LCCOMB_X28_Y38_N10
WideOr4 : cyclone10lp_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = (\state.s2~q\) # ((\state.s17~q\) # (\state.s8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s2~q\,
	datac => \state.s17~q\,
	datad => \state.s8~q\,
	combout => \WideOr4~combout\);

-- Location: LCCOMB_X28_Y38_N18
\alu_a_out~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a_out~4_combout\ = (!\state.s21~q\ & !\state.s18~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s21~q\,
	datad => \state.s18~q\,
	combout => \alu_a_out~4_combout\);

-- Location: IOIBUF_X0_Y64_N1
\SE_out6_in[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE_out6_in(0),
	o => \SE_out6_in[0]~input_o\);

-- Location: LCCOMB_X29_Y38_N26
\Selector69~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector69~1_combout\ = (\state.s17~q\) # ((!\state.s12~q\ & \state.s5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s12~q\,
	datac => \state.s17~q\,
	datad => \state.s5~q\,
	combout => \Selector69~1_combout\);

-- Location: LCCOMB_X29_Y38_N18
\Selector69~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector69~2_combout\ = (!\state.s12~q\ & (!\state.s5~q\ & ((\state.s10~q\) # (\state.s4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s12~q\,
	datab => \state.s5~q\,
	datac => \state.s10~q\,
	datad => \state.s4~q\,
	combout => \Selector69~2_combout\);

-- Location: LCCOMB_X29_Y38_N0
\Selector69~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector69~3_combout\ = (\state.s17~q\) # (\Selector69~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s17~q\,
	datac => \Selector69~2_combout\,
	combout => \Selector69~3_combout\);

-- Location: LCCOMB_X28_Y36_N10
\Selector57~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = (\Selector69~1_combout\ & ((\Selector69~3_combout\ & ((\alu_c_in[0]~input_o\))) # (!\Selector69~3_combout\ & (\SE_out6_in[0]~input_o\)))) # (!\Selector69~1_combout\ & (((\Selector69~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SE_out6_in[0]~input_o\,
	datab => \Selector69~1_combout\,
	datac => \Selector69~3_combout\,
	datad => \alu_c_in[0]~input_o\,
	combout => \Selector57~0_combout\);

-- Location: LCCOMB_X29_Y38_N28
\Selector69~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector69~0_combout\ = (\state.s17~q\) # ((\state.s12~q\) # (\state.s5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s17~q\,
	datab => \state.s12~q\,
	datad => \state.s5~q\,
	combout => \Selector69~0_combout\);

-- Location: LCCOMB_X28_Y36_N20
Selector57 : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector57~combout\ = (\Selector57~0_combout\ & (((\Rf_D2_in[0]~input_o\) # (\Selector69~0_combout\)))) # (!\Selector57~0_combout\ & (\Rf_D1_in[0]~input_o\ & ((!\Selector69~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector57~0_combout\,
	datab => \Rf_D1_in[0]~input_o\,
	datac => \Rf_D2_in[0]~input_o\,
	datad => \Selector69~0_combout\,
	combout => \Selector57~combout\);

-- Location: LCCOMB_X29_Y38_N8
\WideOr11~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \WideOr11~2_combout\ = (!\state.s10~q\ & (\state.s1~q\ & (!\state.s5~q\ & !\state.s4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s10~q\,
	datab => \state.s1~q\,
	datac => \state.s5~q\,
	datad => \state.s4~q\,
	combout => \WideOr11~2_combout\);

-- Location: LCCOMB_X29_Y38_N16
\WideOr16~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \WideOr16~0_combout\ = (\state.s17~q\) # (((\state.s7~q\) # (\state.s12~q\)) # (!\WideOr11~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s17~q\,
	datab => \WideOr11~2_combout\,
	datac => \state.s7~q\,
	datad => \state.s12~q\,
	combout => \WideOr16~0_combout\);

-- Location: CLKCTRL_G12
\WideOr16~0clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WideOr16~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WideOr16~0clkctrl_outclk\);

-- Location: LCCOMB_X28_Y36_N2
\T1[0]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T1(0) = (GLOBAL(\WideOr16~0clkctrl_outclk\) & (\Selector57~combout\)) # (!GLOBAL(\WideOr16~0clkctrl_outclk\) & ((T1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector57~combout\,
	datab => T1(0),
	datad => \WideOr16~0clkctrl_outclk\,
	combout => T1(0));

-- Location: LCCOMB_X27_Y35_N12
\Selector136~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector136~0_combout\ = (\WideOr4~combout\ & ((T1(0)) # ((!\alu_a_out~4_combout\ & T3(0))))) # (!\WideOr4~combout\ & (!\alu_a_out~4_combout\ & (T3(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~combout\,
	datab => \alu_a_out~4_combout\,
	datac => T3(0),
	datad => T1(0),
	combout => \Selector136~0_combout\);

-- Location: LCCOMB_X30_Y36_N26
\alu_a_out~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a_out~5_combout\ = (\state.s24~q\) # (\state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s24~q\,
	datad => \state.s0~q\,
	combout => \alu_a_out~5_combout\);

-- Location: LCCOMB_X27_Y35_N8
\Selector136~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector136~2_combout\ = (\Selector136~1_combout\) # ((\Selector136~0_combout\) # ((\PC_in[0]~input_o\ & \alu_a_out~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector136~1_combout\,
	datab => \PC_in[0]~input_o\,
	datac => \Selector136~0_combout\,
	datad => \alu_a_out~5_combout\,
	combout => \Selector136~2_combout\);

-- Location: LCCOMB_X29_Y36_N26
\alu_b_out~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b_out~1_combout\ = (!\state.s24~q\ & !\state.s26~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s24~q\,
	datad => \state.s26~q\,
	combout => \alu_b_out~1_combout\);

-- Location: LCCOMB_X29_Y36_N16
\WideOr1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (!\state.s0~q\ & (\WideOr19~0_combout\ & (\alu_b_out~1_combout\ & !\state.s17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s0~q\,
	datab => \WideOr19~0_combout\,
	datac => \alu_b_out~1_combout\,
	datad => \state.s17~q\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X28_Y38_N30
\WideOr3~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (\state.s13~q\) # (!\WideOr1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideOr1~0_combout\,
	datad => \state.s13~q\,
	combout => \WideOr3~0_combout\);

-- Location: CLKCTRL_G14
\WideOr3~0clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WideOr3~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WideOr3~0clkctrl_outclk\);

-- Location: LCCOMB_X27_Y35_N28
\alu_a_out[0]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a_out[0]$latch~combout\ = (GLOBAL(\WideOr3~0clkctrl_outclk\) & (\Selector136~2_combout\)) # (!GLOBAL(\WideOr3~0clkctrl_outclk\) & ((\alu_a_out[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector136~2_combout\,
	datab => \alu_a_out[0]$latch~combout\,
	datac => \WideOr3~0clkctrl_outclk\,
	combout => \alu_a_out[0]$latch~combout\);

-- Location: IOIBUF_X115_Y41_N1
\SE_out6_in[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE_out6_in(1),
	o => \SE_out6_in[1]~input_o\);

-- Location: LCCOMB_X30_Y38_N4
\Selector59~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = (\Selector69~3_combout\ & ((\alu_c_in[1]~input_o\) # ((!\Selector69~1_combout\)))) # (!\Selector69~3_combout\ & (((\SE_out6_in[1]~input_o\ & \Selector69~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector69~3_combout\,
	datab => \alu_c_in[1]~input_o\,
	datac => \SE_out6_in[1]~input_o\,
	datad => \Selector69~1_combout\,
	combout => \Selector59~0_combout\);

-- Location: LCCOMB_X30_Y38_N6
Selector59 : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector59~combout\ = (\Selector59~0_combout\ & ((\Rf_D2_in[1]~input_o\) # ((\Selector69~0_combout\)))) # (!\Selector59~0_combout\ & (((!\Selector69~0_combout\ & \Rf_D1_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector59~0_combout\,
	datab => \Rf_D2_in[1]~input_o\,
	datac => \Selector69~0_combout\,
	datad => \Rf_D1_in[1]~input_o\,
	combout => \Selector59~combout\);

-- Location: LCCOMB_X26_Y36_N28
\T1[1]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T1(1) = (GLOBAL(\WideOr16~0clkctrl_outclk\) & (\Selector59~combout\)) # (!GLOBAL(\WideOr16~0clkctrl_outclk\) & ((T1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector59~combout\,
	datac => T1(1),
	datad => \WideOr16~0clkctrl_outclk\,
	combout => T1(1));

-- Location: LCCOMB_X29_Y33_N12
\Selector137~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector137~0_combout\ = (T3(1) & (((\WideOr4~combout\ & T1(1))) # (!\alu_a_out~4_combout\))) # (!T3(1) & (\WideOr4~combout\ & ((T1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T3(1),
	datab => \WideOr4~combout\,
	datac => \alu_a_out~4_combout\,
	datad => T1(1),
	combout => \Selector137~0_combout\);

-- Location: LCCOMB_X28_Y33_N20
\Selector137~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector137~1_combout\ = (\state.s13~q\ & ((\Ir_in[1]~input_o\) # ((\Rf_D1_in[1]~input_o\ & \state.s26~q\)))) # (!\state.s13~q\ & (\Rf_D1_in[1]~input_o\ & ((\state.s26~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s13~q\,
	datab => \Rf_D1_in[1]~input_o\,
	datac => \Ir_in[1]~input_o\,
	datad => \state.s26~q\,
	combout => \Selector137~1_combout\);

-- Location: LCCOMB_X29_Y33_N6
\Selector137~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector137~2_combout\ = (\Selector137~0_combout\) # ((\Selector137~1_combout\) # ((\PC_in[1]~input_o\ & \alu_a_out~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in[1]~input_o\,
	datab => \Selector137~0_combout\,
	datac => \alu_a_out~5_combout\,
	datad => \Selector137~1_combout\,
	combout => \Selector137~2_combout\);

-- Location: LCCOMB_X29_Y33_N0
\alu_a_out[1]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a_out[1]$latch~combout\ = (GLOBAL(\WideOr3~0clkctrl_outclk\) & (\Selector137~2_combout\)) # (!GLOBAL(\WideOr3~0clkctrl_outclk\) & ((\alu_a_out[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector137~2_combout\,
	datac => \WideOr3~0clkctrl_outclk\,
	datad => \alu_a_out[1]$latch~combout\,
	combout => \alu_a_out[1]$latch~combout\);

-- Location: IOIBUF_X11_Y0_N15
\Ir_in[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ir_in(2),
	o => \Ir_in[2]~input_o\);

-- Location: LCCOMB_X27_Y37_N20
\Selector138~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector138~1_combout\ = (\Rf_D1_in[2]~input_o\ & ((\state.s26~q\) # ((\Ir_in[2]~input_o\ & \state.s13~q\)))) # (!\Rf_D1_in[2]~input_o\ & (\Ir_in[2]~input_o\ & (\state.s13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D1_in[2]~input_o\,
	datab => \Ir_in[2]~input_o\,
	datac => \state.s13~q\,
	datad => \state.s26~q\,
	combout => \Selector138~1_combout\);

-- Location: IOIBUF_X0_Y61_N22
\SE_out6_in[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE_out6_in(2),
	o => \SE_out6_in[2]~input_o\);

-- Location: LCCOMB_X29_Y38_N20
\Selector60~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector60~0_combout\ = (\Selector69~1_combout\ & ((\Selector69~3_combout\ & (\alu_c_in[2]~input_o\)) # (!\Selector69~3_combout\ & ((\SE_out6_in[2]~input_o\))))) # (!\Selector69~1_combout\ & (((\Selector69~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_c_in[2]~input_o\,
	datab => \SE_out6_in[2]~input_o\,
	datac => \Selector69~1_combout\,
	datad => \Selector69~3_combout\,
	combout => \Selector60~0_combout\);

-- Location: LCCOMB_X29_Y38_N30
Selector60 : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector60~combout\ = (\Selector60~0_combout\ & ((\Rf_D2_in[2]~input_o\) # ((\Selector69~0_combout\)))) # (!\Selector60~0_combout\ & (((!\Selector69~0_combout\ & \Rf_D1_in[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector60~0_combout\,
	datab => \Rf_D2_in[2]~input_o\,
	datac => \Selector69~0_combout\,
	datad => \Rf_D1_in[2]~input_o\,
	combout => \Selector60~combout\);

-- Location: LCCOMB_X26_Y36_N30
\T1[2]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T1(2) = (GLOBAL(\WideOr16~0clkctrl_outclk\) & (\Selector60~combout\)) # (!GLOBAL(\WideOr16~0clkctrl_outclk\) & ((T1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector60~combout\,
	datac => T1(2),
	datad => \WideOr16~0clkctrl_outclk\,
	combout => T1(2));

-- Location: LCCOMB_X30_Y35_N16
\Selector138~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector138~0_combout\ = (T3(2) & (((\WideOr4~combout\ & T1(2))) # (!\alu_a_out~4_combout\))) # (!T3(2) & (\WideOr4~combout\ & ((T1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T3(2),
	datab => \WideOr4~combout\,
	datac => \alu_a_out~4_combout\,
	datad => T1(2),
	combout => \Selector138~0_combout\);

-- Location: LCCOMB_X30_Y35_N10
\Selector138~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector138~2_combout\ = (\Selector138~1_combout\) # ((\Selector138~0_combout\) # ((\PC_in[2]~input_o\ & \alu_a_out~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in[2]~input_o\,
	datab => \Selector138~1_combout\,
	datac => \Selector138~0_combout\,
	datad => \alu_a_out~5_combout\,
	combout => \Selector138~2_combout\);

-- Location: LCCOMB_X30_Y35_N8
\alu_a_out[2]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a_out[2]$latch~combout\ = (GLOBAL(\WideOr3~0clkctrl_outclk\) & (\Selector138~2_combout\)) # (!GLOBAL(\WideOr3~0clkctrl_outclk\) & ((\alu_a_out[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector138~2_combout\,
	datac => \WideOr3~0clkctrl_outclk\,
	datad => \alu_a_out[2]$latch~combout\,
	combout => \alu_a_out[2]$latch~combout\);

-- Location: IOIBUF_X5_Y73_N22
\Ir_in[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ir_in(3),
	o => \Ir_in[3]~input_o\);

-- Location: LCCOMB_X28_Y37_N24
\Selector139~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector139~1_combout\ = (\Ir_in[3]~input_o\ & ((\state.s13~q\) # ((\Rf_D1_in[3]~input_o\ & \state.s26~q\)))) # (!\Ir_in[3]~input_o\ & (((\Rf_D1_in[3]~input_o\ & \state.s26~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[3]~input_o\,
	datab => \state.s13~q\,
	datac => \Rf_D1_in[3]~input_o\,
	datad => \state.s26~q\,
	combout => \Selector139~1_combout\);

-- Location: IOIBUF_X9_Y0_N22
\SE_out6_in[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE_out6_in(3),
	o => \SE_out6_in[3]~input_o\);

-- Location: LCCOMB_X28_Y37_N4
\Selector61~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector61~0_combout\ = (\Selector69~3_combout\ & ((\alu_c_in[3]~input_o\) # ((!\Selector69~1_combout\)))) # (!\Selector69~3_combout\ & (((\Selector69~1_combout\ & \SE_out6_in[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_c_in[3]~input_o\,
	datab => \Selector69~3_combout\,
	datac => \Selector69~1_combout\,
	datad => \SE_out6_in[3]~input_o\,
	combout => \Selector61~0_combout\);

-- Location: LCCOMB_X28_Y37_N14
Selector61 : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector61~combout\ = (\Selector61~0_combout\ & ((\Rf_D2_in[3]~input_o\) # ((\Selector69~0_combout\)))) # (!\Selector61~0_combout\ & (((\Rf_D1_in[3]~input_o\ & !\Selector69~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector61~0_combout\,
	datab => \Rf_D2_in[3]~input_o\,
	datac => \Rf_D1_in[3]~input_o\,
	datad => \Selector69~0_combout\,
	combout => \Selector61~combout\);

-- Location: LCCOMB_X27_Y36_N14
\T1[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T1(3) = (GLOBAL(\WideOr16~0clkctrl_outclk\) & (\Selector61~combout\)) # (!GLOBAL(\WideOr16~0clkctrl_outclk\) & ((T1(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector61~combout\,
	datac => T1(3),
	datad => \WideOr16~0clkctrl_outclk\,
	combout => T1(3));

-- Location: LCCOMB_X30_Y33_N4
\Selector139~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector139~0_combout\ = (\alu_a_out~4_combout\ & (\WideOr4~combout\ & ((T1(3))))) # (!\alu_a_out~4_combout\ & ((T3(3)) # ((\WideOr4~combout\ & T1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a_out~4_combout\,
	datab => \WideOr4~combout\,
	datac => T3(3),
	datad => T1(3),
	combout => \Selector139~0_combout\);

-- Location: LCCOMB_X30_Y33_N14
\Selector139~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector139~2_combout\ = (\Selector139~1_combout\) # ((\Selector139~0_combout\) # ((\PC_in[3]~input_o\ & \alu_a_out~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in[3]~input_o\,
	datab => \Selector139~1_combout\,
	datac => \alu_a_out~5_combout\,
	datad => \Selector139~0_combout\,
	combout => \Selector139~2_combout\);

-- Location: LCCOMB_X30_Y33_N16
\alu_a_out[3]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a_out[3]$latch~combout\ = (GLOBAL(\WideOr3~0clkctrl_outclk\) & (\Selector139~2_combout\)) # (!GLOBAL(\WideOr3~0clkctrl_outclk\) & ((\alu_a_out[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector139~2_combout\,
	datac => \WideOr3~0clkctrl_outclk\,
	datad => \alu_a_out[3]$latch~combout\,
	combout => \alu_a_out[3]$latch~combout\);

-- Location: IOIBUF_X47_Y73_N8
\Ir_in[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ir_in(4),
	o => \Ir_in[4]~input_o\);

-- Location: LCCOMB_X27_Y35_N4
\Selector140~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector140~1_combout\ = (\Rf_D1_in[4]~input_o\ & ((\state.s26~q\) # ((\Ir_in[4]~input_o\ & \state.s13~q\)))) # (!\Rf_D1_in[4]~input_o\ & (\Ir_in[4]~input_o\ & (\state.s13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D1_in[4]~input_o\,
	datab => \Ir_in[4]~input_o\,
	datac => \state.s13~q\,
	datad => \state.s26~q\,
	combout => \Selector140~1_combout\);

-- Location: IOIBUF_X3_Y73_N8
\SE_out6_in[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE_out6_in(4),
	o => \SE_out6_in[4]~input_o\);

-- Location: LCCOMB_X27_Y38_N0
\Selector62~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector62~0_combout\ = (\Selector69~3_combout\ & (((\alu_c_in[4]~input_o\) # (!\Selector69~1_combout\)))) # (!\Selector69~3_combout\ & (\SE_out6_in[4]~input_o\ & (\Selector69~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SE_out6_in[4]~input_o\,
	datab => \Selector69~3_combout\,
	datac => \Selector69~1_combout\,
	datad => \alu_c_in[4]~input_o\,
	combout => \Selector62~0_combout\);

-- Location: LCCOMB_X27_Y38_N10
Selector62 : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector62~combout\ = (\Selector62~0_combout\ & ((\Rf_D2_in[4]~input_o\) # ((\Selector69~0_combout\)))) # (!\Selector62~0_combout\ & (((\Rf_D1_in[4]~input_o\ & !\Selector69~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector62~0_combout\,
	datab => \Rf_D2_in[4]~input_o\,
	datac => \Rf_D1_in[4]~input_o\,
	datad => \Selector69~0_combout\,
	combout => \Selector62~combout\);

-- Location: LCCOMB_X27_Y36_N16
\T1[4]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T1(4) = (GLOBAL(\WideOr16~0clkctrl_outclk\) & ((\Selector62~combout\))) # (!GLOBAL(\WideOr16~0clkctrl_outclk\) & (T1(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => T1(4),
	datac => \Selector62~combout\,
	datad => \WideOr16~0clkctrl_outclk\,
	combout => T1(4));

-- Location: LCCOMB_X27_Y35_N6
\Selector140~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector140~0_combout\ = (\WideOr4~combout\ & ((T1(4)) # ((!\alu_a_out~4_combout\ & T3(4))))) # (!\WideOr4~combout\ & (!\alu_a_out~4_combout\ & (T3(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~combout\,
	datab => \alu_a_out~4_combout\,
	datac => T3(4),
	datad => T1(4),
	combout => \Selector140~0_combout\);

-- Location: LCCOMB_X27_Y35_N14
\Selector140~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector140~2_combout\ = (\Selector140~1_combout\) # ((\Selector140~0_combout\) # ((\PC_in[4]~input_o\ & \alu_a_out~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in[4]~input_o\,
	datab => \Selector140~1_combout\,
	datac => \Selector140~0_combout\,
	datad => \alu_a_out~5_combout\,
	combout => \Selector140~2_combout\);

-- Location: LCCOMB_X27_Y35_N18
\alu_a_out[4]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a_out[4]$latch~combout\ = (GLOBAL(\WideOr3~0clkctrl_outclk\) & (\Selector140~2_combout\)) # (!GLOBAL(\WideOr3~0clkctrl_outclk\) & ((\alu_a_out[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector140~2_combout\,
	datac => \WideOr3~0clkctrl_outclk\,
	datad => \alu_a_out[4]$latch~combout\,
	combout => \alu_a_out[4]$latch~combout\);

-- Location: IOIBUF_X47_Y73_N15
\Ir_in[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ir_in(5),
	o => \Ir_in[5]~input_o\);

-- Location: LCCOMB_X31_Y37_N24
\Selector141~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector141~1_combout\ = (\Ir_in[5]~input_o\ & ((\state.s13~q\) # ((\Rf_D1_in[5]~input_o\ & \state.s26~q\)))) # (!\Ir_in[5]~input_o\ & (((\Rf_D1_in[5]~input_o\ & \state.s26~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[5]~input_o\,
	datab => \state.s13~q\,
	datac => \Rf_D1_in[5]~input_o\,
	datad => \state.s26~q\,
	combout => \Selector141~1_combout\);

-- Location: IOIBUF_X0_Y45_N15
\SE_out6_in[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE_out6_in(5),
	o => \SE_out6_in[5]~input_o\);

-- Location: LCCOMB_X27_Y38_N20
\Selector63~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector63~0_combout\ = (\Selector69~3_combout\ & ((\alu_c_in[5]~input_o\) # ((!\Selector69~1_combout\)))) # (!\Selector69~3_combout\ & (((\Selector69~1_combout\ & \SE_out6_in[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_c_in[5]~input_o\,
	datab => \Selector69~3_combout\,
	datac => \Selector69~1_combout\,
	datad => \SE_out6_in[5]~input_o\,
	combout => \Selector63~0_combout\);

-- Location: LCCOMB_X27_Y38_N26
Selector63 : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector63~combout\ = (\Selector63~0_combout\ & (((\Rf_D2_in[5]~input_o\) # (\Selector69~0_combout\)))) # (!\Selector63~0_combout\ & (\Rf_D1_in[5]~input_o\ & ((!\Selector69~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D1_in[5]~input_o\,
	datab => \Rf_D2_in[5]~input_o\,
	datac => \Selector63~0_combout\,
	datad => \Selector69~0_combout\,
	combout => \Selector63~combout\);

-- Location: LCCOMB_X27_Y36_N26
\T1[5]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T1(5) = (GLOBAL(\WideOr16~0clkctrl_outclk\) & (\Selector63~combout\)) # (!GLOBAL(\WideOr16~0clkctrl_outclk\) & ((T1(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~combout\,
	datac => T1(5),
	datad => \WideOr16~0clkctrl_outclk\,
	combout => T1(5));

-- Location: LCCOMB_X30_Y33_N28
\Selector141~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector141~0_combout\ = (T3(5) & (((\WideOr4~combout\ & T1(5))) # (!\alu_a_out~4_combout\))) # (!T3(5) & (\WideOr4~combout\ & ((T1(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T3(5),
	datab => \WideOr4~combout\,
	datac => \alu_a_out~4_combout\,
	datad => T1(5),
	combout => \Selector141~0_combout\);

-- Location: LCCOMB_X30_Y33_N18
\Selector141~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector141~2_combout\ = (\Selector141~1_combout\) # ((\Selector141~0_combout\) # ((\PC_in[5]~input_o\ & \alu_a_out~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in[5]~input_o\,
	datab => \Selector141~1_combout\,
	datac => \alu_a_out~5_combout\,
	datad => \Selector141~0_combout\,
	combout => \Selector141~2_combout\);

-- Location: LCCOMB_X30_Y33_N30
\alu_a_out[5]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a_out[5]$latch~combout\ = (GLOBAL(\WideOr3~0clkctrl_outclk\) & ((\Selector141~2_combout\))) # (!GLOBAL(\WideOr3~0clkctrl_outclk\) & (\alu_a_out[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a_out[5]$latch~combout\,
	datab => \Selector141~2_combout\,
	datac => \WideOr3~0clkctrl_outclk\,
	combout => \alu_a_out[5]$latch~combout\);

-- Location: IOIBUF_X0_Y44_N8
\Ir_in[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ir_in(6),
	o => \Ir_in[6]~input_o\);

-- Location: LCCOMB_X27_Y37_N26
\Selector142~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector142~1_combout\ = (\Rf_D1_in[6]~input_o\ & ((\state.s26~q\) # ((\state.s13~q\ & \Ir_in[6]~input_o\)))) # (!\Rf_D1_in[6]~input_o\ & (\state.s13~q\ & ((\Ir_in[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D1_in[6]~input_o\,
	datab => \state.s13~q\,
	datac => \state.s26~q\,
	datad => \Ir_in[6]~input_o\,
	combout => \Selector142~1_combout\);

-- Location: IOIBUF_X79_Y0_N8
\SE_out6_in[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE_out6_in(6),
	o => \SE_out6_in[6]~input_o\);

-- Location: LCCOMB_X30_Y38_N28
\Selector64~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector64~0_combout\ = (\Selector69~3_combout\ & (((\alu_c_in[6]~input_o\) # (!\Selector69~1_combout\)))) # (!\Selector69~3_combout\ & (\SE_out6_in[6]~input_o\ & ((\Selector69~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector69~3_combout\,
	datab => \SE_out6_in[6]~input_o\,
	datac => \alu_c_in[6]~input_o\,
	datad => \Selector69~1_combout\,
	combout => \Selector64~0_combout\);

-- Location: LCCOMB_X30_Y38_N26
Selector64 : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector64~combout\ = (\Selector64~0_combout\ & (((\Selector69~0_combout\) # (\Rf_D2_in[6]~input_o\)))) # (!\Selector64~0_combout\ & (\Rf_D1_in[6]~input_o\ & (!\Selector69~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D1_in[6]~input_o\,
	datab => \Selector64~0_combout\,
	datac => \Selector69~0_combout\,
	datad => \Rf_D2_in[6]~input_o\,
	combout => \Selector64~combout\);

-- Location: LCCOMB_X31_Y36_N2
\T1[6]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T1(6) = (GLOBAL(\WideOr16~0clkctrl_outclk\) & (\Selector64~combout\)) # (!GLOBAL(\WideOr16~0clkctrl_outclk\) & ((T1(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector64~combout\,
	datac => T1(6),
	datad => \WideOr16~0clkctrl_outclk\,
	combout => T1(6));

-- Location: LCCOMB_X31_Y36_N30
\Selector142~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector142~0_combout\ = (T3(6) & (((\WideOr4~combout\ & T1(6))) # (!\alu_a_out~4_combout\))) # (!T3(6) & (((\WideOr4~combout\ & T1(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T3(6),
	datab => \alu_a_out~4_combout\,
	datac => \WideOr4~combout\,
	datad => T1(6),
	combout => \Selector142~0_combout\);

-- Location: LCCOMB_X31_Y36_N16
\Selector142~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector142~2_combout\ = (\Selector142~1_combout\) # ((\Selector142~0_combout\) # ((\PC_in[6]~input_o\ & \alu_a_out~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in[6]~input_o\,
	datab => \Selector142~1_combout\,
	datac => \Selector142~0_combout\,
	datad => \alu_a_out~5_combout\,
	combout => \Selector142~2_combout\);

-- Location: LCCOMB_X31_Y36_N26
\alu_a_out[6]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a_out[6]$latch~combout\ = (GLOBAL(\WideOr3~0clkctrl_outclk\) & (\Selector142~2_combout\)) # (!GLOBAL(\WideOr3~0clkctrl_outclk\) & ((\alu_a_out[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector142~2_combout\,
	datac => \alu_a_out[6]$latch~combout\,
	datad => \WideOr3~0clkctrl_outclk\,
	combout => \alu_a_out[6]$latch~combout\);

-- Location: IOIBUF_X0_Y63_N22
\SE_out6_in[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE_out6_in(7),
	o => \SE_out6_in[7]~input_o\);

-- Location: LCCOMB_X28_Y35_N8
\Selector65~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector65~0_combout\ = (\Selector69~1_combout\ & ((\Selector69~3_combout\ & ((\alu_c_in[7]~input_o\))) # (!\Selector69~3_combout\ & (\SE_out6_in[7]~input_o\)))) # (!\Selector69~1_combout\ & (((\Selector69~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SE_out6_in[7]~input_o\,
	datab => \alu_c_in[7]~input_o\,
	datac => \Selector69~1_combout\,
	datad => \Selector69~3_combout\,
	combout => \Selector65~0_combout\);

-- Location: LCCOMB_X28_Y35_N4
Selector65 : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector65~combout\ = (\Selector65~0_combout\ & (((\Rf_D2_in[7]~input_o\) # (\Selector69~0_combout\)))) # (!\Selector65~0_combout\ & (\Rf_D1_in[7]~input_o\ & ((!\Selector69~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D1_in[7]~input_o\,
	datab => \Rf_D2_in[7]~input_o\,
	datac => \Selector65~0_combout\,
	datad => \Selector69~0_combout\,
	combout => \Selector65~combout\);

-- Location: LCCOMB_X31_Y35_N10
\T1[7]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T1(7) = (GLOBAL(\WideOr16~0clkctrl_outclk\) & ((\Selector65~combout\))) # (!GLOBAL(\WideOr16~0clkctrl_outclk\) & (T1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T1(7),
	datac => \Selector65~combout\,
	datad => \WideOr16~0clkctrl_outclk\,
	combout => T1(7));

-- Location: LCCOMB_X31_Y35_N12
\Selector143~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector143~0_combout\ = (\WideOr4~combout\ & ((T1(7)) # ((!\alu_a_out~4_combout\ & T3(7))))) # (!\WideOr4~combout\ & (!\alu_a_out~4_combout\ & (T3(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~combout\,
	datab => \alu_a_out~4_combout\,
	datac => T3(7),
	datad => T1(7),
	combout => \Selector143~0_combout\);

-- Location: IOIBUF_X42_Y73_N8
\Ir_in[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ir_in(7),
	o => \Ir_in[7]~input_o\);

-- Location: LCCOMB_X31_Y35_N22
\Selector143~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector143~1_combout\ = (\Ir_in[7]~input_o\ & ((\state.s13~q\) # ((\Rf_D1_in[7]~input_o\ & \state.s26~q\)))) # (!\Ir_in[7]~input_o\ & (((\Rf_D1_in[7]~input_o\ & \state.s26~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[7]~input_o\,
	datab => \state.s13~q\,
	datac => \Rf_D1_in[7]~input_o\,
	datad => \state.s26~q\,
	combout => \Selector143~1_combout\);

-- Location: LCCOMB_X31_Y35_N24
\Selector143~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector143~2_combout\ = (\Selector143~0_combout\) # ((\Selector143~1_combout\) # ((\PC_in[7]~input_o\ & \alu_a_out~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in[7]~input_o\,
	datab => \Selector143~0_combout\,
	datac => \Selector143~1_combout\,
	datad => \alu_a_out~5_combout\,
	combout => \Selector143~2_combout\);

-- Location: LCCOMB_X31_Y35_N16
\alu_a_out[7]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a_out[7]$latch~combout\ = (GLOBAL(\WideOr3~0clkctrl_outclk\) & ((\Selector143~2_combout\))) # (!GLOBAL(\WideOr3~0clkctrl_outclk\) & (\alu_a_out[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_a_out[7]$latch~combout\,
	datac => \Selector143~2_combout\,
	datad => \WideOr3~0clkctrl_outclk\,
	combout => \alu_a_out[7]$latch~combout\);

-- Location: LCCOMB_X31_Y35_N6
\Selector144~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector144~1_combout\ = (\Rf_D1_in[8]~input_o\ & ((\state.s26~q\) # ((\Ir_in[7]~input_o\ & \state.s13~q\)))) # (!\Rf_D1_in[8]~input_o\ & (\Ir_in[7]~input_o\ & (\state.s13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D1_in[8]~input_o\,
	datab => \Ir_in[7]~input_o\,
	datac => \state.s13~q\,
	datad => \state.s26~q\,
	combout => \Selector144~1_combout\);

-- Location: IOIBUF_X47_Y73_N1
\SE_out6_in[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE_out6_in(8),
	o => \SE_out6_in[8]~input_o\);

-- Location: LCCOMB_X30_Y38_N20
\Selector66~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector66~0_combout\ = (\Selector69~3_combout\ & ((\alu_c_in[8]~input_o\) # ((!\Selector69~1_combout\)))) # (!\Selector69~3_combout\ & (((\SE_out6_in[8]~input_o\ & \Selector69~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector69~3_combout\,
	datab => \alu_c_in[8]~input_o\,
	datac => \SE_out6_in[8]~input_o\,
	datad => \Selector69~1_combout\,
	combout => \Selector66~0_combout\);

-- Location: LCCOMB_X30_Y38_N30
Selector66 : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector66~combout\ = (\Selector66~0_combout\ & ((\Rf_D2_in[8]~input_o\) # ((\Selector69~0_combout\)))) # (!\Selector66~0_combout\ & (((!\Selector69~0_combout\ & \Rf_D1_in[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D2_in[8]~input_o\,
	datab => \Selector66~0_combout\,
	datac => \Selector69~0_combout\,
	datad => \Rf_D1_in[8]~input_o\,
	combout => \Selector66~combout\);

-- Location: LCCOMB_X31_Y36_N24
\T1[8]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T1(8) = (GLOBAL(\WideOr16~0clkctrl_outclk\) & ((\Selector66~combout\))) # (!GLOBAL(\WideOr16~0clkctrl_outclk\) & (T1(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => T1(8),
	datac => \Selector66~combout\,
	datad => \WideOr16~0clkctrl_outclk\,
	combout => T1(8));

-- Location: LCCOMB_X31_Y36_N18
\Selector144~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector144~0_combout\ = (T3(8) & (((\WideOr4~combout\ & T1(8))) # (!\alu_a_out~4_combout\))) # (!T3(8) & (((\WideOr4~combout\ & T1(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T3(8),
	datab => \alu_a_out~4_combout\,
	datac => \WideOr4~combout\,
	datad => T1(8),
	combout => \Selector144~0_combout\);

-- Location: LCCOMB_X31_Y36_N8
\Selector144~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector144~2_combout\ = (\Selector144~1_combout\) # ((\Selector144~0_combout\) # ((\PC_in[8]~input_o\ & \alu_a_out~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in[8]~input_o\,
	datab => \Selector144~1_combout\,
	datac => \alu_a_out~5_combout\,
	datad => \Selector144~0_combout\,
	combout => \Selector144~2_combout\);

-- Location: LCCOMB_X31_Y36_N0
\alu_a_out[8]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a_out[8]$latch~combout\ = (GLOBAL(\WideOr3~0clkctrl_outclk\) & (\Selector144~2_combout\)) # (!GLOBAL(\WideOr3~0clkctrl_outclk\) & ((\alu_a_out[8]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector144~2_combout\,
	datab => \alu_a_out[8]$latch~combout\,
	datad => \WideOr3~0clkctrl_outclk\,
	combout => \alu_a_out[8]$latch~combout\);

-- Location: IOIBUF_X31_Y73_N1
\SE_out6_in[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE_out6_in(9),
	o => \SE_out6_in[9]~input_o\);

-- Location: LCCOMB_X28_Y37_N28
\Selector67~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector67~0_combout\ = (\Selector69~3_combout\ & (((\alu_c_in[9]~input_o\) # (!\Selector69~1_combout\)))) # (!\Selector69~3_combout\ & (\SE_out6_in[9]~input_o\ & (\Selector69~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SE_out6_in[9]~input_o\,
	datab => \Selector69~3_combout\,
	datac => \Selector69~1_combout\,
	datad => \alu_c_in[9]~input_o\,
	combout => \Selector67~0_combout\);

-- Location: LCCOMB_X28_Y37_N22
Selector67 : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector67~combout\ = (\Selector67~0_combout\ & (((\Rf_D2_in[9]~input_o\) # (\Selector69~0_combout\)))) # (!\Selector67~0_combout\ & (\Rf_D1_in[9]~input_o\ & ((!\Selector69~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector67~0_combout\,
	datab => \Rf_D1_in[9]~input_o\,
	datac => \Rf_D2_in[9]~input_o\,
	datad => \Selector69~0_combout\,
	combout => \Selector67~combout\);

-- Location: LCCOMB_X27_Y36_N8
\T1[9]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T1(9) = (GLOBAL(\WideOr16~0clkctrl_outclk\) & (\Selector67~combout\)) # (!GLOBAL(\WideOr16~0clkctrl_outclk\) & ((T1(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector67~combout\,
	datac => T1(9),
	datad => \WideOr16~0clkctrl_outclk\,
	combout => T1(9));

-- Location: LCCOMB_X29_Y33_N20
\Selector145~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector145~0_combout\ = (T3(9) & (((\WideOr4~combout\ & T1(9))) # (!\alu_a_out~4_combout\))) # (!T3(9) & (\WideOr4~combout\ & ((T1(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T3(9),
	datab => \WideOr4~combout\,
	datac => \alu_a_out~4_combout\,
	datad => T1(9),
	combout => \Selector145~0_combout\);

-- Location: LCCOMB_X28_Y34_N24
\Selector145~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector145~1_combout\ = (\Rf_D1_in[9]~input_o\ & ((\state.s26~q\) # ((\Ir_in[7]~input_o\ & \state.s13~q\)))) # (!\Rf_D1_in[9]~input_o\ & (\Ir_in[7]~input_o\ & ((\state.s13~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D1_in[9]~input_o\,
	datab => \Ir_in[7]~input_o\,
	datac => \state.s26~q\,
	datad => \state.s13~q\,
	combout => \Selector145~1_combout\);

-- Location: LCCOMB_X29_Y33_N30
\Selector145~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector145~2_combout\ = (\Selector145~0_combout\) # ((\Selector145~1_combout\) # ((\PC_in[9]~input_o\ & \alu_a_out~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector145~0_combout\,
	datab => \PC_in[9]~input_o\,
	datac => \alu_a_out~5_combout\,
	datad => \Selector145~1_combout\,
	combout => \Selector145~2_combout\);

-- Location: LCCOMB_X29_Y33_N26
\alu_a_out[9]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a_out[9]$latch~combout\ = (GLOBAL(\WideOr3~0clkctrl_outclk\) & ((\Selector145~2_combout\))) # (!GLOBAL(\WideOr3~0clkctrl_outclk\) & (\alu_a_out[9]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a_out[9]$latch~combout\,
	datab => \Selector145~2_combout\,
	datac => \WideOr3~0clkctrl_outclk\,
	combout => \alu_a_out[9]$latch~combout\);

-- Location: LCCOMB_X28_Y34_N30
\Selector146~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector146~1_combout\ = (\Rf_D1_in[10]~input_o\ & ((\state.s26~q\) # ((\Ir_in[7]~input_o\ & \state.s13~q\)))) # (!\Rf_D1_in[10]~input_o\ & (\Ir_in[7]~input_o\ & ((\state.s13~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D1_in[10]~input_o\,
	datab => \Ir_in[7]~input_o\,
	datac => \state.s26~q\,
	datad => \state.s13~q\,
	combout => \Selector146~1_combout\);

-- Location: IOIBUF_X0_Y14_N1
\SE_out6_in[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE_out6_in(10),
	o => \SE_out6_in[10]~input_o\);

-- Location: LCCOMB_X29_Y36_N10
\Selector68~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector68~0_combout\ = (\Selector69~1_combout\ & ((\Selector69~3_combout\ & ((\alu_c_in[10]~input_o\))) # (!\Selector69~3_combout\ & (\SE_out6_in[10]~input_o\)))) # (!\Selector69~1_combout\ & (((\Selector69~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SE_out6_in[10]~input_o\,
	datab => \alu_c_in[10]~input_o\,
	datac => \Selector69~1_combout\,
	datad => \Selector69~3_combout\,
	combout => \Selector68~0_combout\);

-- Location: LCCOMB_X29_Y36_N18
Selector68 : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector68~combout\ = (\Selector68~0_combout\ & ((\Selector69~0_combout\) # ((\Rf_D2_in[10]~input_o\)))) # (!\Selector68~0_combout\ & (!\Selector69~0_combout\ & (\Rf_D1_in[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector68~0_combout\,
	datab => \Selector69~0_combout\,
	datac => \Rf_D1_in[10]~input_o\,
	datad => \Rf_D2_in[10]~input_o\,
	combout => \Selector68~combout\);

-- Location: LCCOMB_X27_Y36_N30
\T1[10]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T1(10) = (GLOBAL(\WideOr16~0clkctrl_outclk\) & ((\Selector68~combout\))) # (!GLOBAL(\WideOr16~0clkctrl_outclk\) & (T1(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T1(10),
	datac => \Selector68~combout\,
	datad => \WideOr16~0clkctrl_outclk\,
	combout => T1(10));

-- Location: LCCOMB_X28_Y33_N2
\Selector146~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector146~0_combout\ = (\alu_a_out~4_combout\ & (((\WideOr4~combout\ & T1(10))))) # (!\alu_a_out~4_combout\ & ((T3(10)) # ((\WideOr4~combout\ & T1(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a_out~4_combout\,
	datab => T3(10),
	datac => \WideOr4~combout\,
	datad => T1(10),
	combout => \Selector146~0_combout\);

-- Location: LCCOMB_X28_Y33_N16
\Selector146~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector146~2_combout\ = (\Selector146~1_combout\) # ((\Selector146~0_combout\) # ((\PC_in[10]~input_o\ & \alu_a_out~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector146~1_combout\,
	datab => \PC_in[10]~input_o\,
	datac => \Selector146~0_combout\,
	datad => \alu_a_out~5_combout\,
	combout => \Selector146~2_combout\);

-- Location: LCCOMB_X28_Y33_N14
\alu_a_out[10]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a_out[10]$latch~combout\ = (GLOBAL(\WideOr3~0clkctrl_outclk\) & (\Selector146~2_combout\)) # (!GLOBAL(\WideOr3~0clkctrl_outclk\) & ((\alu_a_out[10]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector146~2_combout\,
	datac => \alu_a_out[10]$latch~combout\,
	datad => \WideOr3~0clkctrl_outclk\,
	combout => \alu_a_out[10]$latch~combout\);

-- Location: LCCOMB_X31_Y35_N20
\Selector147~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector147~1_combout\ = (\Rf_D1_in[11]~input_o\ & ((\state.s26~q\) # ((\state.s13~q\ & \Ir_in[7]~input_o\)))) # (!\Rf_D1_in[11]~input_o\ & (\state.s13~q\ & (\Ir_in[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D1_in[11]~input_o\,
	datab => \state.s13~q\,
	datac => \Ir_in[7]~input_o\,
	datad => \state.s26~q\,
	combout => \Selector147~1_combout\);

-- Location: IOIBUF_X0_Y65_N15
\SE_out6_in[11]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE_out6_in(11),
	o => \SE_out6_in[11]~input_o\);

-- Location: LCCOMB_X28_Y36_N26
\Selector69~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector69~4_combout\ = (\Selector69~1_combout\ & ((\Selector69~3_combout\ & ((\alu_c_in[11]~input_o\))) # (!\Selector69~3_combout\ & (\SE_out6_in[11]~input_o\)))) # (!\Selector69~1_combout\ & (((\Selector69~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SE_out6_in[11]~input_o\,
	datab => \Selector69~1_combout\,
	datac => \Selector69~3_combout\,
	datad => \alu_c_in[11]~input_o\,
	combout => \Selector69~4_combout\);

-- Location: LCCOMB_X28_Y36_N12
Selector69 : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector69~combout\ = (\Selector69~4_combout\ & ((\Rf_D2_in[11]~input_o\) # ((\Selector69~0_combout\)))) # (!\Selector69~4_combout\ & (((\Rf_D1_in[11]~input_o\ & !\Selector69~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D2_in[11]~input_o\,
	datab => \Rf_D1_in[11]~input_o\,
	datac => \Selector69~4_combout\,
	datad => \Selector69~0_combout\,
	combout => \Selector69~combout\);

-- Location: LCCOMB_X27_Y36_N0
\T1[11]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T1(11) = (GLOBAL(\WideOr16~0clkctrl_outclk\) & ((\Selector69~combout\))) # (!GLOBAL(\WideOr16~0clkctrl_outclk\) & (T1(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => T1(11),
	datac => \Selector69~combout\,
	datad => \WideOr16~0clkctrl_outclk\,
	combout => T1(11));

-- Location: LCCOMB_X30_Y35_N4
\Selector147~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector147~0_combout\ = (\alu_a_out~4_combout\ & (\WideOr4~combout\ & ((T1(11))))) # (!\alu_a_out~4_combout\ & ((T3(11)) # ((\WideOr4~combout\ & T1(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a_out~4_combout\,
	datab => \WideOr4~combout\,
	datac => T3(11),
	datad => T1(11),
	combout => \Selector147~0_combout\);

-- Location: LCCOMB_X30_Y35_N2
\Selector147~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector147~2_combout\ = (\Selector147~1_combout\) # ((\Selector147~0_combout\) # ((\PC_in[11]~input_o\ & \alu_a_out~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in[11]~input_o\,
	datab => \Selector147~1_combout\,
	datac => \alu_a_out~5_combout\,
	datad => \Selector147~0_combout\,
	combout => \Selector147~2_combout\);

-- Location: LCCOMB_X30_Y35_N14
\alu_a_out[11]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a_out[11]$latch~combout\ = (GLOBAL(\WideOr3~0clkctrl_outclk\) & (\Selector147~2_combout\)) # (!GLOBAL(\WideOr3~0clkctrl_outclk\) & ((\alu_a_out[11]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector147~2_combout\,
	datab => \alu_a_out[11]$latch~combout\,
	datac => \WideOr3~0clkctrl_outclk\,
	combout => \alu_a_out[11]$latch~combout\);

-- Location: LCCOMB_X28_Y35_N16
\Selector148~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector148~1_combout\ = (\Rf_D1_in[12]~input_o\ & ((\state.s26~q\) # ((\Ir_in[7]~input_o\ & \state.s13~q\)))) # (!\Rf_D1_in[12]~input_o\ & (\Ir_in[7]~input_o\ & ((\state.s13~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D1_in[12]~input_o\,
	datab => \Ir_in[7]~input_o\,
	datac => \state.s26~q\,
	datad => \state.s13~q\,
	combout => \Selector148~1_combout\);

-- Location: IOIBUF_X0_Y51_N15
\SE_out6_in[12]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE_out6_in(12),
	o => \SE_out6_in[12]~input_o\);

-- Location: LCCOMB_X28_Y36_N22
\Selector70~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector70~0_combout\ = (\Selector69~1_combout\ & ((\Selector69~3_combout\ & ((\alu_c_in[12]~input_o\))) # (!\Selector69~3_combout\ & (\SE_out6_in[12]~input_o\)))) # (!\Selector69~1_combout\ & (((\Selector69~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SE_out6_in[12]~input_o\,
	datab => \Selector69~1_combout\,
	datac => \Selector69~3_combout\,
	datad => \alu_c_in[12]~input_o\,
	combout => \Selector70~0_combout\);

-- Location: LCCOMB_X28_Y36_N24
Selector70 : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector70~combout\ = (\Selector70~0_combout\ & (((\Rf_D2_in[12]~input_o\) # (\Selector69~0_combout\)))) # (!\Selector70~0_combout\ & (\Rf_D1_in[12]~input_o\ & ((!\Selector69~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D1_in[12]~input_o\,
	datab => \Rf_D2_in[12]~input_o\,
	datac => \Selector70~0_combout\,
	datad => \Selector69~0_combout\,
	combout => \Selector70~combout\);

-- Location: LCCOMB_X27_Y36_N18
\T1[12]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T1(12) = (GLOBAL(\WideOr16~0clkctrl_outclk\) & ((\Selector70~combout\))) # (!GLOBAL(\WideOr16~0clkctrl_outclk\) & (T1(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => T1(12),
	datac => \Selector70~combout\,
	datad => \WideOr16~0clkctrl_outclk\,
	combout => T1(12));

-- Location: LCCOMB_X28_Y35_N12
\Selector148~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector148~0_combout\ = (\alu_a_out~4_combout\ & (\WideOr4~combout\ & ((T1(12))))) # (!\alu_a_out~4_combout\ & ((T3(12)) # ((\WideOr4~combout\ & T1(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a_out~4_combout\,
	datab => \WideOr4~combout\,
	datac => T3(12),
	datad => T1(12),
	combout => \Selector148~0_combout\);

-- Location: LCCOMB_X28_Y35_N6
\Selector148~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector148~2_combout\ = (\Selector148~1_combout\) # ((\Selector148~0_combout\) # ((\PC_in[12]~input_o\ & \alu_a_out~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector148~1_combout\,
	datab => \PC_in[12]~input_o\,
	datac => \Selector148~0_combout\,
	datad => \alu_a_out~5_combout\,
	combout => \Selector148~2_combout\);

-- Location: LCCOMB_X28_Y35_N0
\alu_a_out[12]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a_out[12]$latch~combout\ = (GLOBAL(\WideOr3~0clkctrl_outclk\) & (\Selector148~2_combout\)) # (!GLOBAL(\WideOr3~0clkctrl_outclk\) & ((\alu_a_out[12]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector148~2_combout\,
	datac => \WideOr3~0clkctrl_outclk\,
	datad => \alu_a_out[12]$latch~combout\,
	combout => \alu_a_out[12]$latch~combout\);

-- Location: LCCOMB_X31_Y35_N30
\Selector149~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector149~1_combout\ = (\Rf_D1_in[13]~input_o\ & ((\state.s26~q\) # ((\Ir_in[7]~input_o\ & \state.s13~q\)))) # (!\Rf_D1_in[13]~input_o\ & (\Ir_in[7]~input_o\ & (\state.s13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D1_in[13]~input_o\,
	datab => \Ir_in[7]~input_o\,
	datac => \state.s13~q\,
	datad => \state.s26~q\,
	combout => \Selector149~1_combout\);

-- Location: IOIBUF_X0_Y14_N8
\SE_out6_in[13]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE_out6_in(13),
	o => \SE_out6_in[13]~input_o\);

-- Location: LCCOMB_X28_Y36_N18
\Selector71~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector71~0_combout\ = (\Selector69~1_combout\ & ((\Selector69~3_combout\ & (\alu_c_in[13]~input_o\)) # (!\Selector69~3_combout\ & ((\SE_out6_in[13]~input_o\))))) # (!\Selector69~1_combout\ & (((\Selector69~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_c_in[13]~input_o\,
	datab => \Selector69~1_combout\,
	datac => \Selector69~3_combout\,
	datad => \SE_out6_in[13]~input_o\,
	combout => \Selector71~0_combout\);

-- Location: LCCOMB_X28_Y36_N28
Selector71 : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector71~combout\ = (\Selector71~0_combout\ & ((\Rf_D2_in[13]~input_o\) # ((\Selector69~0_combout\)))) # (!\Selector71~0_combout\ & (((\Rf_D1_in[13]~input_o\ & !\Selector69~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D2_in[13]~input_o\,
	datab => \Selector71~0_combout\,
	datac => \Rf_D1_in[13]~input_o\,
	datad => \Selector69~0_combout\,
	combout => \Selector71~combout\);

-- Location: LCCOMB_X27_Y36_N12
\T1[13]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T1(13) = (GLOBAL(\WideOr16~0clkctrl_outclk\) & ((\Selector71~combout\))) # (!GLOBAL(\WideOr16~0clkctrl_outclk\) & (T1(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T1(13),
	datac => \Selector71~combout\,
	datad => \WideOr16~0clkctrl_outclk\,
	combout => T1(13));

-- Location: LCCOMB_X32_Y36_N8
\Selector149~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector149~0_combout\ = (\alu_a_out~4_combout\ & (((\WideOr4~combout\ & T1(13))))) # (!\alu_a_out~4_combout\ & ((T3(13)) # ((\WideOr4~combout\ & T1(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a_out~4_combout\,
	datab => T3(13),
	datac => \WideOr4~combout\,
	datad => T1(13),
	combout => \Selector149~0_combout\);

-- Location: LCCOMB_X31_Y36_N14
\Selector149~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector149~2_combout\ = (\Selector149~1_combout\) # ((\Selector149~0_combout\) # ((\alu_a_out~5_combout\ & \PC_in[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector149~1_combout\,
	datab => \Selector149~0_combout\,
	datac => \alu_a_out~5_combout\,
	datad => \PC_in[13]~input_o\,
	combout => \Selector149~2_combout\);

-- Location: LCCOMB_X31_Y36_N22
\alu_a_out[13]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a_out[13]$latch~combout\ = (GLOBAL(\WideOr3~0clkctrl_outclk\) & ((\Selector149~2_combout\))) # (!GLOBAL(\WideOr3~0clkctrl_outclk\) & (\alu_a_out[13]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a_out[13]$latch~combout\,
	datac => \Selector149~2_combout\,
	datad => \WideOr3~0clkctrl_outclk\,
	combout => \alu_a_out[13]$latch~combout\);

-- Location: LCCOMB_X31_Y35_N8
\Selector150~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector150~1_combout\ = (\Rf_D1_in[14]~input_o\ & ((\state.s26~q\) # ((\Ir_in[7]~input_o\ & \state.s13~q\)))) # (!\Rf_D1_in[14]~input_o\ & (\Ir_in[7]~input_o\ & (\state.s13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D1_in[14]~input_o\,
	datab => \Ir_in[7]~input_o\,
	datac => \state.s13~q\,
	datad => \state.s26~q\,
	combout => \Selector150~1_combout\);

-- Location: IOIBUF_X115_Y37_N15
\SE_out6_in[14]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE_out6_in(14),
	o => \SE_out6_in[14]~input_o\);

-- Location: LCCOMB_X30_Y38_N0
\Selector72~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector72~0_combout\ = (\Selector69~3_combout\ & ((\alu_c_in[14]~input_o\) # ((!\Selector69~1_combout\)))) # (!\Selector69~3_combout\ & (((\SE_out6_in[14]~input_o\ & \Selector69~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector69~3_combout\,
	datab => \alu_c_in[14]~input_o\,
	datac => \SE_out6_in[14]~input_o\,
	datad => \Selector69~1_combout\,
	combout => \Selector72~0_combout\);

-- Location: LCCOMB_X30_Y38_N10
Selector72 : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector72~combout\ = (\Selector69~0_combout\ & (((\Selector72~0_combout\)))) # (!\Selector69~0_combout\ & ((\Selector72~0_combout\ & (\Rf_D2_in[14]~input_o\)) # (!\Selector72~0_combout\ & ((\Rf_D1_in[14]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_D2_in[14]~input_o\,
	datab => \Rf_D1_in[14]~input_o\,
	datac => \Selector69~0_combout\,
	datad => \Selector72~0_combout\,
	combout => \Selector72~combout\);

-- Location: LCCOMB_X31_Y36_N6
\T1[14]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T1(14) = (GLOBAL(\WideOr16~0clkctrl_outclk\) & ((\Selector72~combout\))) # (!GLOBAL(\WideOr16~0clkctrl_outclk\) & (T1(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T1(14),
	datab => \Selector72~combout\,
	datad => \WideOr16~0clkctrl_outclk\,
	combout => T1(14));

-- Location: LCCOMB_X31_Y36_N12
\Selector150~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector150~0_combout\ = (T3(14) & (((\WideOr4~combout\ & T1(14))) # (!\alu_a_out~4_combout\))) # (!T3(14) & (((\WideOr4~combout\ & T1(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T3(14),
	datab => \alu_a_out~4_combout\,
	datac => \WideOr4~combout\,
	datad => T1(14),
	combout => \Selector150~0_combout\);

-- Location: LCCOMB_X31_Y36_N10
\Selector150~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector150~2_combout\ = (\Selector150~1_combout\) # ((\Selector150~0_combout\) # ((\PC_in[14]~input_o\ & \alu_a_out~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in[14]~input_o\,
	datab => \Selector150~1_combout\,
	datac => \Selector150~0_combout\,
	datad => \alu_a_out~5_combout\,
	combout => \Selector150~2_combout\);

-- Location: LCCOMB_X31_Y36_N4
\alu_a_out[14]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a_out[14]$latch~combout\ = (GLOBAL(\WideOr3~0clkctrl_outclk\) & (\Selector150~2_combout\)) # (!GLOBAL(\WideOr3~0clkctrl_outclk\) & ((\alu_a_out[14]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector150~2_combout\,
	datac => \alu_a_out[14]$latch~combout\,
	datad => \WideOr3~0clkctrl_outclk\,
	combout => \alu_a_out[14]$latch~combout\);

-- Location: LCCOMB_X28_Y34_N10
\Selector151~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector151~1_combout\ = (\state.s13~q\ & ((\Ir_in[7]~input_o\) # ((\state.s26~q\ & \Rf_D1_in[15]~input_o\)))) # (!\state.s13~q\ & (((\state.s26~q\ & \Rf_D1_in[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s13~q\,
	datab => \Ir_in[7]~input_o\,
	datac => \state.s26~q\,
	datad => \Rf_D1_in[15]~input_o\,
	combout => \Selector151~1_combout\);

-- Location: IOIBUF_X20_Y0_N15
\SE_out6_in[15]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE_out6_in(15),
	o => \SE_out6_in[15]~input_o\);

-- Location: LCCOMB_X28_Y36_N6
\Selector73~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector73~0_combout\ = (\Selector69~1_combout\ & ((\Selector69~3_combout\ & ((\alu_c_in[15]~input_o\))) # (!\Selector69~3_combout\ & (\SE_out6_in[15]~input_o\)))) # (!\Selector69~1_combout\ & (((\Selector69~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SE_out6_in[15]~input_o\,
	datab => \Selector69~1_combout\,
	datac => \Selector69~3_combout\,
	datad => \alu_c_in[15]~input_o\,
	combout => \Selector73~0_combout\);

-- Location: LCCOMB_X28_Y36_N8
Selector73 : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector73~combout\ = (\Selector73~0_combout\ & (((\Rf_D2_in[15]~input_o\) # (\Selector69~0_combout\)))) # (!\Selector73~0_combout\ & (\Rf_D1_in[15]~input_o\ & ((!\Selector69~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector73~0_combout\,
	datab => \Rf_D1_in[15]~input_o\,
	datac => \Rf_D2_in[15]~input_o\,
	datad => \Selector69~0_combout\,
	combout => \Selector73~combout\);

-- Location: LCCOMB_X27_Y36_N6
\T1[15]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- T1(15) = (GLOBAL(\WideOr16~0clkctrl_outclk\) & ((\Selector73~combout\))) # (!GLOBAL(\WideOr16~0clkctrl_outclk\) & (T1(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T1(15),
	datab => \Selector73~combout\,
	datad => \WideOr16~0clkctrl_outclk\,
	combout => T1(15));

-- Location: LCCOMB_X28_Y34_N4
\Selector151~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector151~0_combout\ = (\alu_a_out~4_combout\ & (((T1(15) & \WideOr4~combout\)))) # (!\alu_a_out~4_combout\ & ((T3(15)) # ((T1(15) & \WideOr4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a_out~4_combout\,
	datab => T3(15),
	datac => T1(15),
	datad => \WideOr4~combout\,
	combout => \Selector151~0_combout\);

-- Location: LCCOMB_X28_Y34_N12
\Selector151~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector151~2_combout\ = (\Selector151~1_combout\) # ((\Selector151~0_combout\) # ((\PC_in[15]~input_o\ & \alu_a_out~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector151~1_combout\,
	datab => \PC_in[15]~input_o\,
	datac => \Selector151~0_combout\,
	datad => \alu_a_out~5_combout\,
	combout => \Selector151~2_combout\);

-- Location: LCCOMB_X28_Y34_N8
\alu_a_out[15]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a_out[15]$latch~combout\ = (GLOBAL(\WideOr3~0clkctrl_outclk\) & (\Selector151~2_combout\)) # (!GLOBAL(\WideOr3~0clkctrl_outclk\) & ((\alu_a_out[15]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector151~2_combout\,
	datab => \alu_a_out[15]$latch~combout\,
	datac => \WideOr3~0clkctrl_outclk\,
	combout => \alu_a_out[15]$latch~combout\);

-- Location: IOIBUF_X0_Y59_N22
\SE_out9_in[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE_out9_in(0),
	o => \SE_out9_in[0]~input_o\);

-- Location: LCCOMB_X28_Y38_N20
WideOr6 : cyclone10lp_lcell_comb
-- Equation(s):
-- \WideOr6~combout\ = (\state.s13~q\) # (\state.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s13~q\,
	datab => \state.s2~q\,
	combout => \WideOr6~combout\);

-- Location: LCCOMB_X30_Y39_N4
\Selector118~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector118~2_combout\ = (\state.s8~q\ & (((\SE_out6_in[0]~input_o\)))) # (!\state.s8~q\ & (((T2(0))) # (!\WideOr6~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s8~q\,
	datab => \WideOr6~combout\,
	datac => \SE_out6_in[0]~input_o\,
	datad => T2(0),
	combout => \Selector118~2_combout\);

-- Location: LCCOMB_X30_Y39_N14
\Selector118~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector118~3_combout\ = (\state.s26~q\ & (\SE_out9_in[0]~input_o\)) # (!\state.s26~q\ & ((\state.s24~q\ & (\SE_out9_in[0]~input_o\)) # (!\state.s24~q\ & ((\Selector118~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SE_out9_in[0]~input_o\,
	datab => \state.s26~q\,
	datac => \Selector118~2_combout\,
	datad => \state.s24~q\,
	combout => \Selector118~3_combout\);

-- Location: LCCOMB_X29_Y39_N2
\alu_b_out[0]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b_out[0]$latch~combout\ = (GLOBAL(\WideOr3~0clkctrl_outclk\) & ((\Selector118~3_combout\))) # (!GLOBAL(\WideOr3~0clkctrl_outclk\) & (\alu_b_out[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_b_out[0]$latch~combout\,
	datac => \Selector118~3_combout\,
	datad => \WideOr3~0clkctrl_outclk\,
	combout => \alu_b_out[0]$latch~combout\);

-- Location: IOIBUF_X0_Y47_N15
\SE_out9_in[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE_out9_in(1),
	o => \SE_out9_in[1]~input_o\);

-- Location: LCCOMB_X25_Y39_N4
\Selector120~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector120~2_combout\ = (\state.s8~q\ & (((\SE_out6_in[1]~input_o\)))) # (!\state.s8~q\ & (\WideOr6~combout\ & ((T2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr6~combout\,
	datab => \SE_out6_in[1]~input_o\,
	datac => \state.s8~q\,
	datad => T2(1),
	combout => \Selector120~2_combout\);

-- Location: LCCOMB_X25_Y39_N16
\Selector120~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector120~3_combout\ = (\state.s24~q\ & (\SE_out9_in[1]~input_o\)) # (!\state.s24~q\ & ((\state.s26~q\ & (\SE_out9_in[1]~input_o\)) # (!\state.s26~q\ & ((\Selector120~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SE_out9_in[1]~input_o\,
	datab => \state.s24~q\,
	datac => \state.s26~q\,
	datad => \Selector120~2_combout\,
	combout => \Selector120~3_combout\);

-- Location: LCCOMB_X24_Y39_N4
\alu_b_out[1]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b_out[1]$latch~combout\ = (GLOBAL(\WideOr3~0clkctrl_outclk\) & (\Selector120~3_combout\)) # (!GLOBAL(\WideOr3~0clkctrl_outclk\) & ((\alu_b_out[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector120~3_combout\,
	datac => \alu_b_out[1]$latch~combout\,
	datad => \WideOr3~0clkctrl_outclk\,
	combout => \alu_b_out[1]$latch~combout\);

-- Location: IOIBUF_X9_Y73_N1
\SE_out9_in[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE_out9_in(2),
	o => \SE_out9_in[2]~input_o\);

-- Location: LCCOMB_X32_Y38_N20
\Selector121~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector121~2_combout\ = (\state.s8~q\ & (\SE_out6_in[2]~input_o\)) # (!\state.s8~q\ & (((\WideOr6~combout\ & T2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SE_out6_in[2]~input_o\,
	datab => \WideOr6~combout\,
	datac => \state.s8~q\,
	datad => T2(2),
	combout => \Selector121~2_combout\);

-- Location: LCCOMB_X33_Y38_N12
\Selector121~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector121~3_combout\ = (\state.s26~q\ & (\SE_out9_in[2]~input_o\)) # (!\state.s26~q\ & ((\state.s24~q\ & (\SE_out9_in[2]~input_o\)) # (!\state.s24~q\ & ((\Selector121~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SE_out9_in[2]~input_o\,
	datab => \state.s26~q\,
	datac => \state.s24~q\,
	datad => \Selector121~2_combout\,
	combout => \Selector121~3_combout\);

-- Location: LCCOMB_X33_Y38_N8
\alu_b_out[2]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b_out[2]$latch~combout\ = (GLOBAL(\WideOr3~0clkctrl_outclk\) & ((\Selector121~3_combout\))) # (!GLOBAL(\WideOr3~0clkctrl_outclk\) & (\alu_b_out[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_b_out[2]$latch~combout\,
	datac => \Selector121~3_combout\,
	datad => \WideOr3~0clkctrl_outclk\,
	combout => \alu_b_out[2]$latch~combout\);

-- Location: IOIBUF_X27_Y73_N22
\SE_out9_in[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE_out9_in(3),
	o => \SE_out9_in[3]~input_o\);

-- Location: LCCOMB_X28_Y37_N2
\Selector122~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector122~2_combout\ = (\state.s8~q\ & (\SE_out6_in[3]~input_o\)) # (!\state.s8~q\ & (((\WideOr6~combout\ & T2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SE_out6_in[3]~input_o\,
	datab => \state.s8~q\,
	datac => \WideOr6~combout\,
	datad => T2(3),
	combout => \Selector122~2_combout\);

-- Location: LCCOMB_X27_Y39_N30
\Selector122~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector122~3_combout\ = (\state.s24~q\ & (((\SE_out9_in[3]~input_o\)))) # (!\state.s24~q\ & ((\state.s26~q\ & (\SE_out9_in[3]~input_o\)) # (!\state.s26~q\ & ((\Selector122~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s24~q\,
	datab => \state.s26~q\,
	datac => \SE_out9_in[3]~input_o\,
	datad => \Selector122~2_combout\,
	combout => \Selector122~3_combout\);

-- Location: LCCOMB_X27_Y39_N22
\alu_b_out[3]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b_out[3]$latch~combout\ = (GLOBAL(\WideOr3~0clkctrl_outclk\) & ((\Selector122~3_combout\))) # (!GLOBAL(\WideOr3~0clkctrl_outclk\) & (\alu_b_out[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b_out[3]$latch~combout\,
	datac => \Selector122~3_combout\,
	datad => \WideOr3~0clkctrl_outclk\,
	combout => \alu_b_out[3]$latch~combout\);

-- Location: IOIBUF_X18_Y73_N22
\SE_out9_in[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE_out9_in(4),
	o => \SE_out9_in[4]~input_o\);

-- Location: LCCOMB_X27_Y38_N28
\Selector123~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector123~2_combout\ = (\state.s8~q\ & (((\SE_out6_in[4]~input_o\)))) # (!\state.s8~q\ & (\WideOr6~combout\ & ((T2(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s8~q\,
	datab => \WideOr6~combout\,
	datac => \SE_out6_in[4]~input_o\,
	datad => T2(4),
	combout => \Selector123~2_combout\);

-- Location: LCCOMB_X26_Y38_N28
\Selector123~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector123~3_combout\ = (\state.s26~q\ & (\SE_out9_in[4]~input_o\)) # (!\state.s26~q\ & ((\state.s24~q\ & (\SE_out9_in[4]~input_o\)) # (!\state.s24~q\ & ((\Selector123~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s26~q\,
	datab => \SE_out9_in[4]~input_o\,
	datac => \state.s24~q\,
	datad => \Selector123~2_combout\,
	combout => \Selector123~3_combout\);

-- Location: LCCOMB_X26_Y38_N8
\alu_b_out[4]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b_out[4]$latch~combout\ = (GLOBAL(\WideOr3~0clkctrl_outclk\) & ((\Selector123~3_combout\))) # (!GLOBAL(\WideOr3~0clkctrl_outclk\) & (\alu_b_out[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_b_out[4]$latch~combout\,
	datac => \Selector123~3_combout\,
	datad => \WideOr3~0clkctrl_outclk\,
	combout => \alu_b_out[4]$latch~combout\);

-- Location: IOIBUF_X72_Y73_N22
\SE_out9_in[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE_out9_in(5),
	o => \SE_out9_in[5]~input_o\);

-- Location: LCCOMB_X30_Y39_N30
\Selector124~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector124~2_combout\ = (\state.s8~q\ & (((\SE_out6_in[5]~input_o\)))) # (!\state.s8~q\ & (\WideOr6~combout\ & ((T2(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s8~q\,
	datab => \WideOr6~combout\,
	datac => \SE_out6_in[5]~input_o\,
	datad => T2(5),
	combout => \Selector124~2_combout\);

-- Location: LCCOMB_X30_Y39_N16
\Selector124~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector124~3_combout\ = (\state.s26~q\ & (\SE_out9_in[5]~input_o\)) # (!\state.s26~q\ & ((\state.s24~q\ & (\SE_out9_in[5]~input_o\)) # (!\state.s24~q\ & ((\Selector124~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SE_out9_in[5]~input_o\,
	datab => \state.s26~q\,
	datac => \state.s24~q\,
	datad => \Selector124~2_combout\,
	combout => \Selector124~3_combout\);

-- Location: LCCOMB_X31_Y39_N8
\alu_b_out[5]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b_out[5]$latch~combout\ = (GLOBAL(\WideOr3~0clkctrl_outclk\) & (\Selector124~3_combout\)) # (!GLOBAL(\WideOr3~0clkctrl_outclk\) & ((\alu_b_out[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector124~3_combout\,
	datac => \alu_b_out[5]$latch~combout\,
	datad => \WideOr3~0clkctrl_outclk\,
	combout => \alu_b_out[5]$latch~combout\);

-- Location: IOIBUF_X58_Y73_N1
\SE_out9_in[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE_out9_in(6),
	o => \SE_out9_in[6]~input_o\);

-- Location: LCCOMB_X30_Y38_N16
\Selector125~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector125~2_combout\ = (\state.s8~q\ & (\SE_out6_in[6]~input_o\)) # (!\state.s8~q\ & (((\WideOr6~combout\ & T2(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s8~q\,
	datab => \SE_out6_in[6]~input_o\,
	datac => \WideOr6~combout\,
	datad => T2(6),
	combout => \Selector125~2_combout\);

-- Location: LCCOMB_X31_Y38_N28
\Selector125~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector125~3_combout\ = (\state.s26~q\ & (\SE_out9_in[6]~input_o\)) # (!\state.s26~q\ & ((\state.s24~q\ & (\SE_out9_in[6]~input_o\)) # (!\state.s24~q\ & ((\Selector125~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SE_out9_in[6]~input_o\,
	datab => \state.s26~q\,
	datac => \Selector125~2_combout\,
	datad => \state.s24~q\,
	combout => \Selector125~3_combout\);

-- Location: LCCOMB_X31_Y38_N14
\alu_b_out[6]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b_out[6]$latch~combout\ = (GLOBAL(\WideOr3~0clkctrl_outclk\) & ((\Selector125~3_combout\))) # (!GLOBAL(\WideOr3~0clkctrl_outclk\) & (\alu_b_out[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_b_out[6]$latch~combout\,
	datac => \Selector125~3_combout\,
	datad => \WideOr3~0clkctrl_outclk\,
	combout => \alu_b_out[6]$latch~combout\);

-- Location: IOIBUF_X13_Y73_N15
\SE_out9_in[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE_out9_in(7),
	o => \SE_out9_in[7]~input_o\);

-- Location: LCCOMB_X25_Y39_N30
\Selector126~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector126~2_combout\ = (\state.s8~q\ & (((\SE_out6_in[7]~input_o\)))) # (!\state.s8~q\ & (\WideOr6~combout\ & ((T2(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr6~combout\,
	datab => \SE_out6_in[7]~input_o\,
	datac => \state.s8~q\,
	datad => T2(7),
	combout => \Selector126~2_combout\);

-- Location: LCCOMB_X25_Y39_N18
\Selector126~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector126~3_combout\ = (\state.s24~q\ & (\SE_out9_in[7]~input_o\)) # (!\state.s24~q\ & ((\state.s26~q\ & (\SE_out9_in[7]~input_o\)) # (!\state.s26~q\ & ((\Selector126~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SE_out9_in[7]~input_o\,
	datab => \state.s24~q\,
	datac => \state.s26~q\,
	datad => \Selector126~2_combout\,
	combout => \Selector126~3_combout\);

-- Location: LCCOMB_X24_Y39_N18
\alu_b_out[7]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b_out[7]$latch~combout\ = (GLOBAL(\WideOr3~0clkctrl_outclk\) & ((\Selector126~3_combout\))) # (!GLOBAL(\WideOr3~0clkctrl_outclk\) & (\alu_b_out[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_b_out[7]$latch~combout\,
	datac => \Selector126~3_combout\,
	datad => \WideOr3~0clkctrl_outclk\,
	combout => \alu_b_out[7]$latch~combout\);

-- Location: IOIBUF_X67_Y73_N8
\SE_out9_in[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE_out9_in(8),
	o => \SE_out9_in[8]~input_o\);

-- Location: LCCOMB_X32_Y38_N26
\Selector127~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector127~2_combout\ = (\state.s8~q\ & (\SE_out6_in[8]~input_o\)) # (!\state.s8~q\ & (((\WideOr6~combout\ & T2(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SE_out6_in[8]~input_o\,
	datab => \WideOr6~combout\,
	datac => \state.s8~q\,
	datad => T2(8),
	combout => \Selector127~2_combout\);

-- Location: LCCOMB_X33_Y38_N26
\Selector127~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector127~3_combout\ = (\state.s26~q\ & (\SE_out9_in[8]~input_o\)) # (!\state.s26~q\ & ((\state.s24~q\ & (\SE_out9_in[8]~input_o\)) # (!\state.s24~q\ & ((\Selector127~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SE_out9_in[8]~input_o\,
	datab => \state.s26~q\,
	datac => \Selector127~2_combout\,
	datad => \state.s24~q\,
	combout => \Selector127~3_combout\);

-- Location: LCCOMB_X33_Y38_N18
\alu_b_out[8]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b_out[8]$latch~combout\ = (GLOBAL(\WideOr3~0clkctrl_outclk\) & ((\Selector127~3_combout\))) # (!GLOBAL(\WideOr3~0clkctrl_outclk\) & (\alu_b_out[8]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_b_out[8]$latch~combout\,
	datac => \Selector127~3_combout\,
	datad => \WideOr3~0clkctrl_outclk\,
	combout => \alu_b_out[8]$latch~combout\);

-- Location: IOIBUF_X23_Y73_N15
\SE_out9_in[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE_out9_in(9),
	o => \SE_out9_in[9]~input_o\);

-- Location: LCCOMB_X28_Y39_N26
\Selector128~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector128~2_combout\ = (\state.s8~q\ & (\SE_out6_in[9]~input_o\)) # (!\state.s8~q\ & (((\WideOr6~combout\ & T2(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SE_out6_in[9]~input_o\,
	datab => \state.s8~q\,
	datac => \WideOr6~combout\,
	datad => T2(9),
	combout => \Selector128~2_combout\);

-- Location: LCCOMB_X27_Y39_N20
\Selector128~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector128~3_combout\ = (\state.s26~q\ & (\SE_out9_in[9]~input_o\)) # (!\state.s26~q\ & ((\state.s24~q\ & (\SE_out9_in[9]~input_o\)) # (!\state.s24~q\ & ((\Selector128~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s26~q\,
	datab => \SE_out9_in[9]~input_o\,
	datac => \state.s24~q\,
	datad => \Selector128~2_combout\,
	combout => \Selector128~3_combout\);

-- Location: LCCOMB_X27_Y39_N8
\alu_b_out[9]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b_out[9]$latch~combout\ = (GLOBAL(\WideOr3~0clkctrl_outclk\) & ((\Selector128~3_combout\))) # (!GLOBAL(\WideOr3~0clkctrl_outclk\) & (\alu_b_out[9]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_b_out[9]$latch~combout\,
	datac => \Selector128~3_combout\,
	datad => \WideOr3~0clkctrl_outclk\,
	combout => \alu_b_out[9]$latch~combout\);

-- Location: IOIBUF_X18_Y0_N15
\SE_out9_in[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE_out9_in(10),
	o => \SE_out9_in[10]~input_o\);

-- Location: LCCOMB_X27_Y38_N2
\Selector129~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector129~2_combout\ = (\state.s8~q\ & (((\SE_out6_in[10]~input_o\)))) # (!\state.s8~q\ & (\WideOr6~combout\ & ((T2(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s8~q\,
	datab => \WideOr6~combout\,
	datac => \SE_out6_in[10]~input_o\,
	datad => T2(10),
	combout => \Selector129~2_combout\);

-- Location: LCCOMB_X26_Y38_N22
\Selector129~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector129~3_combout\ = (\state.s26~q\ & (\SE_out9_in[10]~input_o\)) # (!\state.s26~q\ & ((\state.s24~q\ & (\SE_out9_in[10]~input_o\)) # (!\state.s24~q\ & ((\Selector129~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s26~q\,
	datab => \SE_out9_in[10]~input_o\,
	datac => \state.s24~q\,
	datad => \Selector129~2_combout\,
	combout => \Selector129~3_combout\);

-- Location: LCCOMB_X26_Y38_N18
\alu_b_out[10]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b_out[10]$latch~combout\ = (GLOBAL(\WideOr3~0clkctrl_outclk\) & ((\Selector129~3_combout\))) # (!GLOBAL(\WideOr3~0clkctrl_outclk\) & (\alu_b_out[10]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_b_out[10]$latch~combout\,
	datac => \Selector129~3_combout\,
	datad => \WideOr3~0clkctrl_outclk\,
	combout => \alu_b_out[10]$latch~combout\);

-- Location: IOIBUF_X62_Y73_N22
\SE_out9_in[11]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE_out9_in(11),
	o => \SE_out9_in[11]~input_o\);

-- Location: LCCOMB_X30_Y37_N0
\Selector130~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector130~2_combout\ = (\state.s8~q\ & (\SE_out6_in[11]~input_o\)) # (!\state.s8~q\ & (((\WideOr6~combout\ & T2(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s8~q\,
	datab => \SE_out6_in[11]~input_o\,
	datac => \WideOr6~combout\,
	datad => T2(11),
	combout => \Selector130~2_combout\);

-- Location: LCCOMB_X31_Y37_N10
\Selector130~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector130~3_combout\ = (\state.s26~q\ & (\SE_out9_in[11]~input_o\)) # (!\state.s26~q\ & ((\state.s24~q\ & (\SE_out9_in[11]~input_o\)) # (!\state.s24~q\ & ((\Selector130~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s26~q\,
	datab => \SE_out9_in[11]~input_o\,
	datac => \Selector130~2_combout\,
	datad => \state.s24~q\,
	combout => \Selector130~3_combout\);

-- Location: LCCOMB_X31_Y37_N20
\alu_b_out[11]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b_out[11]$latch~combout\ = (GLOBAL(\WideOr3~0clkctrl_outclk\) & ((\Selector130~3_combout\))) # (!GLOBAL(\WideOr3~0clkctrl_outclk\) & (\alu_b_out[11]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_b_out[11]$latch~combout\,
	datac => \Selector130~3_combout\,
	datad => \WideOr3~0clkctrl_outclk\,
	combout => \alu_b_out[11]$latch~combout\);

-- Location: IOIBUF_X0_Y50_N22
\SE_out9_in[12]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE_out9_in(12),
	o => \SE_out9_in[12]~input_o\);

-- Location: LCCOMB_X28_Y39_N20
\Selector131~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector131~2_combout\ = (\state.s8~q\ & (\SE_out6_in[12]~input_o\)) # (!\state.s8~q\ & (((\WideOr6~combout\ & T2(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SE_out6_in[12]~input_o\,
	datab => \state.s8~q\,
	datac => \WideOr6~combout\,
	datad => T2(12),
	combout => \Selector131~2_combout\);

-- Location: LCCOMB_X27_Y39_N10
\Selector131~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector131~3_combout\ = (\state.s26~q\ & (\SE_out9_in[12]~input_o\)) # (!\state.s26~q\ & ((\state.s24~q\ & (\SE_out9_in[12]~input_o\)) # (!\state.s24~q\ & ((\Selector131~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s26~q\,
	datab => \SE_out9_in[12]~input_o\,
	datac => \state.s24~q\,
	datad => \Selector131~2_combout\,
	combout => \Selector131~3_combout\);

-- Location: LCCOMB_X27_Y39_N14
\alu_b_out[12]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b_out[12]$latch~combout\ = (GLOBAL(\WideOr3~0clkctrl_outclk\) & ((\Selector131~3_combout\))) # (!GLOBAL(\WideOr3~0clkctrl_outclk\) & (\alu_b_out[12]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_b_out[12]$latch~combout\,
	datac => \Selector131~3_combout\,
	datad => \WideOr3~0clkctrl_outclk\,
	combout => \alu_b_out[12]$latch~combout\);

-- Location: IOIBUF_X115_Y37_N22
\SE_out9_in[13]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE_out9_in(13),
	o => \SE_out9_in[13]~input_o\);

-- Location: LCCOMB_X30_Y37_N26
\Selector132~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector132~2_combout\ = (\state.s8~q\ & (\SE_out6_in[13]~input_o\)) # (!\state.s8~q\ & (((\WideOr6~combout\ & T2(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s8~q\,
	datab => \SE_out6_in[13]~input_o\,
	datac => \WideOr6~combout\,
	datad => T2(13),
	combout => \Selector132~2_combout\);

-- Location: LCCOMB_X31_Y37_N0
\Selector132~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector132~3_combout\ = (\state.s26~q\ & (\SE_out9_in[13]~input_o\)) # (!\state.s26~q\ & ((\state.s24~q\ & (\SE_out9_in[13]~input_o\)) # (!\state.s24~q\ & ((\Selector132~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s26~q\,
	datab => \SE_out9_in[13]~input_o\,
	datac => \Selector132~2_combout\,
	datad => \state.s24~q\,
	combout => \Selector132~3_combout\);

-- Location: LCCOMB_X31_Y37_N18
\alu_b_out[13]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b_out[13]$latch~combout\ = (GLOBAL(\WideOr3~0clkctrl_outclk\) & ((\Selector132~3_combout\))) # (!GLOBAL(\WideOr3~0clkctrl_outclk\) & (\alu_b_out[13]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_b_out[13]$latch~combout\,
	datac => \Selector132~3_combout\,
	datad => \WideOr3~0clkctrl_outclk\,
	combout => \alu_b_out[13]$latch~combout\);

-- Location: IOIBUF_X79_Y73_N8
\SE_out9_in[14]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE_out9_in(14),
	o => \SE_out9_in[14]~input_o\);

-- Location: LCCOMB_X29_Y37_N8
\Selector133~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector133~2_combout\ = (\state.s8~q\ & (\SE_out6_in[14]~input_o\)) # (!\state.s8~q\ & (((\WideOr6~combout\ & T2(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s8~q\,
	datab => \SE_out6_in[14]~input_o\,
	datac => \WideOr6~combout\,
	datad => T2(14),
	combout => \Selector133~2_combout\);

-- Location: LCCOMB_X31_Y37_N22
\Selector133~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector133~3_combout\ = (\state.s24~q\ & (\SE_out9_in[14]~input_o\)) # (!\state.s24~q\ & ((\state.s26~q\ & (\SE_out9_in[14]~input_o\)) # (!\state.s26~q\ & ((\Selector133~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SE_out9_in[14]~input_o\,
	datab => \state.s24~q\,
	datac => \Selector133~2_combout\,
	datad => \state.s26~q\,
	combout => \Selector133~3_combout\);

-- Location: LCCOMB_X31_Y37_N8
\alu_b_out[14]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b_out[14]$latch~combout\ = (GLOBAL(\WideOr3~0clkctrl_outclk\) & (\Selector133~3_combout\)) # (!GLOBAL(\WideOr3~0clkctrl_outclk\) & ((\alu_b_out[14]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector133~3_combout\,
	datac => \alu_b_out[14]$latch~combout\,
	datad => \WideOr3~0clkctrl_outclk\,
	combout => \alu_b_out[14]$latch~combout\);

-- Location: IOIBUF_X20_Y73_N15
\SE_out9_in[15]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE_out9_in(15),
	o => \SE_out9_in[15]~input_o\);

-- Location: LCCOMB_X27_Y39_N28
\Selector134~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector134~2_combout\ = (\state.s8~q\ & (\SE_out6_in[15]~input_o\)) # (!\state.s8~q\ & (((\WideOr6~combout\ & T2(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SE_out6_in[15]~input_o\,
	datab => \WideOr6~combout\,
	datac => \state.s8~q\,
	datad => T2(15),
	combout => \Selector134~2_combout\);

-- Location: LCCOMB_X27_Y39_N12
\Selector134~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector134~3_combout\ = (\state.s26~q\ & (\SE_out9_in[15]~input_o\)) # (!\state.s26~q\ & ((\state.s24~q\ & (\SE_out9_in[15]~input_o\)) # (!\state.s24~q\ & ((\Selector134~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s26~q\,
	datab => \SE_out9_in[15]~input_o\,
	datac => \state.s24~q\,
	datad => \Selector134~2_combout\,
	combout => \Selector134~3_combout\);

-- Location: LCCOMB_X27_Y39_N24
\alu_b_out[15]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b_out[15]$latch~combout\ = (GLOBAL(\WideOr3~0clkctrl_outclk\) & ((\Selector134~3_combout\))) # (!GLOBAL(\WideOr3~0clkctrl_outclk\) & (\alu_b_out[15]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_b_out[15]$latch~combout\,
	datac => \Selector134~3_combout\,
	datad => \WideOr3~0clkctrl_outclk\,
	combout => \alu_b_out[15]$latch~combout\);

-- Location: LCCOMB_X29_Y36_N0
\WideOr13~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \WideOr13~0_combout\ = (\state.s14~q\) # ((\state.s4~q\) # ((\state.s26~q\) # (\state.s10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s14~q\,
	datab => \state.s4~q\,
	datac => \state.s26~q\,
	datad => \state.s10~q\,
	combout => \WideOr13~0_combout\);

-- Location: IOIBUF_X115_Y37_N8
\Ir_in[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ir_in(9),
	o => \Ir_in[9]~input_o\);

-- Location: LCCOMB_X28_Y36_N16
\Selector80~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector80~0_combout\ = (!\state.s20~q\ & ((\WideOr13~0_combout\ & (\Ir_in[9]~input_o\)) # (!\WideOr13~0_combout\ & ((\Ir_in[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr13~0_combout\,
	datab => \Ir_in[9]~input_o\,
	datac => \Ir_in[6]~input_o\,
	datad => \state.s20~q\,
	combout => \Selector80~0_combout\);

-- Location: LCCOMB_X28_Y36_N14
\Selector80~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector80~1_combout\ = (\Selector80~0_combout\) # ((\state.s20~q\ & T1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector80~0_combout\,
	datac => \state.s20~q\,
	datad => T1(0),
	combout => \Selector80~1_combout\);

-- Location: LCCOMB_X29_Y36_N12
\WideOr11~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \WideOr11~0_combout\ = (\state.s25~q\) # ((\state.s20~q\) # ((\state.s14~q\) # (\state.s26~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s25~q\,
	datab => \state.s20~q\,
	datac => \state.s14~q\,
	datad => \state.s26~q\,
	combout => \WideOr11~0_combout\);

-- Location: LCCOMB_X29_Y36_N4
\WideOr11~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \WideOr11~1_combout\ = (\WideOr11~0_combout\) # ((\state.s7~q\) # ((!\state.s1~q\) # (!\WideOr18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr11~0_combout\,
	datab => \state.s7~q\,
	datac => \WideOr18~0_combout\,
	datad => \state.s1~q\,
	combout => \WideOr11~1_combout\);

-- Location: CLKCTRL_G18
\WideOr11~1clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WideOr11~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WideOr11~1clkctrl_outclk\);

-- Location: LCCOMB_X28_Y36_N30
\Rf_A1_out[0]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Rf_A1_out[0]$latch~combout\ = (GLOBAL(\WideOr11~1clkctrl_outclk\) & ((\Selector80~1_combout\))) # (!GLOBAL(\WideOr11~1clkctrl_outclk\) & (\Rf_A1_out[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_A1_out[0]$latch~combout\,
	datab => \Selector80~1_combout\,
	datac => \WideOr11~1clkctrl_outclk\,
	combout => \Rf_A1_out[0]$latch~combout\);

-- Location: IOIBUF_X115_Y37_N1
\Ir_in[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ir_in(10),
	o => \Ir_in[10]~input_o\);

-- Location: LCCOMB_X26_Y36_N24
\Selector81~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector81~0_combout\ = (!\state.s20~q\ & ((\WideOr13~0_combout\ & ((\Ir_in[10]~input_o\))) # (!\WideOr13~0_combout\ & (\Ir_in[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[7]~input_o\,
	datab => \state.s20~q\,
	datac => \Ir_in[10]~input_o\,
	datad => \WideOr13~0_combout\,
	combout => \Selector81~0_combout\);

-- Location: LCCOMB_X26_Y36_N14
\Selector81~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector81~1_combout\ = (\Selector81~0_combout\) # ((\state.s20~q\ & T1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s20~q\,
	datac => \Selector81~0_combout\,
	datad => T1(1),
	combout => \Selector81~1_combout\);

-- Location: LCCOMB_X26_Y36_N12
\Rf_A1_out[1]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Rf_A1_out[1]$latch~combout\ = (GLOBAL(\WideOr11~1clkctrl_outclk\) & ((\Selector81~1_combout\))) # (!GLOBAL(\WideOr11~1clkctrl_outclk\) & (\Rf_A1_out[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_A1_out[1]$latch~combout\,
	datab => \Selector81~1_combout\,
	datad => \WideOr11~1clkctrl_outclk\,
	combout => \Rf_A1_out[1]$latch~combout\);

-- Location: IOIBUF_X23_Y0_N15
\Ir_in[11]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ir_in(11),
	o => \Ir_in[11]~input_o\);

-- Location: IOIBUF_X52_Y73_N8
\Ir_in[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ir_in(8),
	o => \Ir_in[8]~input_o\);

-- Location: LCCOMB_X26_Y36_N4
\Selector82~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector82~0_combout\ = (!\state.s20~q\ & ((\WideOr13~0_combout\ & (\Ir_in[11]~input_o\)) # (!\WideOr13~0_combout\ & ((\Ir_in[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[11]~input_o\,
	datab => \state.s20~q\,
	datac => \Ir_in[8]~input_o\,
	datad => \WideOr13~0_combout\,
	combout => \Selector82~0_combout\);

-- Location: LCCOMB_X26_Y36_N6
\Selector82~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector82~1_combout\ = (\Selector82~0_combout\) # ((\state.s20~q\ & T1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s20~q\,
	datac => \Selector82~0_combout\,
	datad => T1(2),
	combout => \Selector82~1_combout\);

-- Location: LCCOMB_X26_Y36_N26
\Rf_A1_out[2]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Rf_A1_out[2]$latch~combout\ = (GLOBAL(\WideOr11~1clkctrl_outclk\) & (\Selector82~1_combout\)) # (!GLOBAL(\WideOr11~1clkctrl_outclk\) & ((\Rf_A1_out[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector82~1_combout\,
	datac => \Rf_A1_out[2]$latch~combout\,
	datad => \WideOr11~1clkctrl_outclk\,
	combout => \Rf_A1_out[2]$latch~combout\);

-- Location: LCCOMB_X29_Y42_N24
\Selector76~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector76~0_combout\ = (\state.s4~q\ & (((\Ir_in[6]~input_o\)))) # (!\state.s4~q\ & ((\state.s10~q\ & ((\Ir_in[6]~input_o\))) # (!\state.s10~q\ & (\Ir_in[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[3]~input_o\,
	datab => \Ir_in[6]~input_o\,
	datac => \state.s4~q\,
	datad => \state.s10~q\,
	combout => \Selector76~0_combout\);

-- Location: LCCOMB_X29_Y38_N10
\WideOr14~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \WideOr14~0_combout\ = (!\state.s4~q\ & (\state.s1~q\ & !\state.s10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s4~q\,
	datac => \state.s1~q\,
	datad => \state.s10~q\,
	combout => \WideOr14~0_combout\);

-- Location: CLKCTRL_G13
\WideOr14~0clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WideOr14~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WideOr14~0clkctrl_outclk\);

-- Location: LCCOMB_X29_Y38_N22
\Rf_A2_out[0]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Rf_A2_out[0]$latch~combout\ = (GLOBAL(\WideOr14~0clkctrl_outclk\) & ((\Rf_A2_out[0]$latch~combout\))) # (!GLOBAL(\WideOr14~0clkctrl_outclk\) & (\Selector76~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector76~0_combout\,
	datac => \Rf_A2_out[0]$latch~combout\,
	datad => \WideOr14~0clkctrl_outclk\,
	combout => \Rf_A2_out[0]$latch~combout\);

-- Location: LCCOMB_X29_Y42_N18
\Selector77~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector77~0_combout\ = (\state.s4~q\ & (\Ir_in[7]~input_o\)) # (!\state.s4~q\ & ((\state.s10~q\ & (\Ir_in[7]~input_o\)) # (!\state.s10~q\ & ((\Ir_in[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[7]~input_o\,
	datab => \state.s4~q\,
	datac => \Ir_in[4]~input_o\,
	datad => \state.s10~q\,
	combout => \Selector77~0_combout\);

-- Location: LCCOMB_X29_Y42_N16
\Rf_A2_out[1]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Rf_A2_out[1]$latch~combout\ = (GLOBAL(\WideOr14~0clkctrl_outclk\) & (\Rf_A2_out[1]$latch~combout\)) # (!GLOBAL(\WideOr14~0clkctrl_outclk\) & ((\Selector77~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Rf_A2_out[1]$latch~combout\,
	datac => \Selector77~0_combout\,
	datad => \WideOr14~0clkctrl_outclk\,
	combout => \Rf_A2_out[1]$latch~combout\);

-- Location: LCCOMB_X28_Y38_N22
\Selector78~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector78~0_combout\ = (\state.s4~q\ & (((\Ir_in[8]~input_o\)))) # (!\state.s4~q\ & ((\state.s10~q\ & ((\Ir_in[8]~input_o\))) # (!\state.s10~q\ & (\Ir_in[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s4~q\,
	datab => \Ir_in[5]~input_o\,
	datac => \Ir_in[8]~input_o\,
	datad => \state.s10~q\,
	combout => \Selector78~0_combout\);

-- Location: LCCOMB_X28_Y38_N8
\Rf_A2_out[2]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Rf_A2_out[2]$latch~combout\ = (GLOBAL(\WideOr14~0clkctrl_outclk\) & ((\Rf_A2_out[2]$latch~combout\))) # (!GLOBAL(\WideOr14~0clkctrl_outclk\) & (\Selector78~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector78~0_combout\,
	datac => \Rf_A2_out[2]$latch~combout\,
	datad => \WideOr14~0clkctrl_outclk\,
	combout => \Rf_A2_out[2]$latch~combout\);

-- Location: LCCOMB_X28_Y36_N0
\Selector2~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state.s16~q\ & ((T1(0)))) # (!\state.s16~q\ & (\Ir_in[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s16~q\,
	datab => \Ir_in[9]~input_o\,
	datad => T1(0),
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X28_Y36_N4
\Rf_A3_out[0]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Rf_A3_out[0]$latch~combout\ = (GLOBAL(\WideOr22~1clkctrl_outclk\) & (\Selector2~0_combout\)) # (!GLOBAL(\WideOr22~1clkctrl_outclk\) & ((\Rf_A3_out[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector2~0_combout\,
	datac => \Rf_A3_out[0]$latch~combout\,
	datad => \WideOr22~1clkctrl_outclk\,
	combout => \Rf_A3_out[0]$latch~combout\);

-- Location: LCCOMB_X26_Y36_N20
\Selector3~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state.s16~q\ & ((T1(1)))) # (!\state.s16~q\ & (\Ir_in[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s16~q\,
	datab => \Ir_in[10]~input_o\,
	datad => T1(1),
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X26_Y36_N16
\Rf_A3_out[1]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Rf_A3_out[1]$latch~combout\ = (GLOBAL(\WideOr22~1clkctrl_outclk\) & (\Selector3~0_combout\)) # (!GLOBAL(\WideOr22~1clkctrl_outclk\) & ((\Rf_A3_out[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datac => \WideOr22~1clkctrl_outclk\,
	datad => \Rf_A3_out[1]$latch~combout\,
	combout => \Rf_A3_out[1]$latch~combout\);

-- Location: LCCOMB_X26_Y36_N18
\Selector4~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state.s16~q\ & ((T1(2)))) # (!\state.s16~q\ & (\Ir_in[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[11]~input_o\,
	datab => \state.s16~q\,
	datac => T1(2),
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X26_Y36_N22
\Rf_A3_out[2]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Rf_A3_out[2]$latch~combout\ = (GLOBAL(\WideOr22~1clkctrl_outclk\) & ((\Selector4~0_combout\))) # (!GLOBAL(\WideOr22~1clkctrl_outclk\) & (\Rf_A3_out[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rf_A3_out[2]$latch~combout\,
	datac => \WideOr22~1clkctrl_outclk\,
	datad => \Selector4~0_combout\,
	combout => \Rf_A3_out[2]$latch~combout\);

-- Location: LCCOMB_X28_Y39_N18
\aluctrl_out[1]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \aluctrl_out[1]$latch~combout\ = (\WideOr1~0_combout\ & ((\aluctrl_out[1]$latch~combout\))) # (!\WideOr1~0_combout\ & (\state.s21~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~0_combout\,
	datab => \state.s21~q\,
	datad => \aluctrl_out[1]$latch~combout\,
	combout => \aluctrl_out[1]$latch~combout\);

-- Location: LCCOMB_X28_Y38_N6
\Selector75~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector75~0_combout\ = (\state.s27~q\) # ((\OUTPUT_DECODE~0_combout\ & !\state.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OUTPUT_DECODE~0_combout\,
	datac => \state.s27~q\,
	datad => \state.s1~q\,
	combout => \Selector75~0_combout\);

-- Location: LCCOMB_X27_Y36_N22
\Selector74~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector74~3_combout\ = (!T1(13) & (!T1(12) & (!T1(15) & !T1(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T1(13),
	datab => T1(12),
	datac => T1(15),
	datad => T1(14),
	combout => \Selector74~3_combout\);

-- Location: LCCOMB_X27_Y36_N24
\Selector74~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector74~0_combout\ = (T1(3) & (!T1(1) & (!T1(0) & !T1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T1(3),
	datab => T1(1),
	datac => T1(0),
	datad => T1(2),
	combout => \Selector74~0_combout\);

-- Location: LCCOMB_X27_Y36_N4
\Selector74~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector74~2_combout\ = (!T1(10) & (!T1(11) & (!T1(9) & !T1(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T1(10),
	datab => T1(11),
	datac => T1(9),
	datad => T1(8),
	combout => \Selector74~2_combout\);

-- Location: LCCOMB_X27_Y36_N10
\Selector74~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector74~1_combout\ = (!T1(5) & (!T1(4) & (!T1(6) & !T1(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T1(5),
	datab => T1(4),
	datac => T1(6),
	datad => T1(7),
	combout => \Selector74~1_combout\);

-- Location: LCCOMB_X27_Y36_N20
\Selector74~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector74~4_combout\ = (\Selector74~3_combout\ & (\Selector74~0_combout\ & (\Selector74~2_combout\ & \Selector74~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector74~3_combout\,
	datab => \Selector74~0_combout\,
	datac => \Selector74~2_combout\,
	datad => \Selector74~1_combout\,
	combout => \Selector74~4_combout\);

-- Location: LCCOMB_X27_Y36_N2
\Selector74~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector74~5_combout\ = (\state.s27~q\ & ((\Selector74~4_combout\))) # (!\state.s27~q\ & (\Ir_in[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s27~q\,
	datab => \Ir_in[1]~input_o\,
	datad => \Selector74~4_combout\,
	combout => \Selector74~5_combout\);

-- Location: LCCOMB_X27_Y36_N28
\modifyc_out$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \modifyc_out$latch~combout\ = (\Selector75~0_combout\ & (\Selector74~5_combout\)) # (!\Selector75~0_combout\ & ((\modifyc_out$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector75~0_combout\,
	datab => \Selector74~5_combout\,
	datad => \modifyc_out$latch~combout\,
	combout => \modifyc_out$latch~combout\);

-- Location: LCCOMB_X28_Y38_N2
\Selector75~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Selector75~1_combout\ = (\OUTPUT_DECODE~0_combout\ & !\state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OUTPUT_DECODE~0_combout\,
	datad => \state.s1~q\,
	combout => \Selector75~1_combout\);

-- Location: LCCOMB_X28_Y38_N0
\modifyz_out$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \modifyz_out$latch~combout\ = (\Selector75~1_combout\ & (\Ir_in[0]~input_o\)) # (!\Selector75~1_combout\ & ((\modifyz_out$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[0]~input_o\,
	datab => \modifyz_out$latch~combout\,
	datad => \Selector75~1_combout\,
	combout => \modifyz_out$latch~combout\);

-- Location: LCCOMB_X28_Y39_N0
\SE_in6_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \SE_in6_out~0_combout\ = (\state.s8~q\) # (\state.s5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s8~q\,
	datad => \state.s5~q\,
	combout => \SE_in6_out~0_combout\);

-- Location: CLKCTRL_G10
\SE_in6_out~0clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SE_in6_out~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SE_in6_out~0clkctrl_outclk\);

-- Location: LCCOMB_X24_Y51_N28
\SE_in6_out[0]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \SE_in6_out[0]$latch~combout\ = (GLOBAL(\SE_in6_out~0clkctrl_outclk\) & (\Ir_in[0]~input_o\)) # (!GLOBAL(\SE_in6_out~0clkctrl_outclk\) & ((\SE_in6_out[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[0]~input_o\,
	datab => \SE_in6_out[0]$latch~combout\,
	datad => \SE_in6_out~0clkctrl_outclk\,
	combout => \SE_in6_out[0]$latch~combout\);

-- Location: LCCOMB_X27_Y37_N8
\SE_in6_out[1]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \SE_in6_out[1]$latch~combout\ = (GLOBAL(\SE_in6_out~0clkctrl_outclk\) & (\Ir_in[1]~input_o\)) # (!GLOBAL(\SE_in6_out~0clkctrl_outclk\) & ((\SE_in6_out[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[1]~input_o\,
	datac => \SE_in6_out[1]$latch~combout\,
	datad => \SE_in6_out~0clkctrl_outclk\,
	combout => \SE_in6_out[1]$latch~combout\);

-- Location: LCCOMB_X27_Y37_N22
\SE_in6_out[2]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \SE_in6_out[2]$latch~combout\ = (GLOBAL(\SE_in6_out~0clkctrl_outclk\) & (\Ir_in[2]~input_o\)) # (!GLOBAL(\SE_in6_out~0clkctrl_outclk\) & ((\SE_in6_out[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ir_in[2]~input_o\,
	datac => \SE_in6_out[2]$latch~combout\,
	datad => \SE_in6_out~0clkctrl_outclk\,
	combout => \SE_in6_out[2]$latch~combout\);

-- Location: LCCOMB_X3_Y63_N20
\SE_in6_out[3]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \SE_in6_out[3]$latch~combout\ = (GLOBAL(\SE_in6_out~0clkctrl_outclk\) & (\Ir_in[3]~input_o\)) # (!GLOBAL(\SE_in6_out~0clkctrl_outclk\) & ((\SE_in6_out[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[3]~input_o\,
	datab => \SE_in6_out[3]$latch~combout\,
	datad => \SE_in6_out~0clkctrl_outclk\,
	combout => \SE_in6_out[3]$latch~combout\);

-- Location: LCCOMB_X48_Y72_N8
\SE_in6_out[4]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \SE_in6_out[4]$latch~combout\ = (GLOBAL(\SE_in6_out~0clkctrl_outclk\) & (\Ir_in[4]~input_o\)) # (!GLOBAL(\SE_in6_out~0clkctrl_outclk\) & ((\SE_in6_out[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ir_in[4]~input_o\,
	datac => \SE_in6_out[4]$latch~combout\,
	datad => \SE_in6_out~0clkctrl_outclk\,
	combout => \SE_in6_out[4]$latch~combout\);

-- Location: LCCOMB_X46_Y72_N8
\SE_in6_out[5]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \SE_in6_out[5]$latch~combout\ = (GLOBAL(\SE_in6_out~0clkctrl_outclk\) & (\Ir_in[5]~input_o\)) # (!GLOBAL(\SE_in6_out~0clkctrl_outclk\) & ((\SE_in6_out[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[5]~input_o\,
	datac => \SE_in6_out[5]$latch~combout\,
	datad => \SE_in6_out~0clkctrl_outclk\,
	combout => \SE_in6_out[5]$latch~combout\);

-- Location: CLKCTRL_G2
\alu_b_out~1clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \alu_b_out~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \alu_b_out~1clkctrl_outclk\);

-- Location: LCCOMB_X1_Y60_N8
\SE_in9_out[0]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \SE_in9_out[0]$latch~combout\ = (GLOBAL(\alu_b_out~1clkctrl_outclk\) & ((\SE_in9_out[0]$latch~combout\))) # (!GLOBAL(\alu_b_out~1clkctrl_outclk\) & (\Ir_in[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ir_in[0]~input_o\,
	datac => \SE_in9_out[0]$latch~combout\,
	datad => \alu_b_out~1clkctrl_outclk\,
	combout => \SE_in9_out[0]$latch~combout\);

-- Location: LCCOMB_X27_Y37_N4
\SE_in9_out[1]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \SE_in9_out[1]$latch~combout\ = (GLOBAL(\alu_b_out~1clkctrl_outclk\) & ((\SE_in9_out[1]$latch~combout\))) # (!GLOBAL(\alu_b_out~1clkctrl_outclk\) & (\Ir_in[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[1]~input_o\,
	datac => \SE_in9_out[1]$latch~combout\,
	datad => \alu_b_out~1clkctrl_outclk\,
	combout => \SE_in9_out[1]$latch~combout\);

-- Location: LCCOMB_X27_Y37_N30
\SE_in9_out[2]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \SE_in9_out[2]$latch~combout\ = (GLOBAL(\alu_b_out~1clkctrl_outclk\) & ((\SE_in9_out[2]$latch~combout\))) # (!GLOBAL(\alu_b_out~1clkctrl_outclk\) & (\Ir_in[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ir_in[2]~input_o\,
	datac => \SE_in9_out[2]$latch~combout\,
	datad => \alu_b_out~1clkctrl_outclk\,
	combout => \SE_in9_out[2]$latch~combout\);

-- Location: LCCOMB_X21_Y72_N4
\SE_in9_out[3]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \SE_in9_out[3]$latch~combout\ = (GLOBAL(\alu_b_out~1clkctrl_outclk\) & ((\SE_in9_out[3]$latch~combout\))) # (!GLOBAL(\alu_b_out~1clkctrl_outclk\) & (\Ir_in[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ir_in[3]~input_o\,
	datac => \SE_in9_out[3]$latch~combout\,
	datad => \alu_b_out~1clkctrl_outclk\,
	combout => \SE_in9_out[3]$latch~combout\);

-- Location: LCCOMB_X38_Y62_N4
\SE_in9_out[4]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \SE_in9_out[4]$latch~combout\ = (GLOBAL(\alu_b_out~1clkctrl_outclk\) & ((\SE_in9_out[4]$latch~combout\))) # (!GLOBAL(\alu_b_out~1clkctrl_outclk\) & (\Ir_in[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ir_in[4]~input_o\,
	datac => \SE_in9_out[4]$latch~combout\,
	datad => \alu_b_out~1clkctrl_outclk\,
	combout => \SE_in9_out[4]$latch~combout\);

-- Location: LCCOMB_X38_Y62_N18
\SE_in9_out[5]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \SE_in9_out[5]$latch~combout\ = (GLOBAL(\alu_b_out~1clkctrl_outclk\) & ((\SE_in9_out[5]$latch~combout\))) # (!GLOBAL(\alu_b_out~1clkctrl_outclk\) & (\Ir_in[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[5]~input_o\,
	datab => \SE_in9_out[5]$latch~combout\,
	datad => \alu_b_out~1clkctrl_outclk\,
	combout => \SE_in9_out[5]$latch~combout\);

-- Location: LCCOMB_X27_Y37_N28
\SE_in9_out[6]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \SE_in9_out[6]$latch~combout\ = (GLOBAL(\alu_b_out~1clkctrl_outclk\) & ((\SE_in9_out[6]$latch~combout\))) # (!GLOBAL(\alu_b_out~1clkctrl_outclk\) & (\Ir_in[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[6]~input_o\,
	datab => \SE_in9_out[6]$latch~combout\,
	datad => \alu_b_out~1clkctrl_outclk\,
	combout => \SE_in9_out[6]$latch~combout\);

-- Location: LCCOMB_X38_Y62_N8
\SE_in9_out[7]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \SE_in9_out[7]$latch~combout\ = (GLOBAL(\alu_b_out~1clkctrl_outclk\) & ((\SE_in9_out[7]$latch~combout\))) # (!GLOBAL(\alu_b_out~1clkctrl_outclk\) & (\Ir_in[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[7]~input_o\,
	datac => \SE_in9_out[7]$latch~combout\,
	datad => \alu_b_out~1clkctrl_outclk\,
	combout => \SE_in9_out[7]$latch~combout\);

-- Location: LCCOMB_X38_Y62_N26
\SE_in9_out[8]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \SE_in9_out[8]$latch~combout\ = (GLOBAL(\alu_b_out~1clkctrl_outclk\) & ((\SE_in9_out[8]$latch~combout\))) # (!GLOBAL(\alu_b_out~1clkctrl_outclk\) & (\Ir_in[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[8]~input_o\,
	datac => \SE_in9_out[8]$latch~combout\,
	datad => \alu_b_out~1clkctrl_outclk\,
	combout => \SE_in9_out[8]$latch~combout\);

-- Location: CLKCTRL_G9
\state.s6~clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \state.s6~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \state.s6~clkctrl_outclk\);

-- Location: LCCOMB_X28_Y40_N24
\msbxtnder_out[0]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \msbxtnder_out[0]$latch~combout\ = (GLOBAL(\state.s6~clkctrl_outclk\) & (\Ir_in[0]~input_o\)) # (!GLOBAL(\state.s6~clkctrl_outclk\) & ((\msbxtnder_out[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[0]~input_o\,
	datab => \msbxtnder_out[0]$latch~combout\,
	datad => \state.s6~clkctrl_outclk\,
	combout => \msbxtnder_out[0]$latch~combout\);

-- Location: LCCOMB_X1_Y44_N8
\msbxtnder_out[1]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \msbxtnder_out[1]$latch~combout\ = (GLOBAL(\state.s6~clkctrl_outclk\) & (\Ir_in[1]~input_o\)) # (!GLOBAL(\state.s6~clkctrl_outclk\) & ((\msbxtnder_out[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[1]~input_o\,
	datac => \msbxtnder_out[1]$latch~combout\,
	datad => \state.s6~clkctrl_outclk\,
	combout => \msbxtnder_out[1]$latch~combout\);

-- Location: LCCOMB_X27_Y37_N6
\msbxtnder_out[2]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \msbxtnder_out[2]$latch~combout\ = (GLOBAL(\state.s6~clkctrl_outclk\) & (\Ir_in[2]~input_o\)) # (!GLOBAL(\state.s6~clkctrl_outclk\) & ((\msbxtnder_out[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ir_in[2]~input_o\,
	datac => \state.s6~clkctrl_outclk\,
	datad => \msbxtnder_out[2]$latch~combout\,
	combout => \msbxtnder_out[2]$latch~combout\);

-- Location: LCCOMB_X21_Y72_N26
\msbxtnder_out[3]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \msbxtnder_out[3]$latch~combout\ = (GLOBAL(\state.s6~clkctrl_outclk\) & (\Ir_in[3]~input_o\)) # (!GLOBAL(\state.s6~clkctrl_outclk\) & ((\msbxtnder_out[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ir_in[3]~input_o\,
	datac => \msbxtnder_out[3]$latch~combout\,
	datad => \state.s6~clkctrl_outclk\,
	combout => \msbxtnder_out[3]$latch~combout\);

-- Location: LCCOMB_X38_Y62_N16
\msbxtnder_out[4]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \msbxtnder_out[4]$latch~combout\ = (GLOBAL(\state.s6~clkctrl_outclk\) & ((\Ir_in[4]~input_o\))) # (!GLOBAL(\state.s6~clkctrl_outclk\) & (\msbxtnder_out[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \msbxtnder_out[4]$latch~combout\,
	datac => \Ir_in[4]~input_o\,
	datad => \state.s6~clkctrl_outclk\,
	combout => \msbxtnder_out[4]$latch~combout\);

-- Location: LCCOMB_X38_Y62_N22
\msbxtnder_out[5]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \msbxtnder_out[5]$latch~combout\ = (GLOBAL(\state.s6~clkctrl_outclk\) & (\Ir_in[5]~input_o\)) # (!GLOBAL(\state.s6~clkctrl_outclk\) & ((\msbxtnder_out[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[5]~input_o\,
	datac => \msbxtnder_out[5]$latch~combout\,
	datad => \state.s6~clkctrl_outclk\,
	combout => \msbxtnder_out[5]$latch~combout\);

-- Location: LCCOMB_X27_Y37_N24
\msbxtnder_out[6]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \msbxtnder_out[6]$latch~combout\ = (GLOBAL(\state.s6~clkctrl_outclk\) & (\Ir_in[6]~input_o\)) # (!GLOBAL(\state.s6~clkctrl_outclk\) & ((\msbxtnder_out[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[6]~input_o\,
	datac => \state.s6~clkctrl_outclk\,
	datad => \msbxtnder_out[6]$latch~combout\,
	combout => \msbxtnder_out[6]$latch~combout\);

-- Location: LCCOMB_X38_Y62_N28
\msbxtnder_out[7]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \msbxtnder_out[7]$latch~combout\ = (GLOBAL(\state.s6~clkctrl_outclk\) & (\Ir_in[7]~input_o\)) # (!GLOBAL(\state.s6~clkctrl_outclk\) & ((\msbxtnder_out[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[7]~input_o\,
	datab => \msbxtnder_out[7]$latch~combout\,
	datad => \state.s6~clkctrl_outclk\,
	combout => \msbxtnder_out[7]$latch~combout\);

-- Location: LCCOMB_X38_Y62_N30
\msbxtnder_out[8]$latch\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \msbxtnder_out[8]$latch~combout\ = (GLOBAL(\state.s6~clkctrl_outclk\) & (\Ir_in[8]~input_o\)) # (!GLOBAL(\state.s6~clkctrl_outclk\) & ((\msbxtnder_out[8]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ir_in[8]~input_o\,
	datac => \msbxtnder_out[8]$latch~combout\,
	datad => \state.s6~clkctrl_outclk\,
	combout => \msbxtnder_out[8]$latch~combout\);

-- Location: IOIBUF_X58_Y0_N8
\mem_a_in[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_a_in(0),
	o => \mem_a_in[0]~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\mem_a_in[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_a_in(1),
	o => \mem_a_in[1]~input_o\);

-- Location: IOIBUF_X105_Y0_N15
\mem_a_in[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_a_in(2),
	o => \mem_a_in[2]~input_o\);

-- Location: IOIBUF_X107_Y73_N22
\mem_a_in[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_a_in(3),
	o => \mem_a_in[3]~input_o\);

-- Location: IOIBUF_X89_Y73_N22
\mem_a_in[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_a_in(4),
	o => \mem_a_in[4]~input_o\);

-- Location: IOIBUF_X89_Y73_N15
\mem_a_in[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_a_in(5),
	o => \mem_a_in[5]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\mem_a_in[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_a_in(6),
	o => \mem_a_in[6]~input_o\);

-- Location: IOIBUF_X96_Y73_N15
\mem_a_in[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_a_in(7),
	o => \mem_a_in[7]~input_o\);

-- Location: IOIBUF_X115_Y55_N15
\mem_a_in[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_a_in(8),
	o => \mem_a_in[8]~input_o\);

-- Location: IOIBUF_X102_Y73_N1
\mem_a_in[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_a_in(9),
	o => \mem_a_in[9]~input_o\);

-- Location: IOIBUF_X107_Y73_N8
\mem_a_in[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_a_in(10),
	o => \mem_a_in[10]~input_o\);

-- Location: IOIBUF_X91_Y73_N15
\mem_a_in[11]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_a_in(11),
	o => \mem_a_in[11]~input_o\);

-- Location: IOIBUF_X81_Y0_N15
\mem_a_in[12]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_a_in(12),
	o => \mem_a_in[12]~input_o\);

-- Location: IOIBUF_X115_Y23_N1
\mem_a_in[13]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_a_in(13),
	o => \mem_a_in[13]~input_o\);

-- Location: IOIBUF_X96_Y0_N1
\mem_a_in[14]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_a_in(14),
	o => \mem_a_in[14]~input_o\);

-- Location: IOIBUF_X102_Y73_N8
\mem_a_in[15]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_a_in(15),
	o => \mem_a_in[15]~input_o\);

ww_PC_out(0) <= \PC_out[0]~output_o\;

ww_PC_out(1) <= \PC_out[1]~output_o\;

ww_PC_out(2) <= \PC_out[2]~output_o\;

ww_PC_out(3) <= \PC_out[3]~output_o\;

ww_PC_out(4) <= \PC_out[4]~output_o\;

ww_PC_out(5) <= \PC_out[5]~output_o\;

ww_PC_out(6) <= \PC_out[6]~output_o\;

ww_PC_out(7) <= \PC_out[7]~output_o\;

ww_PC_out(8) <= \PC_out[8]~output_o\;

ww_PC_out(9) <= \PC_out[9]~output_o\;

ww_PC_out(10) <= \PC_out[10]~output_o\;

ww_PC_out(11) <= \PC_out[11]~output_o\;

ww_PC_out(12) <= \PC_out[12]~output_o\;

ww_PC_out(13) <= \PC_out[13]~output_o\;

ww_PC_out(14) <= \PC_out[14]~output_o\;

ww_PC_out(15) <= \PC_out[15]~output_o\;

ww_Ir_out(0) <= \Ir_out[0]~output_o\;

ww_Ir_out(1) <= \Ir_out[1]~output_o\;

ww_Ir_out(2) <= \Ir_out[2]~output_o\;

ww_Ir_out(3) <= \Ir_out[3]~output_o\;

ww_Ir_out(4) <= \Ir_out[4]~output_o\;

ww_Ir_out(5) <= \Ir_out[5]~output_o\;

ww_Ir_out(6) <= \Ir_out[6]~output_o\;

ww_Ir_out(7) <= \Ir_out[7]~output_o\;

ww_Ir_out(8) <= \Ir_out[8]~output_o\;

ww_Ir_out(9) <= \Ir_out[9]~output_o\;

ww_Ir_out(10) <= \Ir_out[10]~output_o\;

ww_Ir_out(11) <= \Ir_out[11]~output_o\;

ww_Ir_out(12) <= \Ir_out[12]~output_o\;

ww_Ir_out(13) <= \Ir_out[13]~output_o\;

ww_Ir_out(14) <= \Ir_out[14]~output_o\;

ww_Ir_out(15) <= \Ir_out[15]~output_o\;

ww_mem_a_out(0) <= \mem_a_out[0]~output_o\;

ww_mem_a_out(1) <= \mem_a_out[1]~output_o\;

ww_mem_a_out(2) <= \mem_a_out[2]~output_o\;

ww_mem_a_out(3) <= \mem_a_out[3]~output_o\;

ww_mem_a_out(4) <= \mem_a_out[4]~output_o\;

ww_mem_a_out(5) <= \mem_a_out[5]~output_o\;

ww_mem_a_out(6) <= \mem_a_out[6]~output_o\;

ww_mem_a_out(7) <= \mem_a_out[7]~output_o\;

ww_mem_a_out(8) <= \mem_a_out[8]~output_o\;

ww_mem_a_out(9) <= \mem_a_out[9]~output_o\;

ww_mem_a_out(10) <= \mem_a_out[10]~output_o\;

ww_mem_a_out(11) <= \mem_a_out[11]~output_o\;

ww_mem_a_out(12) <= \mem_a_out[12]~output_o\;

ww_mem_a_out(13) <= \mem_a_out[13]~output_o\;

ww_mem_a_out(14) <= \mem_a_out[14]~output_o\;

ww_mem_a_out(15) <= \mem_a_out[15]~output_o\;

ww_mem_d_out(0) <= \mem_d_out[0]~output_o\;

ww_mem_d_out(1) <= \mem_d_out[1]~output_o\;

ww_mem_d_out(2) <= \mem_d_out[2]~output_o\;

ww_mem_d_out(3) <= \mem_d_out[3]~output_o\;

ww_mem_d_out(4) <= \mem_d_out[4]~output_o\;

ww_mem_d_out(5) <= \mem_d_out[5]~output_o\;

ww_mem_d_out(6) <= \mem_d_out[6]~output_o\;

ww_mem_d_out(7) <= \mem_d_out[7]~output_o\;

ww_mem_d_out(8) <= \mem_d_out[8]~output_o\;

ww_mem_d_out(9) <= \mem_d_out[9]~output_o\;

ww_mem_d_out(10) <= \mem_d_out[10]~output_o\;

ww_mem_d_out(11) <= \mem_d_out[11]~output_o\;

ww_mem_d_out(12) <= \mem_d_out[12]~output_o\;

ww_mem_d_out(13) <= \mem_d_out[13]~output_o\;

ww_mem_d_out(14) <= \mem_d_out[14]~output_o\;

ww_mem_d_out(15) <= \mem_d_out[15]~output_o\;

ww_LS_in_out(0) <= \LS_in_out[0]~output_o\;

ww_LS_in_out(1) <= \LS_in_out[1]~output_o\;

ww_LS_in_out(2) <= \LS_in_out[2]~output_o\;

ww_LS_in_out(3) <= \LS_in_out[3]~output_o\;

ww_LS_in_out(4) <= \LS_in_out[4]~output_o\;

ww_LS_in_out(5) <= \LS_in_out[5]~output_o\;

ww_LS_in_out(6) <= \LS_in_out[6]~output_o\;

ww_LS_in_out(7) <= \LS_in_out[7]~output_o\;

ww_LS_in_out(8) <= \LS_in_out[8]~output_o\;

ww_LS_in_out(9) <= \LS_in_out[9]~output_o\;

ww_LS_in_out(10) <= \LS_in_out[10]~output_o\;

ww_LS_in_out(11) <= \LS_in_out[11]~output_o\;

ww_LS_in_out(12) <= \LS_in_out[12]~output_o\;

ww_LS_in_out(13) <= \LS_in_out[13]~output_o\;

ww_LS_in_out(14) <= \LS_in_out[14]~output_o\;

ww_LS_in_out(15) <= \LS_in_out[15]~output_o\;

ww_Rf_D3_out(0) <= \Rf_D3_out[0]~output_o\;

ww_Rf_D3_out(1) <= \Rf_D3_out[1]~output_o\;

ww_Rf_D3_out(2) <= \Rf_D3_out[2]~output_o\;

ww_Rf_D3_out(3) <= \Rf_D3_out[3]~output_o\;

ww_Rf_D3_out(4) <= \Rf_D3_out[4]~output_o\;

ww_Rf_D3_out(5) <= \Rf_D3_out[5]~output_o\;

ww_Rf_D3_out(6) <= \Rf_D3_out[6]~output_o\;

ww_Rf_D3_out(7) <= \Rf_D3_out[7]~output_o\;

ww_Rf_D3_out(8) <= \Rf_D3_out[8]~output_o\;

ww_Rf_D3_out(9) <= \Rf_D3_out[9]~output_o\;

ww_Rf_D3_out(10) <= \Rf_D3_out[10]~output_o\;

ww_Rf_D3_out(11) <= \Rf_D3_out[11]~output_o\;

ww_Rf_D3_out(12) <= \Rf_D3_out[12]~output_o\;

ww_Rf_D3_out(13) <= \Rf_D3_out[13]~output_o\;

ww_Rf_D3_out(14) <= \Rf_D3_out[14]~output_o\;

ww_Rf_D3_out(15) <= \Rf_D3_out[15]~output_o\;

ww_alu_a_out(0) <= \alu_a_out[0]~output_o\;

ww_alu_a_out(1) <= \alu_a_out[1]~output_o\;

ww_alu_a_out(2) <= \alu_a_out[2]~output_o\;

ww_alu_a_out(3) <= \alu_a_out[3]~output_o\;

ww_alu_a_out(4) <= \alu_a_out[4]~output_o\;

ww_alu_a_out(5) <= \alu_a_out[5]~output_o\;

ww_alu_a_out(6) <= \alu_a_out[6]~output_o\;

ww_alu_a_out(7) <= \alu_a_out[7]~output_o\;

ww_alu_a_out(8) <= \alu_a_out[8]~output_o\;

ww_alu_a_out(9) <= \alu_a_out[9]~output_o\;

ww_alu_a_out(10) <= \alu_a_out[10]~output_o\;

ww_alu_a_out(11) <= \alu_a_out[11]~output_o\;

ww_alu_a_out(12) <= \alu_a_out[12]~output_o\;

ww_alu_a_out(13) <= \alu_a_out[13]~output_o\;

ww_alu_a_out(14) <= \alu_a_out[14]~output_o\;

ww_alu_a_out(15) <= \alu_a_out[15]~output_o\;

ww_alu_b_out(0) <= \alu_b_out[0]~output_o\;

ww_alu_b_out(1) <= \alu_b_out[1]~output_o\;

ww_alu_b_out(2) <= \alu_b_out[2]~output_o\;

ww_alu_b_out(3) <= \alu_b_out[3]~output_o\;

ww_alu_b_out(4) <= \alu_b_out[4]~output_o\;

ww_alu_b_out(5) <= \alu_b_out[5]~output_o\;

ww_alu_b_out(6) <= \alu_b_out[6]~output_o\;

ww_alu_b_out(7) <= \alu_b_out[7]~output_o\;

ww_alu_b_out(8) <= \alu_b_out[8]~output_o\;

ww_alu_b_out(9) <= \alu_b_out[9]~output_o\;

ww_alu_b_out(10) <= \alu_b_out[10]~output_o\;

ww_alu_b_out(11) <= \alu_b_out[11]~output_o\;

ww_alu_b_out(12) <= \alu_b_out[12]~output_o\;

ww_alu_b_out(13) <= \alu_b_out[13]~output_o\;

ww_alu_b_out(14) <= \alu_b_out[14]~output_o\;

ww_alu_b_out(15) <= \alu_b_out[15]~output_o\;

ww_Rf_A1_out(0) <= \Rf_A1_out[0]~output_o\;

ww_Rf_A1_out(1) <= \Rf_A1_out[1]~output_o\;

ww_Rf_A1_out(2) <= \Rf_A1_out[2]~output_o\;

ww_Rf_A2_out(0) <= \Rf_A2_out[0]~output_o\;

ww_Rf_A2_out(1) <= \Rf_A2_out[1]~output_o\;

ww_Rf_A2_out(2) <= \Rf_A2_out[2]~output_o\;

ww_Rf_A3_out(0) <= \Rf_A3_out[0]~output_o\;

ww_Rf_A3_out(1) <= \Rf_A3_out[1]~output_o\;

ww_Rf_A3_out(2) <= \Rf_A3_out[2]~output_o\;

ww_aluctrl_out(0) <= \aluctrl_out[0]~output_o\;

ww_aluctrl_out(1) <= \aluctrl_out[1]~output_o\;

ww_Regwr_out <= \Regwr_out~output_o\;

ww_memwr_out <= \memwr_out~output_o\;

ww_iren <= \iren~output_o\;

ww_modifyc_out <= \modifyc_out~output_o\;

ww_modifyz_out <= \modifyz_out~output_o\;

ww_SE_in6_out(0) <= \SE_in6_out[0]~output_o\;

ww_SE_in6_out(1) <= \SE_in6_out[1]~output_o\;

ww_SE_in6_out(2) <= \SE_in6_out[2]~output_o\;

ww_SE_in6_out(3) <= \SE_in6_out[3]~output_o\;

ww_SE_in6_out(4) <= \SE_in6_out[4]~output_o\;

ww_SE_in6_out(5) <= \SE_in6_out[5]~output_o\;

ww_SE_in9_out(0) <= \SE_in9_out[0]~output_o\;

ww_SE_in9_out(1) <= \SE_in9_out[1]~output_o\;

ww_SE_in9_out(2) <= \SE_in9_out[2]~output_o\;

ww_SE_in9_out(3) <= \SE_in9_out[3]~output_o\;

ww_SE_in9_out(4) <= \SE_in9_out[4]~output_o\;

ww_SE_in9_out(5) <= \SE_in9_out[5]~output_o\;

ww_SE_in9_out(6) <= \SE_in9_out[6]~output_o\;

ww_SE_in9_out(7) <= \SE_in9_out[7]~output_o\;

ww_SE_in9_out(8) <= \SE_in9_out[8]~output_o\;

ww_msbxtnder_out(0) <= \msbxtnder_out[0]~output_o\;

ww_msbxtnder_out(1) <= \msbxtnder_out[1]~output_o\;

ww_msbxtnder_out(2) <= \msbxtnder_out[2]~output_o\;

ww_msbxtnder_out(3) <= \msbxtnder_out[3]~output_o\;

ww_msbxtnder_out(4) <= \msbxtnder_out[4]~output_o\;

ww_msbxtnder_out(5) <= \msbxtnder_out[5]~output_o\;

ww_msbxtnder_out(6) <= \msbxtnder_out[6]~output_o\;

ww_msbxtnder_out(7) <= \msbxtnder_out[7]~output_o\;

ww_msbxtnder_out(8) <= \msbxtnder_out[8]~output_o\;
END structure;


