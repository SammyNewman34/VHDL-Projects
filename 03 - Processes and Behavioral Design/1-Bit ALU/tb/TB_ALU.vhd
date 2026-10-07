library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity TB_ALU is
end TB_ALU;
architecture Behavioral of TB_ALU is
component ALU is
 port(
INVA, A,B,ENA,ENB, Cin: in std_logic;
F : in std_logic_vector(1 downto 0); -- this will give F0 and F1
Carry_Out: out std_logic;
Output: out std_logic);
end component;

 signal A : std_logic := '0';
 signal B: std_logic:='1';
 signal ENA, ENB : std_logic := '1';
 signal INVA, CIN : std_logic := '0';
 signal F : std_logic_vector(1 downto 0) := "00";
 signal Output : std_logic;
 signal Carry_Out : std_logic;

begin
UUT: ALU port map (
A => A, B => B, ENA => ENA, ENB => ENB, INVA => INVA, CIN => CIN, F => F, 
Output => Output,Carry_Out => Carry_Out);
 
test : process
begin
wait for 10 ns;
  for i in 0 to 15 loop
        -- Assign values to inputs based on the loop index using the truth table inputs
        case i is
        when 0 => 
        F<= "01"; ENA <='1'; ENB <= '0'; INVA <= '0'; Cin <= '0';
        when 1 =>
        F<= "01"; ENA <='0'; ENB <= '1'; INVA <= '0'; Cin <= '0';
        when 2 =>
        F<= "01"; ENA <='1'; ENB <= '0'; INVA <= '1'; Cin <= '0';
        when 3 =>
        F<= "10"; ENA <='0'; ENB <= '1'; INVA <= '0'; Cin <= '0';    
        when 4 =>
        F<= "11"; ENA <='1'; ENB <= '1'; INVA <= '0'; Cin <= '0'; 
        when 5 =>
        F<= "11"; ENA <='1'; ENB <= '1'; INVA <= '0'; Cin <= '1'; 
        when 6=>
        F<= "11"; ENA <='1'; ENB <= '0'; INVA <= '0'; Cin <= '1'; 
        when 7 =>
        F<= "11"; ENA <='0'; ENB <= '1'; INVA <= '0'; Cin <= '1'; 
        when 8=>
        F<= "11"; ENA <='0'; ENB <= '1'; INVA <= '0'; Cin <= '1';
        when 9=>
        F<= "11"; ENA <='1'; ENB <= '1'; INVA <= '1'; Cin <= '1';
        when 10=>
        F<= "11"; ENA <='1'; ENB <= '0'; INVA <= '1'; Cin <= '1';
        when 11=>
        F<= "00"; ENA <='1'; ENB <= '1'; INVA <= '0'; Cin <= '0';
        when 12=>
        F<= "01"; ENA <='1'; ENB <= '1'; INVA <= '0'; Cin <= '0';
        when 13=>
        F<= "11"; ENA <='0'; ENB <= '0'; INVA <= '0'; Cin <= '0';
        when 14=>
        F<= "11"; ENA <='0'; ENB <= '0'; INVA <= '0'; Cin <= '1';
        when 15=>
        F<= "11"; ENA <='0'; ENB <= '0'; INVA <= '1'; Cin <= '0';     
        when others => null; -- Handle default case
        end case;
        
        wait for 10 ns; -- Delay between test cases
end loop;
wait;
end process;
end Behavioral;