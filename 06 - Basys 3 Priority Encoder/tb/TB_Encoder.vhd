----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/10/2025 03:40:31 PM
-- Design Name: 
-- Module Name: TB_PE - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_EN is
end TB_EN;

architecture Behavioral of TB_EN is
    -- Component declaration of the Unit Under Test (UUT)
    component Priority_Encoder
        Port ( EN  : in  STD_LOGIC;
               I   : in  STD_LOGIC_VECTOR(3 downto 0);
               OE  : out STD_LOGIC;
               A   : out STD_LOGIC_VECTOR(1 downto 0));
    end component;

    -- Signals to connect to the UUT
    signal EN  : STD_LOGIC := '0';
    signal I   : STD_LOGIC_VECTOR(3 downto 0) := "0000";
    signal OE  : STD_LOGIC;
    signal A   : STD_LOGIC_VECTOR(1 downto 0);

begin
    -- Instantiate the UUT
    UUT: Priority_Encoder
        port map (
            EN  => EN,
            I   => I,
            OE  => OE,
            A   => A
        );

    -- Stimulus process
    process
    begin
        -- Case 1: EN = 0 (disabled)
        EN <= '0'; I <= "XXXX"; wait for 10 ns; -- Don't care inputs
        
        -- Case 2: EN = 1, I(3) = 1 (highest priority)
        EN <= '1'; I <= "1XXX"; wait for 10 ns; 
        
        -- Case 3: I(2) = 1 (next priority)
        EN <= '1'; I <= "01XX"; wait for 10 ns;

        -- Case 4: I(1) = 1
        EN <= '1'; I <= "001X"; wait for 10 ns;
        
        -- Case 5: I(0) = 1 (lowest priority)
        EN <= '1'; I <= "0001"; wait for 10 ns;

        -- Case 6: No input active (all zeros)
        EN <= '1'; I <= "0000"; wait for 10 ns;

        -- Stop simulation
        wait;
    end process;
end Behavioral;
