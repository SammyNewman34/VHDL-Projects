
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity TB_Mux_4x1_Conditional is -- no port in Test Bench
end TB_Mux_4x1_Conditional;
architecture Behavioral of TB_Mux_4x1_Conditional is
component Mux_4x1_Conditional --declare component for Mux
port(
    D : in std_logic_vector (11 downto 0);
    S : in std_logic_vector (1 downto 0);
    Y : out std_logic_vector (2 downto 0));
end component;
--Input signals for the test bench
signal D : std_logic_vector (11 downto 0);
signal S : std_logic_vector (1 downto 0);
signal Y : std_logic_vector (2 downto 0);

begin
--Instantiate to Mux
U1: Mux_4x1_Conditional
port map(
D=>D, S=>S, Y=>Y);

process
begin
--First we have inputs that are 3 bits each
-- our input in one vector with 12 bits which can be broken down into 4 vectors of 3 bits
D <= "000001010011"; -- "000", "001", "010", and "011" (from I3 (MSB - '000') to I0 (LSB - '011') 
S <= "00"; wait for 10 ns; -- Test case 1: Select ='00'
S<= "01"; wait for 10 ns;
S<="10"; wait for 10 ns;
S<= "11"; wait for 10 ns;
S<="XX"; wait for 10 ns; --Invalid case

wait; -- stop simulation
end process;
end Behavioral;
