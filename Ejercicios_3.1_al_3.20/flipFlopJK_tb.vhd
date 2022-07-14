----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:42:46 07/11/2022 
-- Design Name: 
-- Module Name:    flipFlopJK_tb - arch_flipFlopJK_tb 
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

entity flipFlopJK_tb is
end entity;

architecture arch_flipFlopJK_tb of flipFlopJK_tb is

    component flipFlopJK is
        port (
            status, notStatus : out std_logic;
            clock, j, k : in std_logic
        );
    end component;

    signal testStatus, testNotStatus, testJ, testK : std_logic;
    signal testClock : std_logic := '0';
    signal tics : integer := 0;

begin

    testing_unit: flipFlopJK port map (
        status => testStatus,
        notStatus => testNotStatus,
        clock => testClock,
        j => testJ,
        k => testK
    );

    generate_100Mhzs_clock : process
    begin

        testClock <= not testClock;

        if testClock = '1' then tics <= tics + 1; end if;
        if tics >= 40 then wait; end if;

        wait for 5 ns; -- Tiempo de espera en un flanco de reloj.

    end process;

    main_process : process
    begin

        wait for 15 ns;
        testJ <= '0'; testK <= '0'; wait for 10 ns;
        testJ <= '0'; testK <= '0'; wait for 10 ns;
        testJ <= '0'; testK <= '1'; wait for 10 ns;
        testJ <= '0'; testK <= '1'; wait for 50 ns;

        testJ <= '1'; testK <= '0'; wait for 10 ns;
        testJ <= '1'; testK <= '0'; wait for 10 ns;
        testJ <= '1'; testK <= '1'; wait for 10 ns;
  
        wait;
    end process;
end architecture;

