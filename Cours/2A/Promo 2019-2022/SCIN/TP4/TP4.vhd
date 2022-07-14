library ieee;
use ieee.std_logic_1164.all;

entity PorteXor is

port( A, B : in std_logic;

S : out std_logic);

end PorteXor;

architecture fonctionnelle of PorteXor is

begin

S <= A xor B;

end fonctionnelle;