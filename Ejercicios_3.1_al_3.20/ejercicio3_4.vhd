----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:41:40 07/13/2022 
-- Design Name: 
-- Module Name:    ejercicio3_4 - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.STD_LOGIC_arith.ALL;

entity ejercicio3_4 is
    Port ( clk : in  STD_LOGIC;
           s : inout  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR(3 downto 0);
           mc : in  STD_LOGIC);
end ejercicio3_4;

architecture Behavioral of ejercicio3_4 is
signal a : STD_LOGIC_VECTOR(2 downto 0) := "000";
	begin
		process(clk)
		begin
			if(clk'event and clk='0')then
				a<=a+1;
				if (a ="110")then
					a<="000";
				end if;
			end if;
		end process;
		process (a) begin
			case a is
			when"001"=>
			if mc='0' then
				s<='1';
				q<="0000";
			elsif mc='1' then
				s<='0';
				q<="0000"; ----
			end if;
			when "010"=>
			if mc='0' then
				s<='0';
				q<="1000"; ----
			elsif mc='1' then
				s<='0';
				q<="0000";
			end if;
			when "011"=>
			if mc='0' then
				s<='0';
				q<="0100"; ----
			elsif mc='1' then
				s<='0';
				q<="0000";
			end if;
			when "100" =>
			if mc ='0' then
				s<='0';
				q<="0010";----
			elsif mc ='1' then
				s<= '0';
				q<="0000";
			end if;
			when "101" =>
			if mc = '0' then
				s<='1';
				q<="0001"; ----
			elsif mc ='1' then 
			s<='0';
			q<="0000";
			end if;
			when others =>
			s<='0';
		end case;
	end process;				
end Behavioral;