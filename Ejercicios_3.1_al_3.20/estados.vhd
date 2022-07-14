----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:34:45 07/12/2022 
-- Design Name: 
-- Module Name:    estados - diagrama 
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
use ieee.std_logic_arith.all;

entity estados is
    Port ( clk,a : in  STD_LOGIC;
           S : out  STD_LOGIC);
end estados;

architecture diagrama of estados is
	type estados is(A,B,C,D);
	signal edo_presente, edo_futuro: estados;

begin
	proceso1: process(edo_presente,a)
		begin
			case edo_presente is
				when A =>
					if a='1' then
						edo_futuro<=B;
						S<='0';
					else
						edo_futuro<=D;
						S<='0';
					end if;
				when B=>
					if a='1' then
						edo_futuro<=C;
						S<='0';
					else
						edo_futuro<=D;
						S<='0';
					end if;
				when C=>
					if a='0' then
						edo_futuro<=D;
						S<='0';
					else
						edo_futuro<=B;
						S<='0';
					end if;
				when D=>
					if a='0' then
						edo_futuro<=D;
						S<='0';
					else
						edo_futuro<=A;
						S<='1';
					end if;
		end case;
	end process proceso1;
	
	proceso2: process(clk)
		begin
			if(clk' event and clk='1')then
				edo_presente<=edo_futuro;
			end if;
	end process proceso2;
end diagrama;

