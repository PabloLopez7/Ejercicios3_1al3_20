----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:52:08 07/12/2022 
-- Design Name: 
-- Module Name:    contadorAD - secuencia 
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

entity contadorAD is
    Port ( clk, x : in  STD_LOGIC;
           Z1,Z2 : out  STD_LOGIC;
           Q: inout std_logic_vector(3 downto 0):="000");
end contadorAD;

architecture secuencia of contadorAD is

begin
	 process(clk,x)
		begin
			if(clk'event and clk='1')then
				if(x='0')then
					q<=q+1;
				else
					q<=q-1;
				end if;
			end if;
	end process;
	process (q) begin
	case q is
		--0
		when "0000" =>
			Z1<='1';
			Z2<='0';
		--1
		when "0001" =>
			Z1<='0';
			Z2<='1';
		--2
		when "0010" =>
			Z1<='1';
			Z2<='0';
		--3
		when "0011" =>
			Z1<='0';
			Z2<='1';
		--4
		when "0100" =>
			Z1<='1';
			Z2<='0';
		--5
		when "0101" =>
			Z1<='0';
			Z2<='1';
		--6
		when "0110" =>
			Z1<='1';
			Z2<='0';
		--7
		when "0111" =>
			Z1<='0';
			Z2<='1';
		--8
		when "1000" =>
			Z1<='1';
			Z2<='0';
		--9
		when "1001" =>
			Z1<='0';
			Z2<='1';
		--10
		when "1010" =>
			Z1<='1';
			Z2<='0';
		--11
		when "1011" =>
			Z1<='0';
			Z2<='1';
		--12
		when "1100" =>
			Z1<='1';
			Z2<='0';
		--13
		when "1101" =>
			Z1<='0';
			Z2<='1';
		--14
		when "1110" =>
			Z1<='1';
			Z2<='0';
		when others =>
			Z1<='0';
			Z2<='1';
	end case;
	end process;
end secuencia;

