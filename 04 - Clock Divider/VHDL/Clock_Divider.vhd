
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Clock_Divider is
Port (
clk : in std_logic;
reset : in std_logic;
Div : in std_logic_vector(1 downto 0);
Div_clk : out std_logic
);
end Clock_Divider;
architecture Behavioral of Clock_Divider is
signal clk_temp : std_logic := '0';
begin
process(clk, reset)
variable counter : integer range 1 to 250000;
begin
if reset = '1' then
counter := 1;
clk_temp <= '0';
elsif rising_edge(clk) then
counter := counter + 1;
case Div is
when "00" =>
if counter = 250000 then
clk_temp <= not clk_temp;
counter := 1;
end if;
when "01" =>
if counter = 25000 then
clk_temp <= not clk_temp;
counter := 1;
end if;
when "10" =>
if counter = 2500 then
clk_temp <= not clk_temp;
counter := 1;
end if;
when "11" =>
if counter = 250 then
clk_temp <= not clk_temp;
counter := 1;
end if;
when others=>
clk_tmp<=clk_tmp;
end case;
end if;
end process;
Div_clk <= clk_temp;
end Behavioral;