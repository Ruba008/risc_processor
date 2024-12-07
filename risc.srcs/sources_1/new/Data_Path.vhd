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
-- Clock
signal clk: std_logic;
-- IP signals
signal rst_ip, load_ip, en_ip: std_logic;
signal din_ip, dout_ip: std_logic_vector(7 downto 0);
-- Memory signals
signal mem_out: std_logic_vector(31 downto 0);
-- LI/DI
signal lidi_qa, lidi_qop, lidi_qb, lidi_qc: std_logic_vector(7 downto 0);
begin
    IP: entity work.IP_compteur(Behavioral)
    port map(
        CLK => clk,
        RST => rst_ip,
        LOAD => load_ip,
        EN => en_ip,
        Din => din_ip,
        Dout => dout_ip
    );
    Mem_instr: entity work.Memory_Instruction(Behavioral)
    port map(
        address => dout_ip,
        CLK => clk,
        S => mem_out
    );
    LI_DI: entity work.LI_DI(Behavioral)
    port map(
        A => mem_out(7 downto 0),
        OP => mem_out(11 downto 8),
        B => mem_out(19 downto 12),
        C => mem_out(27 downto 20),
        QA => lidi_qa,
        QOP => lidi_qop,
        QB => lidi_qb,
        QC => lidi_qc,
        CLK => clk
    );
    
end Behavioral;
