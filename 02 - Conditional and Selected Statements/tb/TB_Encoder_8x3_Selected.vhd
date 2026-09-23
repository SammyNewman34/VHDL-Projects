
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_Encoder_8x3_Selected is
end TB_Encoder_8x3_Selected;

architecture Behavioral of TB_Encoder_8x3_Selected is
component Encoder_8x3_Selected
port(
D :in std_logic_vector (7 downto 0); --8 inputs
Y0,Y1,Y2 : out std_logic --3 outputs, not as a vector (Y0 is LSB)
);
end component;

-- test bench Singnals

signal D :std_logic_vector (7 downto 0):= (others => '0');
signal Y2,Y1,Y0 : std_logic;
   
begin
U1: Encoder_8x3_Selected --Instatiate signals from Encoder to Test Bench
port map(D=>D, Y1=>Y1,Y2=>Y2,Y0=>Y0);
--test process
process
begin
-- Test Case 1: D = 00000001 (Expect Y2Y1Y0 = "000")
        D <= "00000001";
        wait for 10 ns;

        -- Test Case 2: D = 00000010 (Expect Y2Y1Y0 = "001")
        D <= "00000010";
        wait for 10 ns;

        -- Test Case 3: D = 00000100 (Expect Y2Y1Y0 = "010")
        D <= "00000100";
        wait for 10 ns;

        -- Test Case 4: D = 00001000 (Expect Y2Y1Y0 = "011")
        D <= "00001000";
        wait for 10 ns;

        -- Test Case 5: D = 00010000 (Expect Y2Y1Y0 = "100")
        D <= "00010000";
        wait for 10 ns;

        -- Test Case 6: D = 00100000 (Expect Y2Y1Y0 = "101")
        D <= "00100000";
        wait for 10 ns;

        -- Test Case 7: D = 01000000 (Expect Y2Y1Y0 = "110")
        D <= "01000000";
        wait for 10 ns;

        -- Test Case 8: D = 10000000 (Expect Y2Y1Y0 = "111")
        D <= "10000000";
        wait for 10 ns;

        -- Test Case 9: Default case - Invalid Input
        D <= "00000000"; -- No input is active
        wait for 10 ns;

        -- Stop the simulation
        wait;
    end process;

end Behavioral;
