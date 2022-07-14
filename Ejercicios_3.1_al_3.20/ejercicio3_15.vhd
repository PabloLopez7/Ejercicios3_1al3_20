----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:15:54 07/14/2022 
-- Design Name: 
-- Module Name:    ejercicio3_15 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ejercicio3_15 is
    Port ( clk,s : in  STD_LOGIC;
           v : inout  STD_LOGIC_VECTOR (1 downto 0);
           q : inout  STD_LOGIC_VECTOR (5 downto 0);
           NOSU,EO : out  STD_LOGIC_VECTOR (2 downto 0));
end ejercicio3_15;

architecture Behavioral of ejercicio3_15 is

begin


end Behavioral;

