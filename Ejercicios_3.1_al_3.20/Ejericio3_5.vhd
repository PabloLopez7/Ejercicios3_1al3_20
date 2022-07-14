----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:51:43 07/13/2022 
-- Design Name: 
-- Module Name:    Ejericio3_5 - Behavioral 
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

entity Ejericio3_5 is
    Port ( clk : in  STD_LOGIC;
           q : inout  STD_LOGIC_VECTOR(5 downto 0):= "000000";
           Nosu : out  STD_LOGIC;
           EO : out  STD_LOGIC_VECTOR(2 downto 0);
           mc : in  STD_LOGIC_VECTOR(2 downto 0));
end Ejericio3_5;

architecture Behavioral of Ejericio3_5 is

begin
	process (clk) begin
		if(clk'event and clk='0')then
			q<= q+1;
			if(q="110011")then
				q<="000001";
			end if;
		end if;
	end process;
	process (q) begin
		case q is
		--1--
		when "000001" =>
			if mc='0' then
				Nosu<= "100";
				EO<= "001";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--2--
		when "000010" =>
			if mc='0' then
				Nosu<= "100";
				EO<= "001";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--3--
		when "000011" =>
			if mc='0' then
				Nosu<= "100";
				EO<= "001";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--4--
		when "000100" =>
			if mc='0' then
				Nosu<= "100";
				EO<= "001";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--5--
		when "000101" =>
			if mc='0' then
				Nosu<= "100";
				EO<= "001";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--6--
		when "000110" =>
			if mc='0' then
				Nosu<= "100";
				EO<= "001";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--7--
		when "000111" =>
			if mc='0' then
				Nosu<= "100";
				EO<= "001";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--8--
		when "001000" =>
			if mc='0' then
				Nosu<= "100";
				EO<= "001";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--9--
		when "001001" =>
			if mc='0' then
				Nosu<= "100";
				EO<= "001";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--10--
		when "001010" =>
			if mc='0' then
				Nosu<= "100";
				EO<= "001";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--11--
		when "001011" =>
			if mc='0' then
				Nosu<= "100";
				EO<= "001";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--12--
		when "001100" =>
			if mc='0' then
				Nosu<= "100";
				EO<= "001";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--13--
		when "001101" =>
			if mc='0' then
				Nosu<= "100";
				EO<= "001";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--14--
		when "001110" =>
			if mc='0' then
				Nosu<= "100";
				EO<= "001";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--15--
		when "001111" =>
			if mc='0' then
				Nosu<= "100";
				EO<= "001";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--16--
		when "010000" =>
			if mc='0' then
				Nosu<= "100";
				EO<= "001";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--17--
		when "010000" =>
			if mc='0' then
				Nosu<= "100";
				EO<= "001";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--18--
		when "010010" =>
			if mc='0' then
				Nosu<= "100";
				EO<= "001";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--19--
		when "010011" =>
			if mc='0' then
				Nosu<= "100";
				EO<= "001";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--20--
		when "010100" =>
			if mc='0' then
				Nosu<= "100";
				EO<= "001";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--21--
		when "010101" =>
			if mc='0' then
				Nosu<= "100";
				EO<= "010";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--22--
		when "010110" =>
			if mc='0' then
				Nosu<= "100";
				EO<= "010";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--23--
		when "010111" =>
			if mc='0' then
				Nosu<= "100";
				EO<= "010";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--24--
		when "011000" =>
			if mc='0' then
				Nosu<= "100";
				EO<= "010";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--25--
		when "011001" =>
			if mc='0' then
				Nosu<= "100";
				EO<= "100";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--26--
		when "011010" =>
			if mc='0' then
				Nosu<= "100";
				EO<= "100";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--27--
		when "011011" =>
			if mc='0' then
				Nosu<= "001";
				EO<= "100";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--28--
		when "011100" =>
			if mc='0' then
				Nosu<= "001";
				EO<= "100";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--29--
		when "011101" =>
			if mc='0' then
				Nosu<= "001";
				EO<= "100";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--30--
		when "011110" =>
			if mc='0' then
				Nosu<= "001";
				EO<= "100";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--31--
		when "011111" =>
			if mc='0' then
				Nosu<= "001";
				EO<= "100";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--32--
		when "100000" =>
			if mc='0' then
				Nosu<= "001";
				EO<= "100";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--33--
		when "100001" =>
			if mc='0' then
				Nosu<= "001";
				EO<= "100";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--34--
		when "100010" =>
			if mc='0' then
				Nosu<= "001";
				EO<= "100";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--35--
		when "100011" =>
			if mc='0' then
				Nosu<= "001";
				EO<= "100";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--36--
		when "100100" =>
			if mc='0' then
				Nosu<= "001";
				EO<= "100";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--37--
		when "100101" =>
			if mc='0' then
				Nosu<= "001";
				EO<= "100";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--38--
		when "100110" =>
			if mc='0' then
				Nosu<= "001";
				EO<= "100";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--39--
		when "100101" =>
			if mc='0' then
				Nosu<= "001";
				EO<= "100";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--40--
		when "100111" =>
			if mc='0' then
				Nosu<= "001";
				EO<= "100";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--41--
		when "101001" =>
			if mc='0' then
				Nosu<= "001";
				EO<= "100";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--42--
		when "101010" =>
			if mc='0' then
				Nosu<= "001";
				EO<= "100";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--43--
		when "101011" =>
			if mc='0' then
				Nosu<= "001";
				EO<= "100";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--44--
		when "101100" =>
			if mc='0' then
				Nosu<= "001";
				EO<= "100";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--45--
		when "101101" =>
			if mc='0' then
				Nosu<= "001";
				EO<= "100";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--46--
		when "101110" =>
			if mc='0' then
				Nosu<= "001";
				EO<= "100";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--47--
		when "101111" =>
			if mc='0' then
				Nosu<= "001";
				EO<= "100";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--48--
		when "110000" =>
			if mc='0' then
				Nosu<= "001";
				EO<= "100";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		--49--
		when "110001" =>
			if mc='0' then
				Nosu<= "010";
				EO<= "100";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
			end Behavioral;
		--50--
		when "110010" =>
			if mc='0' then
				Nosu<= "010";
				EO<= "100";
			elsif mc='1' then
				Nosu<= "000";
				EO<= "000";
			end if;
		when others =>
			Nosu<="000";
			EO<="000";
		end case;
	end process;
end Behavioral;
