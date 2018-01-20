-- VHDL model created from schematic SchemaMsk.sch -- May 09 12:07:45 2016

library IEEE;
use IEEE.std_logic_1164.all;
library xp2;
use xp2.components.all;

entity SCHEMAMSK is
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

end SCHEMAMSK;

architecture SCHEMATIC of SCHEMAMSK is

   SIGNAL gnd : std_logic := '0';
   SIGNAL vcc : std_logic := '1';

   signal    N_104 : std_logic;
   signal     N_96 : std_logic;
   signal     N_97 : std_logic;
   signal     N_98 : std_logic;
   signal     N_99 : std_logic;
   signal    N_101 : std_logic;
   signal    N_102 : std_logic;
   signal    N_103 : std_logic;
   signal     N_95 : std_logic;
   signal     N_85 : std_logic;
   signal     N_86 : std_logic;
   signal     N_87 : std_logic;
   signal     N_82 : std_logic;
   signal     N_75 : std_logic;
   signal     N_54 : std_logic;
   signal     N_59 : std_logic;
   signal     N_52 : std_logic;
   signal Q13_DUMMY : std_logic;
   signal Q12_DUMMY : std_logic;
   signal Q11_DUMMY : std_logic;
   signal Q10_DUMMY : std_logic;
   signal     N_26 : std_logic;
   signal     N_31 : std_logic;
   signal     N_32 : std_logic;
   signal     N_42 : std_logic;

   component or3
      Port (       A : In    std_logic;
                   B : In    std_logic;
                   C : In    std_logic;
                   Z : Out   std_logic );
   end component;

   component or2
      Port (       A : In    std_logic;
                   B : In    std_logic;
                   Z : Out   std_logic );
   end component;

   component and3
      Port (       A : In    std_logic;
                   B : In    std_logic;
                   C : In    std_logic;
                   Z : Out   std_logic );
   end component;

   component and2
      Port (       A : In    std_logic;
                   B : In    std_logic;
                   Z : Out   std_logic );
   end component;

   component inv
      Port (       A : In    std_logic;
                   Z : Out   std_logic );
   end component;

   component mux21
      Port (      D0 : In    std_logic;
                  D1 : In    std_logic;
                  SD : In    std_logic;
                   Z : Out   std_logic );
   end component;

   component fd1s3dx
      Port (      CD : In    std_logic;
                  CK : In    std_logic;
                   D : In    std_logic;
                   Q : Out   std_logic );
   end component;

begin

   Q10 <= Q10_DUMMY;
   Q11 <= Q11_DUMMY;
   Q12 <= Q12_DUMMY;
   Q13 <= Q13_DUMMY;

   I65 : or3
      Port Map ( A=>N_99, B=>N_97, C=>N_95, Z=>N_32 );
   I67 : or2
      Port Map ( A=>N_104, B=>N_85, Z=>N_82 );
   I61 : or2
      Port Map ( A=>N_87, B=>N_86, Z=>N_103 );
   I7 : or2
      Port Map ( A=>N_75, B=>N_96, Z=>N_52 );
   I66 : and3
      Port Map ( A=>N_98, B=>Q10_DUMMY, C=>Q11_DUMMY, Z=>N_99 );
   I14 : and3
      Port Map ( A=>Q12_DUMMY, B=>Q11_DUMMY, C=>N_101, Z=>N_95 );
   I62 : and3
      Port Map ( A=>N_85, B=>Q11_DUMMY, C=>N_101, Z=>N_87 );
   I58 : and3
      Port Map ( A=>Q12_DUMMY, B=>Q11_DUMMY, C=>Q10_DUMMY, Z=>N_96 );
   I23 : and2
      Port Map ( A=>Q12_DUMMY, B=>N_104, Z=>N_97 );
   I64 : and2
      Port Map ( A=>N_104, B=>Q10_DUMMY, Z=>N_86 );
   I54 : and2
      Port Map ( A=>N_101, B=>N_82, Z=>N_54 );
   I59 : and2
      Port Map ( A=>Q13_DUMMY, B=>N_104, Z=>N_75 );
   I53 : and2
      Port Map ( A=>Q11_DUMMY, B=>Q13_DUMMY, Z=>p );
   I34 : inv
      Port Map ( A=>Q11_DUMMY, Z=>N_104 );
   I35 : inv
      Port Map ( A=>Q10_DUMMY, Z=>N_101 );
   I28 : inv
      Port Map ( A=>Q13_DUMMY, Z=>N_85 );
   I33 : inv
      Port Map ( A=>Q12_DUMMY, Z=>N_98 );
   I41 : mux21
      Port Map ( D0=>N_103, D1=>D1, SD=>L, Z=>N_102 );
   I40 : mux21
      Port Map ( D0=>N_52, D1=>D3, SD=>L, Z=>N_26 );
   I42 : mux21
      Port Map ( D0=>N_32, D1=>D2, SD=>L, Z=>N_31 );
   I43 : mux21
      Port Map ( D0=>N_54, D1=>D0, SD=>L, Z=>N_42 );
   I49 : fd1s3dx
      Port Map ( CD=>R, CK=>C, D=>N_102, Q=>Q11_DUMMY );
   I48 : fd1s3dx
      Port Map ( CD=>R, CK=>C, D=>N_26, Q=>Q13_DUMMY );
   I50 : fd1s3dx
      Port Map ( CD=>R, CK=>C, D=>N_31, Q=>Q12_DUMMY );
   I51 : fd1s3dx
      Port Map ( CD=>R, CK=>C, D=>N_42, Q=>Q10_DUMMY );

end SCHEMATIC;
