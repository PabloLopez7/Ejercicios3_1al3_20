----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:09:20 07/14/2022 
-- Design Name: 
-- Module Name:    ejercicio3_19 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ejercicio3_19 is
    Port ( clk : in  STD_LOGIC;
           x : in  STD_LOGIC;
           z : out  STD_LOGIC_VECTOR (2 downto 0));
end ejercicio3_19;

architecture Behavioral of ejercicio3_19 is
	type estados is(q0,q1,q2,q3,q4,q5,q6,q7);
	signal presente, futuro: estados;
begin
	proceso1: process (presente, x) begin
		case presente is
			when q0 =>
				if x = '1' then
					futuro<='q0';
					z<="000";
				else
					futuro<='q1';
					z<="001";
				end if;
			when q1 =>
				if x = '1' then
					futuro<='q4';
					z<="100";
				else
					futuro<='q2';
					z<="010";
				end if;
			when q2 =>
				if x = '1' then
					futuro<='q5';
					z<="101";
				else
					futuro<='q3';
					z<="011";
				end if;
			when q3 =>
				if x = '1' then
					futuro<='q1';
					z<="001";
				else
					futuro<='q4';
					z<="100";
				end if;
			when q4 =>
				if x = '1' then
					futuro<='q2';
					z<="010";
				else
					futuro<='q5';
					z<="101";
				end if;
			when q5 =>
				if x = '1' then
					futuro<='q6';
					z<="110";
				else
					futuro<='q6';
					z<="110";
				end if;
			when q6 =>
				if x = '1' then
					futuro<='q7';
					z<="111";
				else
					futuro<='q7';
					z<="111";
				end if;
			when q7 =>
				if x = '1' then
					futuro<='q3';
					z<="011";
				else
					futuro<='q0';
					z<="000";
				end if;
		end case;
	end process proceso1;
	
	proceso2: process(clk)begin
		if(clk'event and clk='1')then
			presente <= futuro;
		end if;
	end process proceso2;
end Behavioral;

