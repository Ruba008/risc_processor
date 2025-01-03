----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/07/2024 11:55:53 AM
-- Design Name: 
-- Module Name: LC_ALU - Behavioral
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

entity LC_ALU is
    Port ( op : in STD_LOGIC_VECTOR (7 downto 0);
           S : out STD_LOGIC_VECTOR (2 downto 0));
end LC_ALU;

architecture Behavioral of LC_ALU is

begin
    process(op)
    begin
        S <= op(3 downto 1);
    end process;

end Behavioral;
