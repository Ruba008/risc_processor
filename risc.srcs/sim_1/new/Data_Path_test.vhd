----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/07/2024 02:42:41 PM
-- Design Name: 
-- Module Name: Data_Path_test - Behavioral
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

entity Data_Path_test is
--  Port ( );
end Data_Path_test;

architecture Behavioral of Data_Path_test is
-- Composant à tester
    component Data_Path
        Port (
            CLK : in STD_LOGIC;
            RST : in STD_LOGIC;
            EN : in STD_LOGIC;
            LOAD : in STD_LOGIC;
            Din : in STD_LOGIC_VECTOR (7 downto 0)
        );
    end component;

    -- Signaux de test
    signal clk_tb : STD_LOGIC := '0';
    signal rst_tb : STD_LOGIC := '0';
    signal en_tb : STD_LOGIC := '0';
    signal load_tb : STD_LOGIC := '0';
    signal din_tb : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');


begin
    -- Instance du DUT (Device Under Test)
    DUT: Data_Path
        port map(
            CLK => clk_tb,
            RST => rst_tb,
            EN => en_tb,
            LOAD => load_tb,
            Din => din_tb
        );

    -- Génération de l'horloge
    process
    begin
        clk_tb <= '0';
        wait for 5ns;
        clk_tb <= '1';
        wait for 5ns;
    end process;

    -- Processus principal du testbench
    tb_process : process
    begin
        -- Initialisation
        rst_tb <= '0';
        en_tb <= '0';

        -- Configuration des registres et de l'instruction AFC
        -- Premier instruction dans memoire
        load_tb <= '1'; -- Activer LOAD pour simuler le chargement dans le registre
        din_tb <= "00000000"; -- Valeur à charger
        wait for 10ns;
        -- Avance IP
        load_tb <= '0';
        en_tb <= '1'; 
        wait for 550ns;
        
        wait;  --Manipule qu'une fois 
    end process;

end Behavioral;
