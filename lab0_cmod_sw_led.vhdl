library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab0main is
    Port ( led : out  STD_LOGIC_VECTOR (1 downto 0);
           btn : in   STD_LOGIC_VECTOR (1 downto 0)
           );
end lab0main;

architecture Behavioral of lab0main is
begin
    led(1 downto 0) <= btn(1 downto 0);
end Behavioral;