----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/19/2024 01:03:11 PM
-- Design Name: 
-- Module Name: lab0_basys3_seq - Behavioral
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

entity BlinkLED is
  Port ( clk : in  STD_LOGIC;
         led : out STD_LOGIC_VECTOR (15 downto 0)
       );
end BlinkLED;

architecture Behavioral of BlinkLED is
  signal pulse : std_logic := '0';
  signal count : integer range 0 to 49999999 := 0;
begin
  process(clk)
  begin
    if clk'event and clk = '1' then
      if count = 49999999 then
        count <= 0;
        pulse <= not pulse;
      else
        count <= count + 1;
      end if;
    end if;
  end process;

  led (3 downto 0) <= (others => pulse);
end Behavioral;