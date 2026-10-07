
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_Q3 is
end TB_Q3;
architecture Behavioral of TB_Q3 is
component Q3 is
port(Din, start, hold : in std_logic;
Dout : out std_logic_vector(7 downto 0));
end component;

signal Din : std_logic := '1'; -- Din will always be 1
signal start : std_logic := '0';
signal hold : std_logic := '0';
signal Dout : std_logic_vector(7 downto 0);
--signal count : integer range 0 to 8 := 0;
begin
UUT : Q3 port map( Din=> Din, Dout => Dout, start=>start, hold=>hold);
process 
begin
for i in 0 to 10 loop 
    start <='0';
    wait for 10 ns;
    
    if i =5 then
        start<='1';
        hold<= '1';
        wait for 10 ns;
        hold<='0';
    else
        start<='1';
        wait for 10 ns;
    end if;
end loop;
wait;
end process;
end Behavioral;
