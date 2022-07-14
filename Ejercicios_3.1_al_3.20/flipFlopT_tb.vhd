----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:17:41 07/11/2022 
-- Design Name: 
-- Module Name:    flipFlopT_tb - arch_flipFlopT_tb 
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

entity flipFlopT_tb is
end entity;

architecture arch_flipFlopT_tb of flipFlopT_tb is

    component flipFlopT is
        port (
            status, notStatus : out std_logic;
            clock, t : in std_logic
        );
    end component;

    signal testStatus, testNotStatus, testT : std_logic;
    signal testClock : std_logic := '0';
    signal tics : integer := 0;

begin

    testing_unit: flipFlopT port map (
        status => testStatus,
        notStatus => testNotStatus,
        clock => testClock,
        t => testT
    );

    generate_100Mhzs_clock : process
    begin
	 
        testClock <= not testClock;

        if testClock = '1' then tics <= tics + 1; end if;
        if tics >= 20 then wait; end if;

        wait for 5 ns; -- Tiempo de espera en un flanco de reloj.

    end process;

    main_process : process
    begin

        wait for 15 ns;
        testT <= '0'; wait for 20 ns;
        testT <= '1'; wait for 30 ns;
        testT <= '1'; wait for 20 ns;
        testT <= '0'; 
        wait;

    end process;

end architecture;
