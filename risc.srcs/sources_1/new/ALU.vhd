----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/19/2024 12:43:02 AM
-- Design Name: 
-- Module Name: ALU - Behavioral
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
use IEEE.std_logic_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           S : out STD_LOGIC_VECTOR (7 downto 0);
           Carry : out STD_LOGIC;
           Overflow : out STD_LOGIC;
           Negative : out STD_LOGIC;
           CRT : in STD_LOGIC_VECTOR (2 downto 0));
end ALU;

architecture Behavioral of ALU is
signal result_sum: std_logic_vector (8 downto 0);
signal result_dif: std_logic_vector (8 downto 0);
signal result_mult: std_logic_vector (17 downto 0);
signal aux: std_logic_vector (7 downto 0);
begin
    result_sum <= ('0' & A) + ('0' & B) when CRT="000" else (Others => '0');
    result_mult <= ('0' & A)*('0' & B) when CRT="010" else (others  => '0');
    result_dif <= ('0' & A)-('0' & B) when CRT="001" else (others => '0');
    
    -- ('0' & A) is used to tranform A in 9 bits (+1 bit for the flags)
    
    aux <=
        result_sum(7 downto 0) when CRT="000" else
        result_dif(7 downto 0) when CRT="001" else
        result_mult(7 downto 0) when CRT="010" else
        (A and B) when CRT="011" else
        (A or B) when CRT="100" else
        (A xor B) when CRT="101" else
        not A when CRT="111" else
        (others => '0');
        
   Carry <= '1' when result_sum(8) = '1' else '0';
   Overflow <= '1' when result_mult(15 downto 8) /= "00000000" else '0';
   Negative <= '1' when result_dif(8) = '1' else '0';
   
   S <= aux;
        
    
end Behavioral;
