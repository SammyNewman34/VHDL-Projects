library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Clock_Divider_tb is
-- Testbench has no ports
end Clock_Divider_tb;
architecture test of Clock_Divider_tb is
-- Component Declaration for the Unit Under Test (UUT)
component Clock_Divider
Port (
clk : in std_logic;
reset : in std_logic;
Div : in std_logic_vector(1 downto 0);
Div_clk : out std_logic
);
end component;
-- Signals for UUT
signal clk : std_logic := '0';
signal reset : std_logic := '0';
signal Div : std_logic_vector(1 downto 0) := "00";
signal Div_clk : std_logic;
begin
-- Instantiate the Unit Under Test (UUT)
uut: Clock_Divider
Port map (
clk => clk,
reset => reset,
Div => Div,
Div_clk => Div_clk
);
-- Clock process definitions
clk_process : process
begin
clk <= '0';
wait for 10ns;
clk <= '1';
wait for 10ns;
end process;
-- Stimulus process
stim_proc: process
begin
-- hold reset state for 100 ns.
-- Test Div = "00"
Div <= "00";
wait for 10 ms; -- Wait long enough to observe several cycles
-- Test Div = "01"
Div <= "01";
wait for 10 ms;
-- Test Div = "10"
Div <= "10";
wait for 10 ms;
-- Test Div = "11"
Div <= "11";
wait for 10 ms;
reset <= '1';
wait for 3ms;
reset <= '0';
Div <= "11";
wait for 10 ms;
-- Finish the simulation
end process;
end test;