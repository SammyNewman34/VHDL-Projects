
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_4x1_Selected is
port(
I : in std_logic_vector(11 downto 0);
Sel : in std_logic_vector(1 downto 0);
Y : out std_logic_vector(2 downto 0));
end Mux_4x1_Selected;

architecture Behavioral of Mux_4x1_Selected is
begin
with Sel select
Y <= I(2 downto 0) when "00", --when I0
     I(5 downto 3) when "01", --when I1
     I(8 downto 6) when "10", -- when I2
     I(11 downto 9) when "11", -- when I3
     (others => '0')when others;  
end Behavioral;
