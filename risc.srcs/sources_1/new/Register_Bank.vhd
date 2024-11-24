----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/24/2024 01:39:58 AM
-- Design Name: 
-- Module Name: Register_Bank - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Register_Bank is
    Port ( addressA : in STD_LOGIC_VECTOR (3 downto 0);
           addressB : in STD_LOGIC_VECTOR (3 downto 0);
           addressW : in STD_LOGIC_VECTOR (3 downto 0);
           W : in STD_LOGIC;
           DATA : in STD_LOGIC_VECTOR (7 downto 0);
           RST : in STD_LOGIC;
           CLK : in STD_LOGIC;
           QA : out STD_LOGIC_VECTOR (7 downto 0);
           QB : out STD_LOGIC_VECTOR (7 downto 0));
end Register_Bank;

architecture Behavioral of Register_Bank is
type array_reg is array (0 to 15) of std_logic_vector(7 downto 0);
signal registers : array_reg := (others => (others => '0'));
begin
    process (CLK)
    begin
        if CLK'event and CLK='1' then
            if RST = '1' then
                registers <= (others => (others => '0'));
            elsif W = '1' then 
                registers(to_integer(unsigned(addressW))) <= DATA;
            end if;
        end if;
    end process;
   
   process (addressA, addressB, registers, DATA, W, addressW)
   begin
       if W='1' then
            if (addressA=addressW) then
                QA <= DATA;
            else
                QA <= registers(to_integer(unsigned(addressA)));
            end if;        
            if (addressB=addressW) then
                QB <= DATA;
            else
                QB <= registers(to_integer(unsigned(addressB)));
           end if;
       else
            QA <= registers(to_integer(unsigned(addressA)));
            QB <= registers(to_integer(unsigned(addressB)));
        end if;
    end process;
end Behavioral;
