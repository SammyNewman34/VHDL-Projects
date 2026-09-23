library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_4x1 is
--  Port ( );
port(
I0, I1, I2, I3, S0, S1 : in std_logic;
Y : out std_logic
);
end Mux_4x1;
architecture gate_logic of Mux_4x1 is
begin
Y <= (I0 and not S0 and not S1) or -- S1S0 - 00 Y -> I0
(I1 and S0 and not S1) or -- S1S0 - 01  Y -> I1
(I2 and not S0 and S1) or -- S1S0 - 10 Y -> I2
(I3 and S0 and S1); -- S1S0 - 11 Y-> I3
end gate_logic;
