----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/04/2024 01:48:26 PM
-- Design Name: 
-- Module Name: test_IP - Behavioral
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

entity test_IP is
--  Port ( );
end test_IP;

architecture Behavioral of test_IP is
signal CLK : std_logic := '0';
    signal RST : std_logic := '1';
    signal LOAD : std_logic := '0';
    signal EN : std_logic := '0';
    signal Din : std_logic_vector(7 downto 0) := (others => '0');
    signal Dout : std_logic_vector(7 downto 0);

component IP_compteur
        Port (
            CLK : in std_logic;
            RST : in std_logic;
            LOAD : in std_logic;
            EN : in std_logic;
            Din : in std_logic_vector(7 downto 0);
            Dout : out std_logic_vector(7 downto 0)
        );
    end component;
begin
    uut: IP_compteur
        Port map (
            CLK => CLK,
            RST => RST,
            LOAD => LOAD,
            EN => EN,
            Din => Din,
            Dout => Dout
        );
    
    process
    begin
        CLK <= '0';
        wait for 10 ns;
        CLK <= '1';
        wait for 10 ns;
    end process;
    
    
    process
    begin
        RST <= '0';
        wait for 20 ns;
        RST <= '1';

        -- compter
        wait for 100 ns;

        -- Load address on veut
        Din <= "00001010"; 
        LOAD <= '1';
        wait for 20 ns;
        LOAD <= '0';


        EN <= '1';
        wait for 40 ns;
        EN <= '0';
        wait;
    end process;

end Behavioral;
