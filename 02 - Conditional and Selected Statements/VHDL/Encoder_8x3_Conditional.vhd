

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Encoder_8x3_Conditional is
--  Port ( );
Port(
D :in std_logic_vector (7 downto 0); --8 inputs
Y0,Y1,Y2 : out std_logic --3 outputs, not as a vector (Y0 is LSB)
);
end Encoder_8x3_Conditional;

architecture Behavioral of Encoder_8x3_Conditional is
begin

Y0 <= '0' when (D= "00000000" or D= "00000100" or D="00010000" or D="01000000") else -- D0,D2,D4,D6
      '1' when (D= "00000010" or D= "00001000" or D="00100000" or D="10000000") else -- D1,D3,D5,D7
      '0'; -- if not given a value then zero
 
Y1 <= '0' when (D= "00000000" or D= "00000010" or D="00010000" or D="00100000") else -- D0,D1,D4,D5
      '1' when (D= "00000100" or D= "00001000" or D="01000000" or D="10000000") else -- D2,D3,D6,D7
      '0';
      
Y2 <= '0' when (D="000000000" or D="00000010" or D="00000100" or D="00001000") else -- D0,D1,D2,D3
      '1' when (D="000100000" or D="00100000" or D="01000000" or D="10000000") else -- D4,D5,D6,D7
      '0';
   
    
end Behavioral;
