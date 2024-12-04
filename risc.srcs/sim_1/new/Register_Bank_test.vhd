----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/24/2024 01:53:48 AM
-- Design Name: 
-- Module Name: Register_Bank_test - Behavioral
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

entity Register_Bank_test is
--  Port ( );
end Register_Bank_test;

architecture Behavioral of Register_Bank_test is
    signal addressA : STD_LOGIC_VECTOR (3 downto 0);
    signal addressB : STD_LOGIC_VECTOR (3 downto 0);
    signal addressW : STD_LOGIC_VECTOR (3 downto 0);
    signal W : STD_LOGIC;
    signal DATA : STD_LOGIC_VECTOR (7 downto 0);
    signal RST : STD_LOGIC;
    signal CLK : STD_LOGIC;
    signal QA : STD_LOGIC_VECTOR (7 downto 0);
    signal QB : STD_LOGIC_VECTOR (7 downto 0);

component br is 
    Port ( addressA : in STD_LOGIC_VECTOR (3 downto 0);
           addressB : in STD_LOGIC_VECTOR (3 downto 0);
           addressW : in STD_LOGIC_VECTOR (3 downto 0);
           W : in STD_LOGIC;
           DATA : in STD_LOGIC_VECTOR (7 downto 0);
           RST : in STD_LOGIC;
           CLK : in STD_LOGIC;
           QA : out STD_LOGIC_VECTOR (7 downto 0);
           QB : out STD_LOGIC_VECTOR (7 downto 0));
end component;
constant CLK_PERIOD : time := 10 ns;
begin
uut: br
        port map(
            addressA => addressA,
            addressB => addressB,
            addressW => addressW,
            W => W,
            DATA => DATA,
            RST => RST,
            CLK => CLK,
            QA => QA,
            QB => QB
        );
    
    process
    begin
        CLK <= '0';
        wait for 10ns;
        CLK <= '1';
        wait for 10ns;
    end process;
    
    process
    begin
        RST <= '1';
        wait for 10ns;
        
        RST <= '0';
        wait for 10ns;
        
        addressA <= "0001";
        addressB <= "0001";
        
        -- Writing
        addressW <= "0001";
        DATA <= "01010101";
        W <= '1';
        wait for 20 ns;
        W <= '0';
        
        
        wait for 20 ns;
        
        
        W <= '1';
        addressW <= "0001";
        DATA <= "00000001";
        wait for 20ns;
        W <= '0';
        wait for 20ns;
        
        addressB <= "0010";
        wait;
    end process;
end Behavioral;
