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

    -- Pour la vérification
    signal reg_data_tb : STD_LOGIC_VECTOR (7 downto 0);
    signal reg_addr_src : STD_LOGIC_VECTOR (3 downto 0);
    signal reg_addr_dst : STD_LOGIC_VECTOR (3 downto 0);

    constant CLK_PERIOD : time := 10 ns; -- Période de l'horloge

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
    clk_process : process
    begin
        clk_tb <= '0';
        wait for CLK_PERIOD / 2;
        clk_tb <= '1';
        wait for CLK_PERIOD / 2;
    end process;

    -- Processus principal du testbench
    tb_process : process
    begin
        -- Initialisation
        rst_tb <= '1';
        en_tb <= '0';
        load_tb <= '0';
        wait for CLK_PERIOD;

        rst_tb <= '0';
        en_tb <= '1';

        -- Configuration des registres et de l'instruction COP
        -- Supposons que l'opcode pour COP est 0x01
        reg_addr_src <= "0010"; -- Source : R2
        reg_addr_dst <= "0101"; -- Destination : R5
        reg_data_tb <= "00000000"; -- Valeur à écrire dans R2

        -- Charger la valeur dans le registre source R2
        load_tb <= '1'; -- Activer LOAD pour simuler le chargement dans le registre
        din_tb <= reg_data_tb; -- Valeur à charger
        wait for CLK_PERIOD;
        load_tb <= '0';

        wait for 10 * CLK_PERIOD;
        wait;
    end process;

end Behavioral;
