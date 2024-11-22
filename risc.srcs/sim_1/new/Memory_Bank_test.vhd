----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/21/2024 10:36:44 AM
-- Design Name: 
-- Module Name: Memory_Bank_test - Behavioral
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

entity Memory_Bank_test is
--  Port ( );
end Memory_Bank_test;

architecture Behavioral of Memory_Bank_test is
   signal address : STD_LOGIC_VECTOR (7 downto 0);
   signal DATA : STD_LOGIC_VECTOR (7 downto 0);
   signal RST : STD_LOGIC;
   signal RW: std_logic;
   signal CLK : STD_LOGIC;
   signal S : STD_LOGIC_VECTOR (7 downto 0);

    component Memory_Bank is
    Port ( address : in STD_LOGIC_VECTOR (7 downto 0);
           DATA : in STD_LOGIC_VECTOR (7 downto 0);
           RST : in STD_LOGIC;
           RW : in std_logic;
           CLK : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
    constant CLK_PERIOD: time := 10 ns;
begin

    uut: Memory_Bank
        port map(
            address => address,
            DATA => DATA,
            RST => RST,
            RW => RW,
            CLK => CLK,
            S => S
        );
    
    Clock: process
    begin
        CLK<= '0';
        wait for CLK_PERIOD/2;
        CLK <= '1';
        wait for CLK_PERIOD/2;
    end process;
    
    Memory_Bank_test: process
    begin
        RST <= '0';
        wait for 10 ns;
        
        DATA <= "00000101";
        address <= "00000001";
        RW <= '0'; -- Writing DATA 1
        
        wait for 10 ns;
        
        address <= "00000010";
        DATA <= "00000001"; -- Writing DATA 2
        
        wait for 10 ns;
        
        RW <= '1';
        address <= "00000010"; -- Reading DATA 2
        
        wait for 10 ns;
        
        RW <= '0';
        wait;
    end process;
    
end Behavioral;
