----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/07/2024 12:08:38 PM
-- Design Name: 
-- Module Name: LC_banc_registre - Behavioral
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

entity LC_banc_registre is
    Port ( OP : in STD_LOGIC_VECTOR (7 downto 0);
           W : out STD_LOGIC);
end LC_banc_registre;

architecture Behavioral of LC_banc_registre is

begin
    process(OP)
    begin
        if OP(7) = '1' then
            W <= '0';
        else
            W <= '1';
        end if;
    end process;

end Behavioral;
