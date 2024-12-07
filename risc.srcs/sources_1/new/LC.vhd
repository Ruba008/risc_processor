----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/05/2024 12:01:51 AM
-- Design Name: 
-- Module Name: LC - Behavioral
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

entity LC is
    Port ( OP : in STD_LOGIC_VECTOR (7 downto 0);
           RW : out STD_LOGIC);
end LC;

architecture Behavioral of LC is

begin
    process(OP)
    begin
        if OP(7) = '1' then
            RW <= '1';
        else
            RW <= '0';
        end if;
    end process;
end Behavioral;
