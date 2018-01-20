-- VHDL model created from schematic schemaMS1.sch -- Apr 04 22:52:42 2016

library IEEE;
use IEEE.std_logic_1164.all;
library xp2;
use xp2.components.all;

entity SCHEMAMS1 is
      Port (      x1 : In    std_logic;
                  x2 : In    std_logic;
                  x3 : In    std_logic;
                  x4 : In    std_logic;
                   Q : Out   std_logic;
                  nQ : Out   std_logic;
               reset : In    std_logic );

end SCHEMAMS1;

architecture SCHEMATIC of SCHEMAMS1 is

   SIGNAL gnd : std_logic := '0';
   SIGNAL vcc : std_logic := '1';

   signal    Slave : std_logic;
   signal      N_7 : std_logic;
   signal   Master : std_logic;
   signal      N_6 : std_logic;
   signal      N_5 : std_logic;
   signal        C : std_logic;
   signal nQ_DUMMY : std_logic;
   signal  Q_DUMMY : std_logic;
   signal      N_1 : std_logic;
   signal      N_2 : std_logic;
   signal      N_4 : std_logic;

   component inv
      Port (       A : In    std_logic;
                   Z : Out   std_logic );
   end component;

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

   I1 : inv
      Port Map ( A=>x1, Z=>C );
   I2 : xor2
      Port Map ( A=>x2, B=>x4, Z=>N_1 );
   I3 : or2
      Port Map ( A=>N_1, B=>x3, Z=>Master );
   I4 : nd3
      Port Map ( A=>Slave, B=>N_2, C=>reset, Z=>N_7 );
   I5 : nd3
      Port Map ( A=>Q_DUMMY, B=>N_4, C=>reset, Z=>nQ_DUMMY );
   I6 : nd2
      Port Map ( A=>N_5, B=>x1, Z=>N_2 );
   I7 : nd2
      Port Map ( A=>Master, B=>x1, Z=>N_5 );
   I8 : nd2
      Port Map ( A=>N_5, B=>N_7, Z=>Slave );
   I9 : nd2
      Port Map ( A=>C, B=>Slave, Z=>N_6 );
   I10 : nd2
      Port Map ( A=>N_7, B=>C, Z=>N_4 );
   I11 : nd2
      Port Map ( A=>N_6, B=>nQ_DUMMY, Z=>Q_DUMMY );

end SCHEMATIC;
