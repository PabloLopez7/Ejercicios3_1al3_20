----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:52:44 07/13/2022 
-- Design Name: 
-- Module Name:    ejercicio3_11 - Behavioral 
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

entity ejercicio3_11 is
    Port ( clk : in  STD_LOGIC;
           dec : inout  STD_LOGIC_VECTOR (3 downto 0):="0000";
           uni : inout  STD_LOGIC_VECTOR (3 downto 0):="0000";
           seg1 : out  STD_LOGIC_VECTOR (6 downto 0);
           seg2 : out  STD_LOGIC_VECTOR (6 downto 0));
end ejercicio3_11;

architecture Behavioral of ejercicio3_11 is

begin
	process(clk) begin
		if(clk'event end clk='1')then
			uni<=uni+1;
			if(uni="1001")then
				uni<="0000";
				dec<=dec+1;
					if(dec="1001")then
						dec<="0000";
					end if;
			end if;
		end if;
	end process;
	
	process(uni) begin
	case uni is
		when "0000" =>
			seg1<="1111110";
		--1
		when "0001" =>
			seg1<="0110000";
		--2
		when "0010" =>
			seg1<="1101101";
		--3
		when "0011"=>
			seg1<="1111001";
		--4
		when "0100"=>
			seg1<="0110011";
		--5
		when "0101"=>
			seg1<="1010011";
		--6
		when "0110"=>
			seg1<="1011111";
		--7
		when "0111"=>
			seg1<="1110001";
		--8
		when "1000"=>
			seg1<="1000000";
		--9
		when "1001"=>
			seg1<="1110011";
		
		when others =>
			seg1<="1111110";
	end case;
	end process;
	
	process (dec) begin
		case dec is
			--0
			when "0000"=>
				seg2<="1111110";
			--1
			when "0001"=>
				seg2<="0110000";
			--2
			when "0010"=>
				seg2<="1101101";
			--3
			when "0011"=>
				seg2<="1111001";
			--4
			when "0100"=>
				seg2<="0110011";
			--5
			when "0101"=>
				seg2<="1010011";
			--6
			when "0110"=>
				seg2<="1011111";
			--7
			when "0111"=>
				seg2<="1110001";
			--8
			when "1000"=>
				seg2<="1111111";
			--9
			when "1001"=>
				seg2<="1110011";
			
			when others =>
				seg2<="1111110";
		end case;
	end process;
end Behavioral;

