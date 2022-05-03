----------------Top level entity of the logic---------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity fsm is port (
      clock, reset, c_out, z_out: in std_logic;
		PC_in, alu_c_in, Ir_in, mem_a_in, mem_d_in, Rf_D1_in, Rf_D2_in , SE_out6_in, SE_out9_in, msbxtnder_in, LS_out_in: in std_logic_vector(15 downto 0);
		PC_out, Ir_out, mem_a_out, mem_d_out, LS_in_out, Rf_D3_out, alu_a_out, alu_b_out : out std_logic_vector(15 downto 0);
      Rf_A1_out, Rf_A2_out, Rf_A3_out: out std_logic_vector(2 downto 0);	
		aluctrl_out: out std_logic_vector(1 downto 0);
		Regwr_out, memwr_out, iren, modifyc_out, modifyz_out: out std_logic;
		SE_in6_out : out std_logic_vector(5 downto 0);
		SE_in9_out, msbxtnder_out: out std_logic_vector(8 downto 0));
end fsm;


architecture a1 of fsm is

type state_type is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15, s16, s17, s18, s19, s20,s21,s22,s23,s24,s25,s26,s27);
signal state, next_state : state_type; 
Signal T1,T2,T3,T4: std_logic_vector(15 downto 0);
begin
SYNC_PROC : process (clock,reset)
begin
	 if rising_edge(clock) then
		 if (reset = '1') then
			state <= s1;
		 else
			state <= next_state;
		 end if;
	end if;
end process;
----------================================================================================
OUTPUT_DECODE :
process (state,clock)
begin
--------------------Initialising in Start-----------------------------------------------------
case (state) is
   when s0 => 
	   aluctrl_out <= "01";
		alu_a_out <= PC_in;
      alu_b_out <= "0000000000000001";
      mem_a_out<=PC_in;
		iren <= '1';
	   PC_out <= alu_c_in;
		IR_out <= mem_d_in;
	
	when s1 =>
      Rf_A1_out <= Ir_in(8 DOWNTO 6);
      Rf_A2_out <= Ir_in(5 DOWNTO 3);
	 if(Ir_in(15 downto 12)="0001" or Ir_in(15 downto 12)="0010") then
	   modifyc_out<= Ir_in(1);
		modifyz_out<= Ir_in(0);
		end if;
      T1 <= Rf_D1_in;
	   T2 <= Rf_D2_in;
   
	when s2 =>
		aluctrl_out <= "01";
      alu_a_out <= T1;
      alu_b_out <= T2;	
	   T3 <= alu_c_in;
		 
	when s3 =>
		 Regwr_out <= '1';
       Rf_D3_out<= T3;
	    Rf_A3_out <= Ir_in(11 DOWNTO 9);
		 Regwr_out <= '0';
 
   when s4=>
	   Rf_A1_out <= Ir_in(11 DOWNTO 9);
      Rf_A2_out<= Ir_in( 8 DOWNTO 6);
		T1<= Rf_D2_in;
		T2 <= Rf_D1_in;
	   
	when s5=>
     Rf_A1_out <= Ir_in(8 DOWNTO 6);
     SE_in6_out<= Ir_in(5 downto 0); --6 to 16 shifter
	  T1 <= SE_out6_in;
	  T2<= Rf_D1_in;
	   
	when s6=>
     msbxtnder_out <= Ir_in(8 downto 0); --9 to 16 shifter
	  Regwr_out <= '1';
	  Rf_D3_out <= msbxtnder_in;
	  Rf_A3_out <= Ir_in(11 downto 9);
	  Regwr_out <= '0';
	   
	when s7=>
     Rf_A1_out<= Ir_in(8 downto 6);
	  T1 <= Rf_D1_in;
	   
   when S8=>
     alu_a_out <= T1;
	  SE_in6_out <= Ir_in(5 downto 0);
	  aluctrl_out <= "01";
	  alu_b_out <= SE_out6_in;
	  T3 <= alu_c_in;
	    
   when s9=>
     mem_a_out <= T3;
	  T3 <= mem_d_in;
	    
   when s10=>
     Rf_A1_out <= Ir_in(11 DOWNTO 9);
     Rf_A2_out <= Ir_in( 8 DOWNTO 6);
	  T1 <= Rf_D2_in;
	  T2 <= Rf_D1_in;
		
   when s11=> 
	  memwr_out <= '1';
     mem_a_out <= T3;
	  mem_d_out <= T2;
	  memwr_out<= '0';
		
	when s12=>
      T1<= "0000000000000000";
		T2<="0000000000000001";
		
	when s13=>
		alu_a_out(7 downto 0) <= Ir_in(7 DOWNTO 0);
		f01 : for i in 8 to 15 loop
		alu_a_out(i) <= Ir_in(7);
		end loop f01; -- f
		alu_b_out <= T2;
      
	when s14=>
	   Rf_A1_out <= Ir_in(11 DOWNTO 9);
		T3<= Rf_D1_in;
		  
	  when s15=>
      mem_a_out <= T3;
		T4 <= mem_d_in;
		
   when s16=>
	   Regwr_out <= '1';
		Rf_A3_out<= T1(2 downto 0);
		LS_in_out <= T2;
		Rf_D3_out <= T4;
		T2<= LS_out_in;
		Regwr_out <= '0';
		 
   when s17=>
      aluctrl_out <= "01";
		alu_a_out<= T1;
		alu_b_out <= "0000000000000001";
		T1<= alu_c_in;
		  
   when s18=>
	   aluctrl_out <= "01";        
		alu_a_out <= T3;
		alu_b_out <= "0000000000000001";
		T3 <= alu_c_in;
		   
   when s19=>
	   LS_in_out <= T2;
		T2<= LS_out_in;
		    
   when s20=>
	  Rf_A1_out <= T1(2 DOWNTO 0);
	  T3 <= Rf_D1_in;
		  
	when s21=>
	  aluctrl_out <= "11";
     alu_a_out <= T3;
	  alu_b_out <= "0000000000000001";
	  T3 <= alu_c_in;
		  
	when s22=>
	  alu_a_out<=T1;
	  alu_b_out<=T2;
	  PC_out<= T3;
		  
	when s23=>
	  Regwr_out <= '1';
     rf_A3_out <= Ir_in(11 DOWNTO 9);
	  Rf_D3_out<= PC_in;
	  Regwr_out <= '0';
		  
	when s24=>
	  SE_in9_out <= Ir_in(8 DOWNTO 0);
	  aluctrl_out <= "01";
	  alu_b_out<= SE_out9_in;
	  alu_a_out<= PC_in;
	  PC_out <= alu_c_in; 
		  
   when s25=>
	  Rf_A1_out <= Ir_in(8 DOWNTO 6);
	  PC_out <= Rf_D1_in;
		
   when s26=>
	  SE_in9_out <= Ir_in(8 DOWNTO 0);
	  Rf_A1_out<= Ir_in(11 DOWNTO 9);
	  aluctrl_out <= "01";
	  alu_b_out <= SE_out9_in;
	  alu_a_out <= Rf_D1_in;
	  PC_out <= alu_c_in; 
		
	when s27=>
	  if( T1 = "0000000000001000") then
		   modifyc_out<='1';
	  else modifyc_out<='0';
	  end if;
		  
   end case; 
	end process;

--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


NEXT_STATE_DECODE : process (state, c_out, z_out,Ir_in)
	begin
	 next_state <= s1;
	 case (state) is
	 when s0 =>
			if (Ir_in(15 downto 12)="1001") then
				next_state<=s23;
			elsif (Ir_in(15 downto 12)="1010") then
				next_state<=s6;
			elsif ((Ir_in(15 downto 12)="0001" or Ir_in(15 downto 12)="0010") and (Ir_in(1)='1' and Ir_in(0)='0'))then 
				next_state<=s1;
			elsif ((Ir_in(15 downto 12)="0001" or Ir_in(15 downto 12)="0010") and (Ir_in(1)='0' and Ir_in(0)='1'))then 
				next_state<=s1;
			elsif ((Ir_in(15 downto 12)="0001" or Ir_in(15 downto 12)="0010") and (Ir_in(1)='0' and Ir_in(0)='0'))then 
				next_state<=s1;
			elsif (Ir_in(15 downto 12)="0011") then
				next_state<=s5;
			elsif (Ir_in(15 downto 12)="0001" and Ir_in(1)='1' and Ir_in(0)='1') then
				next_state<=s4;
			elsif (Ir_in(15 downto 12)="0101" or Ir_in(15 downto 12)="1000") then
				next_state<=s10;
			elsif (Ir_in(15 downto 12)="0111") then
				next_state<=s7;
			elsif (Ir_in(15 downto 12)="0101" or Ir_in(15 downto 12)="1100") then
				next_state<=s12;
			elsif (Ir_in(15 downto 12)="1011") then
				next_state<=s26;
			end if;
	 when s23 =>
		   if (Ir_in(15 downto 12)="1010") then
				next_state<=s25;
			elsif (Ir_in(15 downto 12)="1001") then
				next_state<=s24;
			end if;
   when s1 =>
		next_state<=s2;
	when s5 =>
		next_state<=s2;
   when s4 =>
		next_state<=s2;
	when s2 =>
		next_state<=s3;
	when s10 =>
		if (Ir_in(15 downto 12)="1000") then
				next_state<=s21;
		elsif (Ir_in(15 downto 12)="0101") then
				next_state<=s8;
		end if;
	when s7 =>
		next_state<=s8;
	when s8 =>
		if (Ir_in(15 downto 12)="0101") then
				next_state<=s11;
		elsif (Ir_in(15 downto 12)="0111") then
				next_state<=s9;
		end if;
	when s9 =>
		next_state<=s3;
	when s12 =>
		next_state<=s27;
	when s27 =>
		if (c_out='1') then
				next_state<=s13;
		end if;
	when s13 =>
		if (z_out='0') then
			next_state<=s14;
		else next_state<=s19;
		end if;
	when s14 =>
		if(Ir_in(15 downto 12)="1101") then
			next_state<=s20;
		elsif (Ir_in(15 downto 12)="1100") then
				next_state<=s15;
		end if;
	when s15 =>
		next_state<= s16;
	when s16=>
		next_state<= s17;
	when s17 =>
			next_state<=s18;
	when s18 =>
		next_state <= s27;
	when s20 =>
			next_state<=s17;
	when s19 =>
		next_state<= s17;
	when others =>
		next_state <= s0;
	 end case;
end process;
end a1;