
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity TB_Demux_8x1_Conditional is
end TB_Demux_8x1_Conditional;
architecture Behavioral of TB_Demux_8x1_Conditional is
component Demux_1x8_Conditional
port(
I: in std_logic;
S0: in std_logic;
S1: in std_logic;
S2: in std_logic;
Y : out std_logic_vector(7 downto 0));
end component;
 --Input signals for the test bench
signal I : std_logic;
signal S0,S1,S2: std_logic;
signal Y : std_logic_vector(7 downto 0);
begin
-- Instantiate to Demux
U1: Demux_1x8_Conditional
port map(
I=>I, S0=>S0, S1=>S1, S2=>S2, Y=>Y);
process
begin
--start with all input/output at zero (Initialize)
I<='0'; S2<='0'; S1<='0'; S0<='0'; wait for 10 ns;
--now test for when Input is high '1', and S='___'.
I<='1'; S2<='0'; S1<='0'; S0<='0'; wait for 10 ns; -- S2S1S0='000'
I<='1'; S2<='0'; S1<='0'; S0<='1'; wait for 10 ns;
I<='1'; S2<='0'; S1<='1'; S0<='0'; wait for 10 ns;
I<='1'; S2<='0'; S1<='1'; S0<='1'; wait for 10 ns;
I<='1'; S2<='1'; S1<='0'; S0<='0'; wait for 10 ns;
I<='1'; S2<='1'; S1<='0'; S0<='1'; wait for 10 ns;
I<='1'; S2<='1'; S1<='1'; S0<='0'; wait for 10 ns;
I<='1'; S2<='1'; S1<='1'; S0<='1'; wait for 10 ns; -- S='111'
--Reset
I<='0'; S2<='0'; S1<='0'; S0<='0'; wait for 10 ns;
wait;
end process;
end Behavioral;
