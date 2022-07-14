----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:57:44 07/14/2022 
-- Design Name: 
-- Module Name:    Ejercicio3_12 - Behavioral 
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

entity Ejercicio3_12 is
    Port ( clk : in  STD_LOGIC;
           cen : inout  STD_LOGIC_VECTOR (3 downto 0):="0000";
           dec : inout  STD_LOGIC_VECTOR (3 downto 0):="0000";
           uni : inout  STD_LOGIC_VECTOR (3 downto 0):="0000";
           seg1 : out  STD_LOGIC_VECTOR (6 downto 0);
           seg2 : out  STD_LOGIC_VECTOR (6 downto 0);
           seg3 : out  STD_LOGIC_VECTOR (6 downto 0));
end Ejercicio3_12;

architecture Behavioral of Ejercicio3_12 is
begin
	proceso1: process(clk)
		if(clk'even and clk='1')then
			if(cen ="0010" and dec="0100" and uni="0101")then
				cen<="0000"; dec<="0000"; uni<="0000";
			else
				uni<=uni+1;
				if(uni="1001")then
					uni<="0000";
					dec<=dec+1;
					if(dec="1001")then
						dec<="0000";
						cen<=cen+1;
					end if;
				end if;
			end if;
		end if;
	end process proceso1;
	
	proceso2: process (uni) begin
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
		when "0011" =>
			seg1<="1111001";
		--4
		when "0100" =>
			seg1<="0110011";
		--5
		when "0101" =>
			seg1<="1010011";
		--6
		when "0110" =>
			seg1<="1011111";
		--7
		when "0111" =>
			seg1<="1110001";
		--8
		when "1000" =>
			seg1<="1111111";
		--9
		when "1001" =>
			seg1<="1110011";
		
		when others =>
			seg1<="1111110";
	end case;
	end process proceso2;
	
	proceso3: process (dec) begin
	case dec is
		when"0000" =>
			seg2<="1111110";
		--1
		when"0001"=>
			seg2<="0110000";
		--2
		when"0010"=>
			seg2<="1101101";
		--3
		when"0011"=>
			seg2<="1111001";
		--4
		when"0100"=>
			seg2<="0110011";
		--5
		when"0101"=>
			seg2<="1010011";
		--6
		when"0110"=>
			seg2<="1011111";
		--7
		when"0111"=>
			seg2<="1110001";
		--8
		when"1000"=>
			seg2<="1111111";
		--9
		when"1001"=>
			seg2<="1111110";
		
		when others =>
			seg2<="1111110";
	end case;
	end process proceso3;
	
	proceso4: process (cen) begin
	case cen is
		when "0000" =>
			seg3<="1111110";
		--1
		when "0001" =>
			seg3<="0110000";
		--2
		when "0010" =>
			seg3<="1101101";
		--3
		when "0011" =>
			seg3<="1111001";
		--4
		when "0100" =>
			seg3<="0110011";
		--5
		when "0101" =>
			seg3<="1010011";
		--6
		when "0110" =>
			seg3<="1011111";
		--7
		when "0111" =>
			seg3<="1110001";
		--8
		when "1000" =>
			seg3<="1111111";
		--9
		when "1001" =>
			seg3<="1110011";
		
		when others =>
			seg3<="1111110";
	end case;
	end process proceso4;
end Behavioral;

