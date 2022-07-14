----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:40:19 07/12/2022 
-- Design Name: 
-- Module Name:    contador - Behavioral 
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

entity contador is
    Port ( clk, reset : in  STD_LOGIC;
           q: inout std_logic_vector(2 downto 0):="000");
end contador;

architecture Behavioral of contador is

begin
	process(clk,reset)
		begin
		 if(clk'event and clk='1') then
			if(q="111" or reset ='0')then
				q<="000";
			else
				q<=q+1;
			end if;
		end if;
	end process;
end Behavioral;

