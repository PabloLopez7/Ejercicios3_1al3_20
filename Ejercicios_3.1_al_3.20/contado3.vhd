----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:23:21 07/12/2022 
-- Design Name: 
-- Module Name:    contado3 - Behavioral 
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
use ieee.std_logic_unsigned.all;

entity contado3 is
    Port ( clk, reset : in  STD_LOGIC;
           q: buffer std_logic_vector(2 downto 0));
end contado3;

architecture Behavioral of contado3 is
signal a:std_logic_vector(2 downto 0):="000";
begin
	process(clk)
		begin
			 if(clk'event and clk='1')then
					a<=a+1;
					if(a="101" or reset='1')then
						a<="001";
					end if;
			 end if;
	end process;
	process (a) begin
	case a is
		when "001" =>
			q<="000";
		when "010" =>
			q<="001";
		when "011" =>
			q<="011";
		when "100" =>
			q<="101";
		when others =>
			q<="000";
	end case;
	end process;
end Behavioral;

