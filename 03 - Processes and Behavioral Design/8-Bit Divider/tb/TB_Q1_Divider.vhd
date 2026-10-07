
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity TB_Q1_Divider is
end TB_Q1_Divider;
architecture Behavioral of TB_Q1_Divider is
component Q1_Divider is
port(a, b: in std_logic_vector(7 downto 0);
    c,r: out std_logic_vector(7 downto 0));
end component;
signal a,b : std_logic_vector(7 downto 0);
signal r, c : std_logic_vector(7 downto 0);
begin
UUT: Q1_Divider
port map(a=>a, b=>b, c=>c, r=>r);
process
begin
for i in 0 to 6 loop
case i is
when 0 =>
a <= std_logic_vector(to_unsigned(7,8));
b <= std_logic_vector(to_unsigned(101,8));
                      
when 1 =>
a <= std_logic_vector(to_unsigned(3,8));
b <= std_logic_vector(to_unsigned(20,8));
                     
when 2 =>
a <= std_logic_vector(to_unsigned(2,8));
b <= std_logic_vector(to_unsigned(10,8));
                     
when 3 =>
a <= std_logic_vector(to_unsigned(0,8));
b <= std_logic_vector(to_unsigned(10,8));
                     
when 4 =>
a <= std_logic_vector(to_unsigned(7,8));
b <= std_logic_vector(to_unsigned(0,8));
                    
when 5 =>
a <= std_logic_vector(to_unsigned(1,8));
b <= std_logic_vector(to_unsigned(255,8));
 
when others=> null; -- dont do anything
end case;
wait for 10 ns;
end loop;
end process;
end Behavioral;
