----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:46:11 07/14/2022 
-- Design Name: 
-- Module Name:    ejercicio3_20 - Behavioral 
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

entity ejercicio3_20 is
    Port ( clk : in  STD_LOGIC;
           moneda : in  STD_LOGIC_VECTOR (4 downto 0);
           cambio : in  STD_LOGIC_VECTOR (4 downto 0));
end ejercicio3_20;

architecture Behavioral of ejercicio3_20 is
	type estados is(q0,q1,q2,q3);
	signal presente, futuro: estados;
begin
	proceso1: process (presente, mondea) begin
		case presente is
			when q0 =>
				cambio <="00000";---0
					if moneda ="00101" then--5
						futuro<=q1;
					elsif moneda ="01010" then--10
						futurro<=q2;
					elsif moneda="10100" then--20
						futuro<=q3;
					else
						futuro<=q0;
					end if;
			when q1 =>
				cambio <="00000";---0
					if moneda ="00101" then--5
						futuro<=q1;
					elsif moneda ="01010" then--10
						futurro<=q2;
					elsif moneda="10100" then--20
						futuro<=q3;
					else
						futuro<=q0;
					end if;
			when q2 =>
				cambio <="00101";---0
					if moneda ="00101" then--5
						futuro<=q1;
					elsif moneda ="01010" then--10
						futurro<=q2;
					elsif moneda="10100" then--20
						futuro<=q3;
					else
						futuro<=q0;
					end if;
			when q3 =>
				cambio <="01111";---0
					if moneda ="00101" then--5
						futuro<=q1;
					elsif moneda ="01010" then--10
						futurro<=q2;
					elsif moneda="10100" then--20
						futuro<=q3;
					else
						futuro<=q0;
					end if;
		end case;
	end process proceso1;
	
	proceso2: process(clk) begin
		if(clk'event and clk='1')then
			presente <= futuro;
		end if;
	end process proceso2;
end Behavioral;

