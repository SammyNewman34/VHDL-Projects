

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_4x1_Conditional is
port(
D : in std_logic_vector (11 downto 0); -- 4 inputs with 3 bits each
S : in std_logic_vector (1 downto 0); -- 2 Select inputs
Y : out std_logic_vector(2 downto 0) -- 3 bit output
);
end Mux_4x1_Conditional;

architecture Behavioral of Mux_4x1_Conditional is
begin
Y <= D(2 downto 0) when S= "00" else -- 3 bits of 1st input
     D(5 downto 3) when S= "01" else --3 bits of 2nd input
     D(8 downto 6) when S ="10" else --3 bits of 3rd input
     D(11 downto 9) when S= "11" else -- 3 bits of 4th input
     (others => '0'); -- Default case
end Behavioral;
