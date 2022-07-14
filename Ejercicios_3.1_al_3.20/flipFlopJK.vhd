----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:37:10 07/11/2022 
-- Design Name: 
-- Module Name:    flipFlopJK - arch_flipFlopJK 
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

entity flipFlopJK is
    port (
        status, notStatus : out std_logic;
        clock, j, k : in std_logic
    );
end entity;

architecture arch_flipFlopJK of flipFlopJK is

    signal internalQ : std_logic;

begin

    status <= internalQ;
    notStatus <= not internalQ;

    main_process : process (clock)
    begin

        if rising_edge (clock) then
            report "Procesando tic tac.. clock=" & std_logic'image(clock);
            report "    j=" & std_logic'image(j);
            report "    k=" & std_logic'image(k);

            if j = '0' and k = '0' then
                internalQ <= internalQ;
            elsif j = '0' and k = '1' then
                internalQ <= '0';
            elsif j = '1' and k = '0' then
                internalQ <= '1';
            else
                internalQ <= not internalQ;
            end if;
        end if;
    end process;
end architecture;