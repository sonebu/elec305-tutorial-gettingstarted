library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab0main is
    Port ( led : out  STD_LOGIC_VECTOR (15 downto 0);
           sw  : in   STD_LOGIC_VECTOR (15 downto 0)
           );
end lab0main;

architecture Behavioral of lab0main is
begin
    led(15 downto 6) <= not sw(15 downto 6);
    led(5 downto 0) <= sw(5 downto 0);
end Behavioral;
