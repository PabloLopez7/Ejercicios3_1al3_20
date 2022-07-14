----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:44:10 07/11/2022 
-- Design Name: 
-- Module Name:    FlipFlopT - arch_flipFlopT 
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

entity flipFlopT is
    port (
        status, notStatus : out std_logic;
        clock, t : in std_logic
    );
end entity;

architecture arch_flipFlopT of flipFlopT is

    signal internalQ : std_logic;

begin

    status <= internalQ;
    notStatus <= not internalQ;

    main_process : process (clock)
    begin

        if rising_edge (clock) then
            report "Procesando tic tac.. clock=" & std_logic'image(clock);
            report "    t=" & std_logic'image(t);

            if internalQ = 'U' then
                internalQ <= t;
            else
                if t = '1' then
                    internalQ <= not internalQ;
                else
                    internalQ <= internalQ;
                end if;
            end if;
        end if;
    end process;
end architecture;

