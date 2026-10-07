

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity Q1_Divider is
    port(a, b: in std_logic_vector(7 downto 0);
    c,r: out std_logic_vector(7 downto 0));
end Q1_Divider;
architecture Behavioral of Q1_Divider is
    signal num_a, num_b:unsigned(7 downto 0);
begin
    num_a<=unsigned(a);
    num_b<=unsigned(b);

process(num_a,num_b)
    variable reg: unsigned(15 downto 0);
    variable num_r: unsigned(7 downto 0);
begin
    reg:=x"00"&num_b; --hexadecimal -> "0000, 0000" & num_b
for i in 7 downto 0 loop
    reg(15 downto 0):= reg(14 downto 0) &'0'; -- Shift Left Arithmetic
    
    if (reg(15 downto 8)<num_a) then 
         c(i)<='0'; -- c represents the carry out
    else
        c(i)<='1';
        reg(15 downto 8):= reg(15 downto 8) - num_a;
    end if;
    end loop;
         num_r:=reg(15 downto 8);
         R<=std_logic_vector(num_r);
end process;
end Behavioral;
    

