-- VHDL model created from schematic SchemaMskPLIS.sch -- May 09 12:07:46 2016

library IEEE;
use IEEE.std_logic_1164.all;
library xp2;
use xp2.components.all;

entity SCHEMAMSKPLIS is
      Port (       C : In    std_logic;
                   R : In    std_logic;
                 Q10 : Out   std_logic;
                 Q11 : Out   std_logic;
                 Q12 : Out   std_logic;
                 Q13 : Out   std_logic;
                 Q20 : Out   std_logic;
                 Q21 : Out   std_logic;
                 Q22 : Out   std_logic;
                 Q23 : Out   std_logic );

end SCHEMAMSKPLIS;

architecture SCHEMATIC of SCHEMAMSKPLIS is

   SIGNAL gnd : std_logic := '0';
   SIGNAL vcc : std_logic := '1';

   signal     N_18 : std_logic;
   signal     N_15 : std_logic;
   signal     N_17 : std_logic;
   signal      N_1 : std_logic;
   signal      N_5 : std_logic;
   signal      N_6 : std_logic;
   signal      N_7 : std_logic;
   signal      N_8 : std_logic;
   signal      N_9 : std_logic;
   signal     N_10 : std_logic;
   signal     N_11 : std_logic;
   signal     N_12 : std_logic;
   signal     N_13 : std_logic;
   signal     N_14 : std_logic;

   component and4
      Port (       A : In    std_logic;
                   B : In    std_logic;
                   C : In    std_logic;
                   D : In    std_logic;
                   Z : Out   std_logic );
   end component;

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

   I17 : and4
      Port Map ( A=>N_11, B=>N_9, C=>N_5, D=>N_17, Z=>N_18 );
   I6 : SchemaMsk
      Port Map ( C=>N_7, D0=>N_1, D1=>N_1, D2=>N_1, D3=>N_1, L=>N_1,
                 R=>N_8, Q10=>N_5, Q11=>N_17, Q12=>N_15, Q13=>open,
                 p=>N_14 );
   I7 : SchemaMsk
      Port Map ( C=>C, D0=>N_1, D1=>N_1, D2=>N_1, D3=>N_1, L=>N_1,
                 R=>N_8, Q10=>N_12, Q11=>N_11, Q12=>N_10, Q13=>N_9,
                 p=>N_6 );
   I5 : vlo
      Port Map ( Z=>N_1 );
   I1 : or2
      Port Map ( A=>N_15, B=>N_13, Z=>N_8 );
   I11 : inv
      Port Map ( A=>N_18, Z=>Q23 );
   I8 : inv
      Port Map ( A=>N_5, Z=>Q20 );
   I9 : inv
      Port Map ( A=>N_17, Z=>Q21 );
   I10 : inv
      Port Map ( A=>N_15, Z=>Q22 );
   I12 : inv
      Port Map ( A=>N_9, Z=>Q13 );
   I2 : inv
      Port Map ( A=>N_6, Z=>N_7 );
   I13 : inv
      Port Map ( A=>N_10, Z=>Q12 );
   I14 : inv
      Port Map ( A=>N_11, Z=>Q11 );
   I15 : inv
      Port Map ( A=>N_12, Z=>Q10 );
   I16 : inv
      Port Map ( A=>R, Z=>N_13 );

end SCHEMATIC;
