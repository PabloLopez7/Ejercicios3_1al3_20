----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:35:44 07/14/2022 
-- Design Name: 
-- Module Name:    ejercicio3_13 - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;

entity ejercicio3_13 is
    Port ( clk,x : in  STD_LOGIC;
           z : out  STD_LOGIC);
end ejercicio3_13;

architecture Behavioral of ejercicio3_13 is
	type estados is(A,B,C,D);
	signal presente, futuro: estados;
begin
proceso1: process (presente, x) begin
	case presente is
		when A =>z<= '1';
			if x= '1' then
				futuro <=B;
			else
				futuro <=D;
			end if;
		when B =>z<= '0';
			if x= '1' then
				futuro <=C;
			else
				futuro <=D;
			end if;
		when C =>z<= '0';
			if x= '1' then
				futuro <=B;
			else
				futuro <=D;
			end if;
		when D =>z<= '0';
			if x= '1' then
				futuro <=A;
			else
				futuro <=D;
			end if;
	end case;
end process proceso1;

proceso2: process(clk) begin
	if(clk'event and clk='1')then
		presente<=futuro;
	end if;
end process proceso2;
end Behavioral;

