----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/06/2024 06:18:16 PM
-- Design Name: 
-- Module Name: Data_Path - Behavioral
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

entity Data_Path is
--  Port ( );
end Data_Path;
    
architecture Behavioral of Data_Path is
    component IP_compteur
        Port(
           CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           LOAD : in STD_LOGIC;
           EN : in STD_LOGIC;
           Din : in STD_LOGIC_VECTOR (7 downto 0);
           Dout : out STD_LOGIC_VECTOR (7 downto 0)
        );
     end component;
     component ALU
        Port(
           A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           S : out STD_LOGIC_VECTOR (7 downto 0);
           Carry : out STD_LOGIC;
           Overflow : out STD_LOGIC;
           Negative : out STD_LOGIC;
           CRT : in STD_LOGIC_VECTOR (2 downto 0)
        );
     end component;
     component DI_EX
        Port(
           A : in STD_LOGIC_VECTOR (3 downto 0);
           OP : in STD_LOGIC_VECTOR (2 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           C : in STD_LOGIC_VECTOR (3 downto 0);
           QA : out STD_LOGIC_VECTOR (3 downto 0);
           QOP : out STD_LOGIC_VECTOR (2 downto 0);
           QB : out STD_LOGIC_VECTOR (3 downto 0);
           QC : out STD_LOGIC_VECTOR (3 downto 0);
           CLK : in STD_LOGIC
        );
     end component;
     component EX_Mem
        Port(
           A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           OP : in STD_LOGIC_VECTOR (2 downto 0);
           QA : out STD_LOGIC_VECTOR (3 downto 0);
           QB : out STD_LOGIC_VECTOR (3 downto 0);
           QOP : out STD_LOGIC_VECTOR (2 downto 0);
           CLK : in STD_LOGIC
        );
     end component;
     component LC
        Port(
           OP : in STD_LOGIC_VECTOR (7 downto 0);
           W : out STD_LOGIC
        );
     end component;
     component LI_DI
        Port(
           A : in STD_LOGIC_VECTOR (3 downto 0);
           OP : in STD_LOGIC_VECTOR (2 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           C : in STD_LOGIC_VECTOR (3 downto 0);
           QA : out STD_LOGIC_VECTOR (3 downto 0);
           QOP : out STD_LOGIC_VECTOR (2 downto 0);
           QB : out STD_LOGIC_VECTOR (3 downto 0);
           QC : out STD_LOGIC_VECTOR (3 downto 0);
           CLK : in STD_LOGIC
        );
     end component;
     component Mem_RE
        Port(
           A : in std_logic_vector(3 to 0);
           B : in std_logic_vector(3 to 0);
           OP : in std_logic_vector(2 to 0);
           QA : out std_logic_vector(3 to 0);
           QB : out std_logic_vector(3 to 0);
           QOP : out std_logic_vector(2 to 0);
           CLK : in STD_LOGIC
        );
     end component;
     component Memory_Bank
        Port(
           address : in STD_LOGIC_VECTOR (7 downto 0);
           DATA : in STD_LOGIC_VECTOR (7 downto 0);
           RW : in STD_LOGIC;
           RST : in STD_LOGIC;
           CLK : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (7 downto 0)
        );
     end component;
     component Memory_Instruction
        Port(
           address : in STD_LOGIC_VECTOR (7 downto 0);
           CLK : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (31 downto 0)
        );
     end component;
     component Mux
        Port(
           A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           op : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (7 downto 0)
        );
     end component;
     component Register_Bank
        Port(
           addressA : in STD_LOGIC_VECTOR (3 downto 0);
           addressB : in STD_LOGIC_VECTOR (3 downto 0);
           addressW : in STD_LOGIC_VECTOR (3 downto 0);
           W : in STD_LOGIC;
           DATA : in STD_LOGIC_VECTOR (7 downto 0);
           RST : in STD_LOGIC;
           CLK : in STD_LOGIC;
           QA : out STD_LOGIC_VECTOR (7 downto 0);
           QB : out STD_LOGIC_VECTOR (7 downto 0)
        );
     end component;

signal clk_ip, rst_ip, load_ip, en_ip: std_logic;
signal din_ip, dout_ip: std_logic_vector(7 downto 0);
begin
    IP: entity work.IP_compteur(Behavioral)
    port map(
        CLK => clk_ip,
        RST => rst_ip,
        LOAD => load_ip,
        EN => en_ip,
        Din => din_ip,
        Dout => dout_ip
    );

end Behavioral;
