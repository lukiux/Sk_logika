-- VHDL model created from schematic schemaSR.sch -- Apr 04 22:52:41 2016

library IEEE;
use IEEE.std_logic_1164.all;
library xp2;
use xp2.components.all;

entity SCHEMASR is
      Port (      x1 : In    std_logic;
                  x2 : In    std_logic;
                  x3 : In    std_logic;
                  x4 : In    std_logic;
               reset : In    std_logic;
                   Q : Out   std_logic;
                  nQ : Out   std_logic );

end SCHEMASR;

architecture SCHEMATIC of SCHEMASR is

   SIGNAL gnd : std_logic := '0';
   SIGNAL vcc : std_logic := '1';

   signal        D : std_logic;
   signal nQ_DUMMY : std_logic;
   signal  Q_DUMMY : std_logic;
   signal      N_1 : std_logic;
   signal      N_2 : std_logic;
   signal      N_3 : std_logic;

   component xor2
      Port (       A : In    std_logic;
                   B : In    std_logic;
                   Z : Out   std_logic );
   end component;

   component or2
      Port (       A : In    std_logic;
                   B : In    std_logic;
                   Z : Out   std_logic );
   end component;

   component nd3
      Port (       A : In    std_logic;
                   B : In    std_logic;
                   C : In    std_logic;
                   Z : Out   std_logic );
   end component;

   component nd2
      Port (       A : In    std_logic;
                   B : In    std_logic;
                   Z : Out   std_logic );
   end component;

begin

   Q <= Q_DUMMY;
   nQ <= nQ_DUMMY;

   I2 : xor2
      Port Map ( A=>x2, B=>x4, Z=>N_1 );
   I3 : or2
      Port Map ( A=>N_1, B=>x3, Z=>D );
   I5 : nd3
      Port Map ( A=>Q_DUMMY, B=>N_3, C=>reset, Z=>nQ_DUMMY );
   I6 : nd2
      Port Map ( A=>x1, B=>N_2, Z=>N_3 );
   I7 : nd2
      Port Map ( A=>D, B=>x1, Z=>N_2 );
   I8 : nd2
      Port Map ( A=>N_2, B=>nQ_DUMMY, Z=>Q_DUMMY );

end SCHEMATIC;
