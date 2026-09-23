
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Demux_1x8_Selected is
port(
D  : in  STD_LOGIC;                 
S0 : in  std_logic;                
S1 : in  std_logic;                
S2 : in  std_logic;                
Y  : out std_logic_vector(7 downto 0) ); -- 8 bit vector
end Demux_1x8_Selected;
architecture Behavioral of Demux_1x8_Selected is
signal Sel : std_logic_vector(2 downto 0); -- Internal vector for select lines
signal YOn : std_logic_vector(7 downto 0); -- signal 
begin
-- Combine select signals into a vector
Sel <= S2 & S1 & S0; -- order matters!
with Sel select
YOn<= "00000001" when "000", 
      "00000010" when "001",
      "00000100" when "010",
      "00001000" when "011",
      "00010000" when "100",
      "00100000" when "101",
      "01000000" when "110",    
      "10000000" when "111",
      "XXXXXXXX" when others; 
Y <= YOn when D='1' else "00000000"; -- I used conditional inorder to output only when D active.
-- I could not figure out how to form this within the selected.
end Behavioral;
