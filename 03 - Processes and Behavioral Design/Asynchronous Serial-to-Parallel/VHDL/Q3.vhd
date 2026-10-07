
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Q3 is
port(Din, start, hold : in std_logic;
Dout : out std_logic_vector(7 downto 0):="00000000");
end Q3;

architecture Behavioral of Q3 is
signal Vec_shift : std_logic_vector(7 downto 0):="00000000"; -- for vector shift  in process to define Dout
signal shift_done: std_logic:='0';
begin
process -- process for shift operation, no S.L.
variable count : integer range 0 to 8 :=0;
begin 
wait until start ='1';
 -- wait for the start signal!
if hold = '0' then -- only shift if hold not active
        Vec_shift <= Din & Vec_shift(7 downto 1); -- shiftright, Din -> MSB
        count:=count +1;
        end if;
if count = 8 then
    shift_done<='1';
    wait for 10 ns; -- wait in prcoess updates the signal
    shift_done<='0'; -- reset shift
    count:=0;
    end if;
    -- no need for if hold ='1', just wont do anything if hold /=0
end process;

process  -- data output
begin 
wait until shift_done ='1';
Dout <=Vec_shift;
end process;

end Behavioral;
