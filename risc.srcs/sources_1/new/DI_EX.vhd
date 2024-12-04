----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/04/2024 10:54:04 PM
-- Design Name: 
-- Module Name: DI_EX - Behavioral
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

entity DI_EX is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           OP : in STD_LOGIC_VECTOR (2 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           C : in STD_LOGIC_VECTOR (3 downto 0);
           QA : out STD_LOGIC_VECTOR (3 downto 0);
           QOP : out STD_LOGIC_VECTOR (2 downto 0);
           QB : out STD_LOGIC_VECTOR (3 downto 0);
           QC : out STD_LOGIC_VECTOR (3 downto 0);
           CLK : in STD_LOGIC);
end DI_EX;

architecture Behavioral of DI_EX is
signal auxA: std_logic_vector(3 to 0);
signal auxB: std_logic_vector(3 to 0);
signal auxC: std_logic_vector(3 to 0);
signal auxOP: std_logic_vector(2 to 0);
begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            auxA <= A;
            auxB <= B;
            auxC <= C;
            auxOP <= OP;
        end if;
    end process;
    QOP <= auxOP;
    QA <= auxA;
    QB <= auxB;
    QC <= auxC;
end Behavioral;