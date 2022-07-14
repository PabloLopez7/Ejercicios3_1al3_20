----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:14:55 07/14/2022 
-- Design Name: 
-- Module Name:    ejercicio3_3 - Behavioral 
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

entity ejercicio3_3 is
    Port ( d : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           i : in  STD_LOGIC;
           de : in  STD_LOGIC_VECTOR (0 to 3);
           s : in  STD_LOGIC_VECTOR (0 to 1);
           q : inout  STD_LOGIC_VECTOR (0 to 3));
end ejercicio3_3;

architecture Behavioral of ejercicio3_3 is

begin
process(clk,d,i,rst)begin
	if(clk'event and clk='1')then
		if(rst ='1')then
			q<="0000";
		elsif (s="00")then
			q<=q;
		elsif (s="01")then
			q(3) <= q(2);
			q(2) <= q(1);
			q(1) <= q(0);
			q(0) <= i;
		elsif (s="11")then
			q(0) <= q(1);
			q(1) <= q(2);
			q(2) <= q(3);
			q(3) <= d;
		elsif (s="10")then
			q<=de;
		end if;
	end if;
end process;
end Behavioral;

