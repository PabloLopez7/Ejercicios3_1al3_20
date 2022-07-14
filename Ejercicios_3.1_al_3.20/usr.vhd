----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:03:59 07/12/2022 
-- Design Name: 
-- Module Name:    usr - Behavioral 
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

entity usr is
    Port ( clk, DSR, DSL : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR(0 to 1);
           P : in  STD_LOGIC_VECTOR(0 to 3);
           Q : out  STD_LOGIC_VECTOR(0 to 3));
end usr;

architecture Behavioral of usr is
	signal Z: std_logic_vector(0 to 3);
	process(clk, reset);
		begin
			if(reset='0')then
				Z<="0000";
			elsif(clk' event and clk='1')then
				case S is
					when "01" => Z <= DSR& Z(0 to 2)
					when "10" => Z <= DSL& Z(1 to 3)
					when "11" => Z <= P;
					when others => Z <= NULL;
				end case;
			end if;
	end process;
end Behavioral;

