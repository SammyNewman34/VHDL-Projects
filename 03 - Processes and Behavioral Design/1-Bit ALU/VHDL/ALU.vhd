
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity ALU is
port(
INVA, A,B,ENA,ENB, Cin: in std_logic;
F : in std_logic_vector(1 downto 0); -- this will give F0 and F1
Carry_Out: out std_logic;
Output: out std_logic);
end ALU;
architecture Behavioral of ALU is
--should  do signls here if need be
signal InA : std_logic;
signal InB : std_logic; -- we need this signal to represent the input. it wil update after process and be used in the next process.
signal temp_out :std_logic;
signal temp_sum: std_logic;
signal temp_carry : std_logic;
begin

-- Input A and B
process(INVA,A,B,ENA, ENB)
begin
if ENA ='0' then 
    InA<= '0';
else --  if ENA = 1
    if INVA ='1' then
        InA<= not A;
    else 
        InA<=A;
    end if;
end if;

if ENB = '0'then
    InB <= '0';
else
    InB <=B;
end if;
end process;

process(F, InA,InB, Cin)
begin
case F is -- each case are our enable lines
    when "00" => 
    temp_out <= (InA and InB);
    temp_carry <= '0';
    
    when "01" =>
    temp_out <= (InA or InB);
    temp_carry <= '0';
    
    when "10" => 
    temp_out <=  not InB;
    temp_carry <= '0';
    
    when "11" => --Full Adder
    temp_out<= (InA xor InB) xor Cin;
    temp_carry <= (InA and InB) or (InA and Cin) or (InB and Cin);
    
    when others =>
    temp_out <= '0';
    temp_carry <= '0';
    
end case;

Output <= temp_out;

Carry_out<= temp_carry;
end process;
end Behavioral;
