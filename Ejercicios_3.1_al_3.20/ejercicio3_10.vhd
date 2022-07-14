----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:12:37 07/13/2022 
-- Design Name: 
-- Module Name:    ejercicio3_10 - Behavioral 
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

entity ejercicio3_10 is
    Port ( clk, c : in  STD_LOGIC;
           q : inout  STD_LOGIC_VECTOR(3 downto 0):="0000";
           SAL1, SAL2 : out  STD_LOGIC);
end ejercicio3_10;

architecture Behavioral of ejercicio3_10 is

begin
	process(clk,c) begin
		if(clk'event and clk='1')then
			if(c='0')then
				q<=q+1;
				if(q="1001")then
					q="0000";
				end if;
				else
					q<=q-1;
					if(q="0000")then
					q="1001";
				end if;
			end if;
		end if;
	end process;
	process (q) begin
	case  q is
		--0
		when "0000" =>
			if c='0' then
				SAL1<='1';
				SAL2<='0';
			else
				SAL1<='0';
				SAL2<='0';
			end if;
		--1
		when "0001" =>
			if c='0' then
				SAL1<='0';
				SAL2<='0';
			else
				SAL1<='0';
				SAL2<='1';
			end if;
		--2
		when "0010" =>
			if c='0' then
				SAL1<='1';
				SAL2<='0';
			else
				SAL1<='0';
				SAL2<='0';
			end if;
		--3
		when "0011" =>
			if c='0' then
				SAL1<='0';
				SAL2<='0';
			else
				SAL1<='0';
				SAL2<='1';
			end if;
		--4
		when "0100" =>
			if c='0' then
				SAL1<='1';
				SAL2<='0';
			else
				SAL1<='0';
				SAL2<='0';
			end if;
		--5
		when "0101" =>
			if c='0' then
				SAL1<='0';
				SAL2<='0';
			else
				SAL1<='0';
				SAL2<='1';
			end if;
		--6
		when "0110" =>
			if c='0' then
				SAL1<='1';
				SAL2<='0';
			else
				SAL1<='0';
				SAL2<='0';
			end if;
		--7
		when "0111" =>
			if c='0' then
				SAL1<='0';
				SAL2<='0';
			else
				SAL1<='0';
				SAL2<='1';
			end if;
		--8
		when "1000" =>
			if c='0' then
				SAL1<='1';
				SAL2<='0';
			else
				SAL1<='0';
				SAL2<='0';
			end if;
		--9
		when "1001" =>
			if c='0' then
				SAL1<='0';
				SAL2<='0';
			else
				SAL1<='0';
				SAL2<='1';
			end if;
		when others =>
			SAL1<='0';
			SAL2<='0';
	end case;
	end process;
end Behavioral;

