----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/05/2024 12:30:48 AM
-- Design Name: 
-- Module Name: D_Fliflop_test - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity D_Fliflop_test is
--  Port ( );
end D_Fliflop_test;

architecture Behavioral of D_Fliflop_test is
    component D_FlipFlop
        Port (
            D   : in  STD_LOGIC;
            CLK : in  STD_LOGIC;
            Q   : out STD_LOGIC
        );
    end component;
    signal D_tb   : STD_LOGIC := '0';
    signal CLK_tb : STD_LOGIC := '0';
    signal Q_tb   : STD_LOGIC;
begin
    uut: D_FlipFlop
        Port Map (
            D   => D_tb,
            CLK => CLK_tb,
            Q   => Q_tb
        );

    clock_process :process
    begin
        while true loop
            CLK_tb <= '0';
            wait for 10 ns;
            CLK_tb <= '1';
            wait for 10 ns;
        end loop;
    end process;
    
    flpflp_process: process
    begin
        D_tb <= '0';
        wait for 15 ns;
        D_tb <= '1';
        wait for 20 ns;
        D_tb <= '0';
        wait for 20 ns;

        D_tb <= '1';
        wait for 10 ns;
        D_tb <= '0';
        wait for 10 ns;
        D_tb <= '1';
        wait for 10 ns;
        D_tb <= '0';
        wait for 10 ns;
        
        wait;
    end process;
end Behavioral;
