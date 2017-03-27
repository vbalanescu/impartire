library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.numeric_std.all;

entity Impartire_RRP is
    Port ( X : in STD_LOGIC_VECTOR (7 downto 0);
           Y : in STD_LOGIC_VECTOR (7 downto 0);
           NX : in INTEGER range 0 to 7;
           Cat : out STD_LOGIC_VECTOR (7 downto 0);
           Rest : out STD_LOGIC_VECTOR (7 downto 0));
end Impartire_RRP;

architecture Behavioral_RRP of Impartire_RRP is

signal A : std_logic_vector (7 downto 0) := "00000000";
signal Q : std_logic_vector (7 downto 0) := X;
signal B : std_logic_vector (7 downto 0) := Y;

begin

    p1:process(A, NX)
        begin
        A(NX downto 1)<= A(NX downto 0) & Q(NX-1);
        Q(NX-1 downto 1)<= Q(NX-1 downto 0) & '0';
        for i in 0 to NX loop
            A(NX downto 0) <= A(NX downto 0) - B(NX-1 downto 0);
            if A<0 then        
                A(NX downto 0) <= A(NX downto 0) + B(NX-1 downto 0);
                Q(0) <= '0';
            else
                Q(0) <= '1';    
            end if;
        end loop;
    Rest<=A;
    Cat<=Q;    
    end process;
end Behavioral_RRP;
