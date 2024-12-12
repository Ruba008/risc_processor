----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/04/2024 01:40:23 PM
-- Design Name: 
-- Module Name: IP_compteur - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IP_compteur is
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           LOAD : in STD_LOGIC;
           EN : in STD_LOGIC;
           Din : in STD_LOGIC_VECTOR (7 downto 0);
           Dout : out STD_LOGIC_VECTOR (7 downto 0));
end IP_compteur;

architecture Behavioral of IP_compteur is
    signal current_addr : std_logic_vector(7 downto 0):= (others => '0');
    signal counter : integer := 0;
begin
    ip_process: process(CLK, RST)
    begin
        if RST = '1' then
            -- reset compteur
            counter <= 0;
            current_addr <= (others => '0');
        elsif rising_edge(CLK) then
            if LOAD = '1' then
                -- Load données
                current_addr <= Din;
            elsif EN = '1' then
                if counter < 9 then
                    counter <= counter +1; -- incrémenter le compteur
                else
                    counter <= 0;
                    current_addr <= current_addr + 1;
                end if;
            end if;   
        end if;
    end process;
    Dout <= current_addr;      
end Behavioral;
