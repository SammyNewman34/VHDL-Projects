
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity State_Machine is
port(
x, rst, clk :in std_logic;
Y : out std_logic_vector(1 downto 0):= "00");
end State_Machine;

architecture Behavioral of State_Machine is
type state is (a,b,c,d);
signal PST : state;
signal NST : state;
begin
process(clk, rst)
begin
if (rst='1') then
PST <= a;
elsif rising_edge(clk) then
PST<=NST;
end if;
end process;

process(x, PST)
begin
case PST is 
    when a =>
        if (x='1') then
        Y <= "01"; --yb
        NST <=b;
        elsif(x='0') then -- need elsif bc else could mea when its not 0 or 1 which isnt true
        Y <= "00"; --ya
        NST<=PST;
        end if;
     when b => 
        if (x='1') then
        NST <= d;
        Y <= "11"; --yd
        elsif (x='0') then
        NST <= c;
        Y<= "10";
        end if;
     when c =>
        if (x='1') then
        NST<= d;
        Y<= "00";
        elsif (x='0') then 
        NST<= b;
        Y<= "10";
        end if;
      when d =>
          if (x='1') then
          NST<= a;
          Y<="10";
          elsif (x='0')then
          NST<=PST;
          Y<= "01";
          end if;
       end case;
       end process;

end Behavioral;
