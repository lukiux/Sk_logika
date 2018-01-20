-- VHDL model created from schematic dekoderis.sch -- Mar 01 11:11:09 2016

library IEEE;
use IEEE.std_logic_1164.all;
library xp2;
use xp2.components.all;

entity DEKODERIS is
      Port (      x1 : In    std_logic;
                  x2 : In    std_logic;
                  x3 : In    std_logic;
                  x4 : In    std_logic;
                  x5 : In    std_logic;
                  x6 : In    std_logic;
                   f : Out   std_logic );

end DEKODERIS;

architecture SCHEMATIC of DEKODERIS is

   SIGNAL gnd : std_logic := '0';
   SIGNAL vcc : std_logic := '1';

   signal     N_20 : std_logic;
   signal      N_2 : std_logic;
   signal      N_3 : std_logic;
   signal      N_4 : std_logic;
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
   signal     N_15 : std_logic;
   signal     N_16 : std_logic;
   signal     N_17 : std_logic;
   signal     N_18 : std_logic;
   signal     N_19 : std_logic;

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

   component and2
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

   component inv
      Port (       A : In    std_logic;
                   Z : Out   std_logic );
   end component;

begin

   I19 : or3
      Port Map ( A=>N_19, B=>N_18, C=>N_17, Z=>f );
   I20 : or3
      Port Map ( A=>N_8, B=>N_9, C=>N_7, Z=>N_14 );
   I21 : or2
      Port Map ( A=>N_11, B=>N_10, Z=>N_15 );
   I22 : or2
      Port Map ( A=>N_13, B=>N_12, Z=>N_16 );
   I23 : and2
      Port Map ( A=>N_16, B=>N_3, Z=>N_19 );
   I24 : and3
      Port Map ( A=>x2, B=>x1, C=>N_14, Z=>N_17 );
   I25 : and3
      Port Map ( A=>N_3, B=>N_2, C=>N_15, Z=>N_18 );
   I26 : and3
      Port Map ( A=>N_20, B=>x5, C=>x4, Z=>N_13 );
   I27 : and3
      Port Map ( A=>x6, B=>N_6, C=>N_5, Z=>N_12 );
   I28 : and3
      Port Map ( A=>x6, B=>N_6, C=>x4, Z=>N_11 );
   I29 : and3
      Port Map ( A=>x5, B=>N_5, C=>N_4, Z=>N_10 );
   I30 : and3
      Port Map ( A=>N_20, B=>x5, C=>N_4, Z=>N_8 );
   I31 : and3
      Port Map ( A=>x6, B=>N_5, C=>N_4, Z=>N_9 );
   I32 : and3
      Port Map ( A=>x5, B=>x4, C=>x3, Z=>N_7 );
   I4 : inv
      Port Map ( A=>x6, Z=>N_20 );
   I5 : inv
      Port Map ( A=>x5, Z=>N_6 );
   I18 : inv
      Port Map ( A=>x4, Z=>N_5 );
   I1 : inv
      Port Map ( A=>x3, Z=>N_4 );
   I2 : inv
      Port Map ( A=>x2, Z=>N_2 );
   I3 : inv
      Port Map ( A=>x1, Z=>N_3 );

end SCHEMATIC;
