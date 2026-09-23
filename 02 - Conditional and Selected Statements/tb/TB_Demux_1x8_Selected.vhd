
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity TB_Demux_1x8_Selected is
end TB_Demux_1x8_Selected;
architecture Behavioral of TB_Demux_1x8_Selected is

component Demux_1x8_Selected
Port (
D    : in  std_logic;
S0   : in  std_logic;
S1   : in  std_logic;
S2   : in  std_logic;
Y    : out std_logic_vector(7 downto 0)
);
end component;

-- Testbench signals
    signal D : std_logic := '0';
    signal S0 : std_logic := '0';
    signal S1 : std_logic := '0';
    signal S2 : std_logic := '0';
    signal Y  : std_logic_vector(7 downto 0);
begin
U1 : Demux_1x8_Selected
Port map (D => D, S0 => S0, S1 => S1, S2 => S2, Y => Y);
D <='1'; -- Always D high. 
process
begin
S2 <= '0'; S1 <= '0'; S0 <= '0'; wait for 10 ns; -- S2 S1 S0 = 000
S2 <= '0'; S1 <= '0'; S0 <= '1'; wait for 10 ns; -- S2 S1 S0 = 001
S2 <= '0'; S1 <= '1'; S0 <= '0'; wait for 10 ns; 
S2 <= '0'; S1 <= '1'; S0 <= '1'; wait for 10 ns; 
S2 <= '1'; S1 <= '0'; S0 <= '0'; wait for 10 ns; -- S2 S1 S0 = 100
S2 <= '1'; S1 <= '0'; S0 <= '1'; wait for 10 ns; 
S2 <= '1'; S1 <= '1'; S0 <= '0'; wait for 10 ns; 
S2 <= '1'; S1 <= '1'; S0 <= '1'; wait for 10 ns; -- S2 S1 S0 = 111
S2 <= 'X'; S1 <= 'X'; S0 <= 'X'; wait for 10 ns; -- Non-valid
wait;
end process;
end Behavioral;
