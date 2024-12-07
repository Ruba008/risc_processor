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
    Port ( 
        CLK : in STD_LOGIC;
        RST: in std_logic;
        EN: in std_logic;
        LOAD: in std_logic;
        Din : in STD_LOGIC_VECTOR (7 downto 0)
    );
end Data_Path;
    
architecture Behavioral of Data_Path is

-- IP signals
signal dout_ip: std_logic_vector(7 downto 0);
-- signal rst_ip, load_ip, en_ip: std_logic;
-- signal din_ip, dout_ip: std_logic_vector(7 downto 0);
-- Memory signals
signal mem_out: std_logic_vector(31 downto 0);
-- LI/DI
signal lidi_qa, lidi_qop, lidi_qb, lidi_qc: std_logic_vector(7 downto 0);
--Registers bank
signal rb_qa, rb_qb, rb_data: std_logic_vector(7 downto 0);
signal rb_w: std_logic;
signal rb_addressW: std_logic_vector(3 downto 0);  
-- MUX 1
signal mux1_s: std_logic_vector(7 downto 0);
-- DI/EX
signal diex_qa, diex_qb, diex_qc, diex_qop: std_logic_vector(7 downto 0);
-- LC ALU
signal lc_alu_s: std_logic_vector(2 downto 0);
-- ALU
signal alu_s: std_logic_vector(7 downto 0);
signal alu_overflow, alu_negative, alu_carry: std_logic;
-- MUX 2
signal mux2_s: std_logic_vector(7 downto 0);
-- EX/Mem
signal exmem_qa, exmem_qb, exmem_qop: std_logic_vector(7 downto 0);
-- MUX 3
signal mux3_s : std_logic_vector(7 downto 0);
-- LC 2
signal lc2_s: std_logic;
-- Memory Bank
signal membank_s: std_logic_vector(7 downto 0);
-- MUX 4
signal mux4_s: std_logic_vector(7 downto 0);
-- Mem/RE
signal memre_qa, memre_qb, memre_qop: std_logic_vector(7 downto 0);
-- LC Bank Register
signal lc_bankreg_s : std_logic;

begin
    IP: entity work.IP_compteur(Behavioral)
    port map(
        CLK => CLK,
        RST => RST,
        LOAD => LOAD,
        EN => EN,
        Din => Din,
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
        OP => mem_out(15 downto 8),
        B => mem_out(23 downto 16),
        C => mem_out(31 downto 24),
        QA => lidi_qa,
        QOP => lidi_qop,
        QB => lidi_qb,
        QC => lidi_qc,
        CLK => clk
    );
    Bank_registres: entity work.Register_Bank(Behavioral)
    port map(
        addressA => lidi_qb(3 downto 0),
        addressB => lidi_qc(3 downto 0),
        addressW => memre_qa(3 downto 0),
        W => lc_bankreg_s,
        DATA => memre_qb,
        RST => '0',
        CLK => clk,
        QA => rb_qa,
        QB => rb_qb
    );
    Mux1: entity work.Mux(Behavioral)
    port map(
        A => lidi_qb,
        B => rb_qa,
        op => lidi_qop(0),
        S => mux1_s
    );
    DI_EX: entity work.DI_EX(Behavioral)
    port map(
        A => lidi_qa,
        OP => lidi_qop,
        B => mux1_s,
        C => rb_qb,
        QA => diex_qa,
        QOP => diex_qop,
        QB => diex_qb,
        QC => diex_qc,
        CLK => clk
    );
    LC_ALU: entity work.LC_ALU(Behavioral)
    port map(
        op => diex_qop,
        S => lc_alu_s
    );
    ALU: entity work.ALU(Behavioral)
    port map(
        A => diex_qb,
        B => diex_qc,
        S => alu_s,
        Carry => alu_carry,
        Overflow => alu_overflow,
        Negative => alu_negative,
        CRT => lc_alu_s
    );
    Mux2: entity work.Mux(Behavioral)
    port map(
        A => diex_qb,
        B => alu_s,
        op => diex_qop(4),
        S => mux2_s
    );
    EX_Mem: entity work.EX_Mem(Behavioral)
    port map(
        A => diex_qa,
        B => mux2_s,
        OP => diex_qop,
        QA => exmem_qa,
        QB => exmem_qb,
        QOP =>exmem_qop,
        CLK => clk
    );
    Mux3: entity work.Mux(Behavioral)
    port map(
        A => exmem_qa,
        B => exmem_qb,
        op => exmem_qop(5),
        S => mux3_s
    );
    LC2: entity work.LC(Behavioral)
    port map(
        OP => exmem_qop,
        RW => lc2_s
    );
   
    Memory_Bank: entity work.Memory_Bank(Behavioral)
    port map(
        address => mux3_s,
        DATA => exmem_qb,
        RW => lc2_s,
        RST => '0',
        CLK => clk,
        S => membank_s
    );
    Mux4: entity work.Mux(Behavioral)
    port map(
        A => membank_s,
        B => exmem_qb,
        op => exmem_qop(6),
        S => mux4_s
    );
    Mem_RE: entity work.Mem_RE(Behavioral)
    port map(
        A => exmem_qa,
        B => mux4_s,
        OP => exmem_qop,
        QA => memre_qa,
        QB => memre_qb,
        QOP => memre_qop,
        CLK => clk
    );
   
    LC3: entity work.LC_banc_registre(Behavioral)
    port map(
        OP => memre_qop,
        W => lc_bankreg_s
    );
end Behavioral;
