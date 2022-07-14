----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:40:04 07/14/2022 
-- Design Name: 
-- Module Name:    ejercicio3_16 - Behavioral 
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

entity ejercicio3_16 is
    Port ( clk,x : in  STD_LOGIC;
           z : in  STD_LOGIC);
end ejercicio3_16;

architecture Behavioral of ejercicio3_16 is
	type estados is (q0,q1,q2,q3,q4,q5);
	signal presente, futuro: estados;
begin
proceso1: process (presente,x) begin
	case presente is
		when q0 => z <= '1';
			if x='1' then
				futuro <= q1;
			else
				z <= '0';
			end if;
		when q1 => z <= '1';
			if x='1' then
				futuro <= q2;
			else
				z <= '0';
			end if;
		when q2 => z <= '1';
			if x='0' then
				futuro <= q3;
			else
				z <= '0';
			end if;
		when q3 => z <= '1';
			if x='0' then
				futuro <= q4;
			else
				z <= '0';
			end if;
		when q4 => z <= '1';
			if x='1' then
				futuro <= q5;
			else
				z <= '0';
			end if;
		when q5 => z <= '1';
			if x='1' then
				futuro <= q0;
			else
				z <= '0';
			end if;
	end case;
end process proceso1;

proceso2: process(clk) begin
	if(clk'event and clk='1')then
		presente <= futuro;
	end if;
end process proceso2;
end Behavioral;

