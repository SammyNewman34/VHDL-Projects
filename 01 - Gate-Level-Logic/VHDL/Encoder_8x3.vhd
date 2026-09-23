----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
-- 1. write VHDL code (entitiy, port())
-- 2. defire architechure (using OR gates)

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Encoder_8x3 is
--  Port ( );
port (
I0 : in std_logic ;  -- input 0
I1 : in std_logic ; --input 1
I2 : in std_logic ;
I3 : in std_logic ;
I4 : in std_logic ;
I5 : in std_logic ;
I6 : in std_logic ;
I7 : in std_logic ;
Y0, Y1, Y2 : out std_logic -- output 3 terminals NO SEMI COLON HERE

);
end Encoder_8x3; -- SEMI COLON HERE

architecture Behavioral of Encoder_8x3 is

begin
Y0 <= I1 or I3 or I5 or I7; --MSB
Y1 <= I2 or I3 or I6 or I7;
Y2 <= I4 or I5 or I6 or I7; --LSB
end Behavioral;
