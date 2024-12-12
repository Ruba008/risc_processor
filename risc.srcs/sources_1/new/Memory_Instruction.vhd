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
    signal memory: memory_array := (
        0 => "00000000"&"00000011"&"01000000"&"00000010", --ecrire 00000011 dans registre 0010 AFC
        1 => "00000000"&"00000010"&"01000001"&"00000001", --copyer information dans registre 0010 à l'addresse 0001 COP
        2 => "00000001"&"00000010"&"01010001"&"00000110", --add registre 0010 et 0001,et puis ecrite dans registre 0110 ADD
        3 => "00000000"&"00000110"&"10000001"&"00000001", --store contenue de registre 0110 dans l'addresse 00000001 de memoire des donnees STORE
        4 => "00000000"&"00000001"&"00100000"&"00000011", --load contenue de l'addresse 00000001 de memoire des donnees dans registre 0011 LOAD
        5 => "00000011"&"00000010"&"01010111"&"00000111", --faire calcule logic AND registre 0010 et 0011,et puis ecrite dans registre 0111
        6 => "00000111"&"00000110"&"01010011"&"00001000", --faire calcule registre 110 -registre 111  DIV,et puis ecrite dans registre 1000
        7 => "00000111"&"00000110"&"01010101"&"00001001", --faire calcule registre 010 *registre 111  MUL,et puis ecrite dans registre 1001
        others => (others => '0'));
    signal aux: std_logic_vector(31 downto 0);
begin
    memory_instruction_process: process (CLK)
    begin
        if CLK'event and CLK='1' then
            aux <= memory(to_integer(unsigned(address))); -- stocker la valeur de la mémoire
        end if;
    end process;
    S <= aux;
end Behavioral;
