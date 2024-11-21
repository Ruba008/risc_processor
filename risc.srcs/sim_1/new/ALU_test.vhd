----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/21/2024 09:33:17 AM
-- Design Name: 
-- Module Name: ALU_test - Behavioral
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

entity ALU_test is
end ALU_test;

architecture Behavioral of ALU_test is

signal A, B: std_logic_vector(7 downto 0);
signal CRT: std_logic_vector(2 downto 0);
signal S: std_logic_vector(7 downto 0);
signal Carry, Overflow, Negative: std_logic;

component ALU is 
    Port(A: in std_logic_vector(7 downto 0);
        B: in std_logic_vector(7 downto 0);
        CRT: in std_logic_vector(2 downto 0);
        S: out std_logic_vector(7 downto 0);
        Carry: out std_logic;
        Overflow: out std_logic;
        Negative: out std_logic);
end component;

begin

uut: ALU port map(
    A => A,
    B=>B,
    CRT=>CRT,
    S=>S,
    Carry=>Carry,
    Overflow=>Overflow,
    Negative=>Negative
    );

test_ALU: process
begin
    A <= "00000011";
    B<= "00000101";
    CRT<="000"; -- Addition operation
    
    wait for 10 ns;
    
    A <= "11111111";
    B <= "00000001"; -- Carry flag test
    
    wait for 10 ns;
    
    CRT<="001"; -- Subtraction operation
    
    wait for 10 ns;
    
    A <= "00000001";
    B <= "11111111"; -- Negative flag test
    
    wait for 10 ns;
    
    A <= "00000011";
    B <= "00000010";
    CRT <= "010"; -- Multiplication operation
    
    wait for 10 ns;
    
    A <= "11111111";
    B <= "11111111"; -- Overflow flag test
    
    wait for 10 ns;
    
    A<="10101010";
    B<="11001100";
    CRT<="011"; -- AND
    
    wait for 10 ns;
    
    A<="10101010";
    B<="11001100";
    CRT<="100"; -- OR
    
    wait for 10 ns;
    
    A<="10101010";
    B<="11001100";
    CRT<="101"; -- XOR
    
    wait for 10 ns;
    
    A<="10101010";
    CRT<="110"; -- NOT (A)
    
    wait for 10 ns;
    
    B<="01010101";
    CRT<="111"; -- NOT (B)
    
    wait for 10 ns;
    
    wait;
end process;

end Behavioral;
