
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Priority_Encoder is
    Port ( I : in STD_LOGIC_VECTOR(3 downto 0);
           EN : in STD_LOGIC;
           A : out STD_LOGIC_VECTOR(1 downto 0);
           OE : out STD_LOGIC);
end Priority_Encoder;

architecture Behavioral of Priority_Encoder is
begin
process(EN, I)
begin
if EN = '0' then  
    A  <= "00";
    OE <= '0';
else
    if I(3) = '1' then
    A  <= "11"; 
    OE <= '0';
     elsif I(2) = '1' then
    A  <= "10"; 
    OE <= '0';
    elsif I(1) = '1' then
    A  <= "01"; 
    OE <= '0';
    elsif I(0) = '1' then
    A  <= "00"; 
    OE <= '0';
    else 
    A <= "00"; 
    OE <= '1';
    end if;
end if;

end process;
end Behavioral;
