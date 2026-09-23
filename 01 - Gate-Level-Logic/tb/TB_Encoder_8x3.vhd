----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TB_Encoder_8x3 is

-- there is no entitiy port in test bench

end TB_Encoder_8x3;

architecture Behavioral of TB_Encoder_8x3 is

component Encoder_8x3 -- without "is"
-- declade component for test (UUT - Unit Under Test)
port(
I0, I1, I2, I3, I4, I5, I6, I7 :in std_logic;
Y0, Y1, Y2 : out std_logic -- no second semi-color in this versio
);

end component;

-- Signal declarations to connect to the encoder inputs and outputs (UUT)
    signal I0, I1, I2, I3, I4, I5, I6, I7 : std_logic:='0';--
    signal Y0, Y1, Y2 : std_logic ;

begin
U1: Encoder_8x3  --signals to connect to test
port map (
I0 => I0,
I1 => I1,
I2 => I2,
I3 => I3,
I4 => I4,
I5 => I5,
I6 => I6,
I7 => I7,
Y0 => Y0,
Y1 => Y1,
Y2 => Y2
);

process --process to allow test vectors

begin
         -- Test process to apply inputs
I0 <= '1'; wait for 10 ns;
I0 <= '0'; wait for 10 ns;

         -- Test case: Activate I1
 I1 <= '1'; wait for 10 ns;
 I1 <= '0'; wait for 10 ns;

        -- Test case: Activate I2
I2 <= '1'; wait for 10 ns;
I2 <= '0'; wait for 10 ns;

        -- Test case: Activate I3
I3 <= '1'; wait for 10 ns;
I3 <= '0'; wait for 10 ns;

        -- Test case: Activate I4
I4 <= '1'; wait for 10 ns;
I4 <= '0'; wait for 10 ns;

        -- Test case: Activate I5
I5 <= '1'; wait for 10 ns;
I5 <= '0'; wait for 10 ns;

        -- Test case: Activate I6
I6 <= '1'; wait for 10 ns;
I6 <= '0'; wait for 10 ns;

        -- Test case: Activate I7
I7 <= '1'; wait for 10 ns;
I7 <= '0'; wait for 10 ns;

I4 <= '1'; I7 <= '1'; wait for 10 ns;
I4 <= '0'; I7 <= '0'; wait for 10 ns;
        -- End the simulation
        wait for 100 ns;

end process;

end Behavioral;


