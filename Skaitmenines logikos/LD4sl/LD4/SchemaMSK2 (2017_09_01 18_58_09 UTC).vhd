-- VHDL model created from schematic SchemaMSK2.sch -- May 09 12:07:46 2016

library IEEE;
use IEEE.std_logic_1164.all;
library xp2;
use xp2.components.all;

entity SCHEMAMSK2 is
      Port (     Q10 : Out   std_logic;
                 Q11 : Out   std_logic;
                 Q12 : Out   std_logic;
                 Q13 : Out   std_logic;
                 Q20 : Out   std_logic;
                 Q21 : Out   std_logic;
                 Q22 : Out   std_logic;
                 Q23 : Out   std_logic;
                   R : In    std_logic;
                   C : In    std_logic );

end SCHEMAMSK2;

architecture SCHEMATIC of SCHEMAMSK2 is

   SIGNAL gnd : std_logic := '0';
   SIGNAL vcc : std_logic := '1';

   signal      N_2 : std_logic;
   signal      N_3 : std_logic;
   signal      N_4 : std_logic;
   signal      N_5 : std_logic;
   signal Q22_DUMMY : std_logic;
   signal      N_1 : std_logic;

   component SchemaMsk
      Port (       C : In    std_logic;
                  D0 : In    std_logic;
                  D1 : In    std_logic;
                  D2 : In    std_logic;
                  D3 : In    std_logic;
                   L : In    std_logic;
                   R : In    std_logic;
                 Q10 : Out   std_logic;
                 Q11 : Out   std_logic;
                 Q12 : Out   std_logic;
                 Q13 : Out   std_logic;
                   p : Out   std_logic );
   end component;

   component vlo
      Port (       Z : Out   std_logic );
   end component;

   component or2
      Port (       A : In    std_logic;
                   B : In    std_logic;
                   Z : Out   std_logic );
   end component;

   component inv
      Port (       A : In    std_logic;
                   Z : Out   std_logic );
   end component;

begin

   Q22 <= Q22_DUMMY;

   I6 : SchemaMsk
      Port Map ( C=>N_2, D0=>N_3, D1=>N_3, D2=>N_3, D3=>N_3, L=>N_3,
                 R=>N_5, Q10=>Q20, Q11=>Q21, Q12=>Q22_DUMMY, Q13=>Q23,
                 p=>N_1 );
   I7 : SchemaMsk
      Port Map ( C=>C, D0=>N_3, D1=>N_3, D2=>N_3, D3=>N_3, L=>N_3,
                 R=>N_5, Q10=>Q10, Q11=>Q11, Q12=>Q12, Q13=>Q13, p=>N_4 );
   I5 : vlo
      Port Map ( Z=>N_3 );
   I1 : or2
      Port Map ( A=>Q22_DUMMY, B=>R, Z=>N_5 );
   I2 : inv
      Port Map ( A=>N_4, Z=>N_2 );

end SCHEMATIC;
