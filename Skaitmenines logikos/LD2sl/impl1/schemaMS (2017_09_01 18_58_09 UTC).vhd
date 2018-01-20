-- VHDL model created from schematic schemaMS.sch -- Mar 29 12:46:56 2016

library IEEE;
use IEEE.std_logic_1164.all;
library xp2;
use xp2.components.all;

entity SCHEMAMS is
      Port (      x2 : In    std_logic;
                  x3 : In    std_logic;
                  x4 : In    std_logic;
               reset : In    std_logic;
                   Q : Out   std_logic;
                  nQ : Out   std_logic );

end SCHEMAMS;

architecture SCHEMATIC of SCHEMAMS is

   SIGNAL gnd : std_logic := '0';
   SIGNAL vcc : std_logic := '1';

   signal     N_22 : std_logic;
   signal       x1 : std_logic;
   signal     N_21 : std_logic;
   signal     N_20 : std_logic;
   signal     N_19 : std_logic;
   signal      M_R : std_logic;
   signal nQ_DUMMY : std_logic;
   signal  Q_DUMMY : std_logic;
   signal      S_R : std_logic;
   signal      S_S : std_logic;
   signal      M_S : std_logic;
   signal     N_11 : std_logic;
   signal     N_15 : std_logic;

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

   I3 : inv
      Port Map ( A=>M_R, Z=>N_22 );
   I2 : inv
      Port Map ( A=>x1, Z=>M_R );
   I4 : xor2
      Port Map ( A=>x2, B=>x4, Z=>N_21 );
   I5 : or2
      Port Map ( A=>N_21, B=>x3, Z=>M_S );
   I6 : nd3
      Port Map ( A=>S_S, B=>N_11, C=>reset, Z=>N_19 );
   I7 : nd3
      Port Map ( A=>Q_DUMMY, B=>N_15, C=>reset, Z=>nQ_DUMMY );
   I8 : nd2
      Port Map ( A=>M_R, B=>N_20, Z=>N_11 );
   I9 : nd2
      Port Map ( A=>M_S, B=>M_R, Z=>N_20 );
   I10 : nd2
      Port Map ( A=>N_20, B=>N_19, Z=>S_S );
   I11 : nd2
      Port Map ( A=>S_R, B=>N_22, Z=>N_15 );
   I12 : nd2
      Port Map ( A=>N_22, B=>S_S, Z=>S_R );
   I13 : nd2
      Port Map ( A=>S_R, B=>nQ_DUMMY, Z=>Q_DUMMY );

end SCHEMATIC;
