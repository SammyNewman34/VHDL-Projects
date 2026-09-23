library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Full_Adder is
    Port (
        A    : in  STD_LOGIC;  -- First input bit
        B    : in  STD_LOGIC;  -- Second input bit
        Cin  : in  STD_LOGIC;  -- Carry-in
        Sum  : out STD_LOGIC;  -- Sum output
        Cout : out STD_LOGIC   -- Carry-out
    );
end Full_Adder;

architecture Behavioral of Full_Adder is
begin
    -- Logic for Sum and Cout
    Sum  <= A xor B xor Cin;      -- XOR operation for Sum
    Cout <= (A and B)or (Cin and(A xor B)); -- Carry-out logic
end Behavioral;
