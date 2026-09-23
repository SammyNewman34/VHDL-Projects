
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_Mux_4x1 is
--  Port ( );
end TB_Mux_4x1;
-- no ports in a test bench
-- Declare component 
architecture Behavioral of TB_Mux_4x1 is
component Mux_4x1 is
port(
I0, I1, I2, I3, S0, S1 : in std_logic;
Y : out std_logic
);
end component;

-- signal for UUT
signal I0, I1, I2, I3 : std_logic := '0';
signal S0, S1: std_logic := '0';
signal Y: std_logic;

begin
UUT: Mux_4x1
port map (
I0 => I0,
I1 => I1,
I2 => I2,
I3 => I3,
S0 => S0,
S1 => S1,
Y =>Y
);

process
begin
 -- Test Case 1: S1=0, S0=0, select I0
I0 <= '1'; I1 <= '0'; I2 <= '0'; I3 <= '0';
S1 <= '0'; S0 <= '0';
wait for 10 ns;
I0 <= '0'; -- I0 reset

        -- Test Case 2: S1=0, S0=1, select I1
I0 <= '0'; I1 <= '1'; I2 <= '0'; I3 <= '0';
S1 <= '0'; S0 <= '1';
wait for 10 ns;
I1 <= '0'; -- I1 reset

        -- Test Case 3: S1=1, S0=0, select I2
I0 <= '0'; I1 <= '0'; I2 <= '1'; I3 <= '0';
S1 <= '1'; S0 <= '0';
wait for 10 ns;
I2 <= '0'; -- I2 reset

        -- Test Case 4: S1=1, S0=1, select I3
I0 <= '0'; I1 <= '0'; I2 <= '0'; I3 <= '1';
S1 <= '1'; S0 <= '1';
wait for 10 ns;
I3 <= '0'; -- I3 reset
        
        --reset
I0 <= '0'; I1 <= '0'; I2 <= '0'; I3 <= '0';
S1 <= '0'; S0 <= '0';
wait for 10 ns;
        
        -- End simulation
wait;
end process;
end Behavioral;
