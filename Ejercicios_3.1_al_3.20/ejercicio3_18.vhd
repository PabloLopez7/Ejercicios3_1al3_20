----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:47:00 07/14/2022 
-- Design Name: 
-- Module Name:    ejercicio3_18 - Behavioral 
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

entity ejercicio3_18 is
    Port ( clk : in  STD_LOGIC;
           x : in  STD_LOGIC;
           Q : inout  STD_LOGIC_VECTOR (2 downto 0);
           z : out  STD_LOGIC);
end ejercicio3_18;

architecture Behavioral of ejercicio3_18 is
	type estados is(A,B,C,D,E);
	signal presente, futuro: estados;
begin
proceso1: process(presente,x)begin
	case presente is
		when A=>
			if x='1' then
				futuro<=E;
				z<='0';
			else
				futuro<=B;
				z<='0';
			end if;
		when B=>
			if x='1' then
				futuro<=C;
				z<='1';
			else
				futuro<=A;
				z<='1';
			end if;
		when C=>
			if x='1' then
				futuro<=C;
				z<='1';
			else
				futuro<=B;
				z<='0';
			end if;
		when D=>
			if x='1' then
				futuro<=E;
				z<='0';
			else
				futuro<=C;
				z<='0';
			end if;
		when E=>
			if x='1' then
				futuro<=A;
				z<='0';
			else
				futuro<=D;
				z<='1';
			end if;
	end case;
end process proceso1;

proceso2: process (clk)begin
	if(clk'event and clk='1')then
		presente <= futuro;
	end if;
end process proceso2;

proceso3: process (presente) begin
	case presente is
		when A=> Q <= "000";
		when B=> Q <= "001";
		when C=> Q <= "010";
		when D=> Q <= "011";
		when E=> Q <= "100";
	end case;
end process proceso3;
end Behavioral;

