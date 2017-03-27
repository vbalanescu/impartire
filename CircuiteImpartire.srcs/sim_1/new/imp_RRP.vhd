----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/27/2017 04:49:52 PM
-- Design Name: 
-- Module Name: sim_RRP - Behavioral
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

entity imp_RRP is
--  Port ( );
end imp_RRP;

architecture Behavioral of imp_RRP is
          signal X : STD_LOGIC_VECTOR (7 downto 0):="00001101";
          signal Y : STD_LOGIC_VECTOR (7 downto 0):="00000101";
          signal NX : INTEGER :=4;
          signal Cat :  STD_LOGIC_VECTOR (7 downto 0);
          signal Rest :  STD_LOGIC_VECTOR (7 downto 0);
begin
DUT:entity WORK.Impartire_RRP port map
         ( X => X,
           Y => Y,
           NX => NX,
           Cat => Cat,
           Rest => Rest);

end Behavioral;
