
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TB_State_Machine is
end TB_State_Machine;

architecture Behavioral of TB_State_Machine is
component State_Machine is
port(
x, rst, clk :in std_logic;
Y : out std_logic_vector(1 downto 0):= "00");
end component;
--signals to connect to test
signal x, rst, clk : std_logic :='0';
signal Y : std_logic_vector(1 downto 0):= "00";

--period for the clk
constant period : time := 20 ns;

begin
UUT: State_Machine port map(x=>x, Y=> Y, clk=> clk, rst=>rst);

process --clock pulse
begin
clk<= not(clk);
wait for (period/2);
end process;

process
variable tmp : std_logic_vector(4 downto 0);
begin
wait for 50 ns;
x<='1'; wait for (5*period);
rst<='1'; wait for (5*period);
rst<= '0';
for i in 0 to 10 loop
tmp:= std_logic_vector(to_unsigned(i,5));
x<= tmp (0); wait for period;
x<=tmp (1); wait for period;
x<= tmp(2); wait for period;
x<= tmp(3); wait for period;
x<=tmp(4); wait for period;
end loop;
wait;
end process;
end Behavioral;

