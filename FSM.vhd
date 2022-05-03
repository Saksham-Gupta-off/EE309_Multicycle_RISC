----------------------------------------------
library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

-----------------------------------------------
entity Datapath is  --clock i/p length??
	port(reset, clock: in std_logic);
end entity;

architecture behave of Datapath is
-------------------------------------------------
signal smem_enable, s_irenable, sModifyC, sModifyZ, sC, sZ, srf_enable: std_logic ;
signal sA1, sA2, sA3: std_logic_vector(2 downto 0);
signal sadrs, sdata_ld, sinstr_data, s_irA, s_irO, s_shifterxin, s_shifterzout, sA, sB, sO, sWD3, sPC_in, sRD1, sRD2, sPC_out, s_msbzout, s_ninezout, s_sixzout  :std_logic_vector(15 downto 0);
signal sALUControl: std_logic_vector(1 downto 0);
signal s_msbxin, s_ninexin: std_logic_vector(8 downto 0);
signal s_sixxin: std_logic_vector(5 downto 0);
---------------------------------------------------
component ir is
	port (enable:in std_logic;
  A: in std_logic_vector(15 downto 0);
  O: out std_logic_vector(15 downto 0));
end component ir;

component mem is
   port (
	clock,enable: in std_logic;
	adrs,data_ld: in std_logic_vector(15 downto 0);
	instr_data: out std_logic_vector(15 downto 0));
end component mem ;

component rf is
   port (
	clock,enable: in std_logic;
	A1,A2,A3: in std_logic_vector(2 downto 0);
	WD3,PC_in: in std_logic_vector(15 downto 0);
	RD1,RD2,PC_out: out std_logic_vector(15 downto 0));
end component rf;

------------------------------------------------
component ALU is
   port (
	A,B: in std_logic_Vector(15 downto 0);
	ALUControl: in std_logic_Vector(1 downto 0);
	ModifyC,ModifyZ: in std_logic;
	O: out std_logic_Vector(15 downto 0);
	C,Z: out std_logic);
end component ALU ; 
------------------------------
component shifter is   
    port (xin : in std_logic_vector(15 downto 0);
		 zout: out std_logic_vector(15 downto 0));
end component shifter;

component msbxtnder is
     port (xin : in std_logic_vector(8 downto 0);
		 zout: out std_logic_vector(15 downto 0));
end component msbxtnder;

component ninesxtnder is  
  port (xin : in std_logic_vector(8 downto 0);
		 zout: out std_logic_vector(15 downto 0));
end component ninesxtnder;

component sixsxtnder is
 port (xin : in std_logic_vector(5 downto 0);
		 zout: out std_logic_vector(15 downto 0));
end component sixsxtnder;

component fsm is
 port (clock, reset, c_out, z_out: in std_logic;
		PC_in, alu_c_in, Ir_in, mem_a_in, mem_d_in, Rf_D1_in, Rf_D2_in , SE_out6_in, SE_out9_in, msbxtnder_in, LS_out_in: in std_logic_vector(15 downto 0);
		PC_out, Ir_out, mem_a_out, mem_d_out, LS_in_out, Rf_D3_out, alu_a_out, alu_b_out: out std_logic_vector(15 downto 0);
      Rf_A1_out, Rf_A2_out, Rf_A3_out: out std_logic_vector(2 downto 0);	
		aluctrl_out: out std_logic_vector(1 downto 0);
		Regwr_out, memwr_out, iren, modifyc_out, modifyz_out: out std_logic;
		SE_in6_out : out std_logic_vector(5 downto 0);
		SE_in9_out, msbxtnder_out: out std_logic_vector(8 downto 0));
end component fsm;
------------------------------------------------------
begin --doubt for enable port map
---Memory
memory_block: mem port map(clock=> clock, enable=> smem_enable, adrs=> sadrs, data_ld=> sdata_ld,instr_data=> sinstr_data);

---IR
IR_block: IR port map(enable=>s_irenable, A=>s_irA, O=>s_irO);


---shifter
shifter_block: shifter port map(xin=> s_shifterxin, zout=> s_shifterzout);

---ALU
ALU_block: ALU port map(A=> sA,B=> sB, ALUControl=> sALUControl, ModifyC=> sModifyC, ModifyZ=> sModifyZ, O=> sO, C=> sC,Z=> sZ);

---RF
RF_block: RF port map(clock=> clock, enable=> srf_enable, A1=> sA1, A2=> sA2, A3=> sA3, WD3=> sWD3, PC_in=> sPC_in, RD1=> sRD1, RD2=> sRD2, PC_out=> sPC_out);

---msbxtender
msb_block: msbxtnder port map(xin=> s_msbxin, zout=> s_msbzout);

---ninesxtender
nine_block: ninesxtnder port map(xin=> s_ninexin, zout=> s_ninezout);

---sixsxtender
six_block: sixsxtnder port map(xin=> s_sixxin, zout=> s_sixzout);

---FSM
FSM_block: fsm port map(clock=> clock, reset=> reset, iren=> s_irenable, c_out=> sC ,z_out=> sZ, PC_in=> sPC_out, alu_c_in=> sO,Ir_in=> s_irO 
                        ,mem_a_in=> sinstr_data ,mem_d_in=> sinstr_data ,Rf_D3_out=> sWD3,Rf_D1_in=> sRD1 ,Rf_D2_in=> sRD2,SE_out6_in=> s_sixxin ,SE_out9_in=> s_ninexin ,LS_out_in=> s_shifterzout ,Regwr_out=> srf_enable, memwr_out=> smem_enable,
								PC_out=> sPC_in ,Ir_out=> s_irA, mem_a_out=> sadrs, mem_d_out=> sdata_ld, LS_in_out=> s_shifterxin ,aluctrl_out=> sALUControl, SE_in6_out=> s_sixxin, SE_in9_out=> s_ninexin, 
								Rf_A1_out=> sA1 ,Rf_A2_out=> sA2 ,Rf_A3_out=> sA3, alu_a_out=> sA, alu_b_out=> sB, modifyc_out=> sModifyC, modifyz_out=> sModifyZ, msbxtnder_in=> s_msbzout, msbxtnder_out=> s_msbxin);
  

end behave;