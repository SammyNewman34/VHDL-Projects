
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_Encoder_8x3_Conditional is
end TB_Encoder_Conditional;

architecture Behavioral of TB_Encoder_Conditional is
    -- Component Declaration for the test unit of UUT (Unit Under Test)
component Encoder_8x3_Conditional 
    port(
    D :in std_logic_vector (7 downto 0); --8 inputs
    Y0,Y1,Y2 : out std_logic --3 outputs, not as a vector (Y0 is LSB)
    );
    end component;
    -- Signals to connect to the encoder
    signal D  : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
    signal Y2 : STD_LOGIC;
    signal Y1 : STD_LOGIC;
    signal Y0 : STD_LOGIC;
    
begin
--Instatiate --> Explains how component connects to other parts of circuit
U1: Encoder_8x3_Conditional
    port map(
       D  => D,
       Y2 => Y2,
       Y1 => Y1,
       Y0 => Y0
);

process --Test process 
begin

--    D = 00000000, Y2Y1Y0 = "000"
        D <= "00000000"; 
        wait for 10 ns;
        
 -- D = 00000001, Y2Y1Y0 = "000"
        D <= "00000001";
        wait for 10 ns;

 -- D = 00000010, Y2Y1Y0 = "001"
        D <= "00000010";
        wait for 10 ns;

--  D = 00000100, Y2Y1Y0 = "010"
        D <= "00000100";
        wait for 10 ns;

--  D = 00001000, Y2Y1Y0 = "011"
        D <= "00001000";
        wait for 10 ns;

--  D = 00010000 Y2Y1Y0 = "100"
        D <= "00010000";
        wait for 10 ns;

--  D = 00100000, Y2Y1Y0 = "101"
        D <= "00100000";
        wait for 10 ns;

--  D = 01000000, Y2Y1Y0 = "110"
        D <= "01000000";
        wait for 10 ns;

--  D = 10000000, Y2Y1Y0 = "111"
        D <= "10000000";
        wait for 10 ns;
--    D = 00000000, Y2Y1Y0 = "000"
        D <= "00000000"; 
        wait for 10 ns;

        -- Stop the simulation
wait;
end process;


end Behavioral;
