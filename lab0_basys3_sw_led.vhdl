----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/19/2024 12:21:57 PM
-- Design Name: 
-- Module Name: lab0main - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

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
