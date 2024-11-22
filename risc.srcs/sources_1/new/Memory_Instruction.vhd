----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/22/2024 01:05:42 AM
-- Design Name: 
-- Module Name: Memory_Instruction - Behavioral
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
use IEEE.numeric_std.ALL;
use IEEE.std_logic_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Memory_Instruction is
    Port ( address : in STD_LOGIC_VECTOR (7 downto 0);
           CLK : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (31 downto 0));
end Memory_Instruction;

architecture Behavioral of Memory_Instruction is
    type memory_array is array (255 downto 0) of std_logic_vector(31 downto 0);
    signal memory: memory_array := (others => (others => '0'));
    signal aux: std_logic_vector(31 downto 0);
begin
    memory_instruction_process: process
    begin
        if CLK'event and CLK='1' then
            aux <= memory(to_integer(unsigned(address)));
        end if;
    end process;
    S <= aux;
end Behavioral;
