library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Demux_1x8_Conditional is
port(
--The component inputs must be defined as units (and not as a vector), 
I: in std_logic;
S0: in std_logic;
S1: in std_logic;
S2: in std_logic;
Y : out std_logic_vector(7 downto 0));
end Demux_1x8_Conditional;
architecture Behavioral of Demux_1x8_Conditional is
begin
Y <= "00000001" when (S2 = '0' and S1 = '0' and S0 = '0' and I='1') else --CSA conditional when else statement
     "00000010" when (S2 = '0' and S1 = '0' and S0 = '1' and I='1') else -- Select is '001' (S2S1S0), and I is active
     "00000100" when (S2 = '0' and S1 = '1' and S0 = '0' and I='1') else
     "00001000" when (S2 = '0' and S1 = '1' and S0 = '1' and I='1') else
     "00010000" when (S2 = '1' and S1 = '0' and S0 = '0' and I='1') else
     "00100000" when (S2 = '1' and S1 = '0' and S0 = '1' and I='1') else
     "01000000" when (S2 = '1' and S1 = '1' and S0 = '0' and I='1') else
     "10000000" when (S2 = '1' and S1 = '1' and S0 = '1' and I='1') else
     "00000000";  -- Reset - non of the outputs are active
end Behavioral;
