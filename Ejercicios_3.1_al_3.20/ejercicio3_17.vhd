----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:09:42 07/14/2022 
-- Design Name: 
-- Module Name:    ejercicio3_17 - Behavioral 
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

entity ejercicio3_17 is
    Port ( clk : in  STD_LOGIC;
           x : in  STD_LOGIC;
           z : out  STD_LOGIC);
end ejercicio3_17;

architecture Behavioral of ejercicio3_17 is
	type estados is(q0,q1,q2,q3,q4,q5,q6,q7);
	signal presente, futuro: estados;
begin

proceso1: process (presente, x) begin
	case presente is
		when q0=> z <='1';
			if x='0' then
				futuro <=q1;
			else
				futuro <=q0;
			end if;
		when q1=> z <='1';
			if x='1' then
				futuro <=q2;
			else
				futuro <=q1;
			end if;
		when q2=> z <='0';
			if x='1' then
				futuro <=q3;
			else
				futuro <=q2;
			end if;
		when q3=> z <='1';
			if x='0' then
				futuro <=q4;
			else
				futuro <=q3;
			end if;
		when q4=> z <='1';
			if x='1' then
				futuro <=q5;
			else
				futuro <=q4;
			end if;
		when q5=> z <='1';
			if x='0' then
				futuro <=q6;
			else
				futuro <=q5;
			end if;
		when q6=> z <='1';
			if x='1' then
				futuro <=q7;
			else
				futuro <=q6;
			end if;
		when q7=> z <='1';
			if x='0' then
				futuro <=q0;
			else
				futuro <=q7;
			end if;
	end case;
end process proceso1;

proceso2: process (clk) begin
	if(clk'event and clk='1')then
		presente <= futuro;
	end if;
end process proceso2;
end Behavioral;

