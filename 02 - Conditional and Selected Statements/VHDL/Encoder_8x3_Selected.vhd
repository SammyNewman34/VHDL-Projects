
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Encoder_8x3_Selected is
Port(
D :in std_logic_vector (7 downto 0); --8 inputs
Y0,Y1,Y2 : out std_logic --3 outputs, not as a vector (Y0 is LSB)
);
end Encoder_8x3_Selected;

architecture Behavioral of Encoder_8x3_Selected is
begin
with D select
Y0 <= '0' when "00000001"|"00000100"|"00010000"|"01000000", -- D0,D2,D4,D6
      '1' when "00000010"|"00001000"|"00100000"|"10000000", -- D1,D3,D5,D7
      '0' when others;
with D select
Y1 <= '0' when "00000001"|"00000010"|"00010000"|"00100000", -- D0,D1,D4,D5
      '1' when "00000100"|"00001000"|"01000000"|"10000000", -- D2,D3,D6,D7
      '0' when others;
with D select 
Y2 <= '0' when "00000001"|"00000010"|"00000100"|"00001000", -- D0,D1,D2,D3
      '1' when "00010000"|"00100000"|"01000000"|"10000000", -- D4,D5,D6,D7
      '0' when others;
end Behavioral;
