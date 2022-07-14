----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:05:55 07/12/2022 
-- Design Name: 
-- Module Name:    contador2 - Behavioral 
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
use ieee.numeric_std.all;

entity contador2 is
    Port ( clk,x : in  STD_LOGIC;
           q: inout std_logic_vector(1 downto 0):="00");
end contador2;

architecture Behavioral of contador2 is
begin
	 process(clk,x)
		begin
			 if(clk'event and clk='1') then
				if(x='0')then
					q<=q+1;
				else
					q<=q-1;
				end if;
			end if;
	end process;
end Behavioral;

