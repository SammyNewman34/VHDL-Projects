library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_Mux_4x1_Selected is
end TB_Mux_4x1_Selected;

architecture Behavioral of TB_Mux_4x1_Selected is
    component Mux_4x1_Selected
    port(
    I : in std_logic_vector(11 downto 0);
    Sel : in std_logic_vector(1 downto 0);
    Y : out std_logic_vector(2 downto 0));
    end component;
--Signals for the test bench
signal I : std_logic_vector (11 downto 0);
signal Sel : std_logic_vector (1 downto 0);
signal Y : std_logic_vector (2 downto 0);
begin
U1 : Mux_4x1_Selected --connect ports from behavioral to TB
    port map(
    I => I,
    Sel => Sel,
    Y => Y
    );
process
begin
I <= "011010001000"; --I0='000', I1='001', I2='010', I3 = '011' which is 3 bits each. 
Sel<= "00"; wait for 10 ns; -- Select is 00, output is I0 ('000')
Sel<= "01"; wait for 10 ns;
Sel<= "10"; wait for 10 ns;
Sel<= "11"; wait for 10 ns; -- Select is 11, output is I3 ('011')
Sel <= "XX";
wait;
end process;
end Behavioral;
