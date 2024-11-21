----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/21/2024 10:11:05 AM
-- Design Name: 
-- Module Name: Memory_Bank - Behavioral
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
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Memory_Bank is
    Port ( address : in STD_LOGIC_VECTOR (7 downto 0);
           DATA : in STD_LOGIC_VECTOR (7 downto 0);
           RW : in STD_LOGIC;
           RST : in STD_LOGIC;
           CLK : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (7 downto 0));
end Memory_Bank;

architecture Behavioral of Memory_Bank is
    type memory_array is array (255 downto 0) of std_logic_vector(7 downto 0);
    signal memory: memory_array := (others => (others => '0'));
begin
    process (CLK)
    begin
        if CLK'event and CLK='1' then
            if RST = '1' then
                memory <= (others => (others => '0'));
            elsif RW = '1' then
                memory(to_integer(unsigned(address))) <= DATA;
            end if;
        end if;
    end process;
    S <= memory(to_integer(unsigned(address)));
end Behavioral;
