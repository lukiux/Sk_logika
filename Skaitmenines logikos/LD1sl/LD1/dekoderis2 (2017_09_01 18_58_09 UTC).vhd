-- VHDL model created from schematic dekoderis2.sch -- Mar 01 11:11:09 2016

library IEEE;
use IEEE.std_logic_1164.all;
library xp2;
use xp2.components.all;

entity DEKODERIS2 is
      Port (      x1 : In    std_logic;
                  x2 : In    std_logic;
                  x3 : In    std_logic;
                  x4 : In    std_logic;
                  x5 : In    std_logic;
                  x6 : In    std_logic;
                   f : Out   std_logic );

end DEKODERIS2;

architecture SCHEMATIC of DEKODERIS2 is

   SIGNAL gnd : std_logic := '0';
   SIGNAL vcc : std_logic := '1';

   signal      N_1 : std_logic;
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

   component nd2
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

   component inv
      Port (       A : In    std_logic;
                   Z : Out   std_logic );
   end component;

begin

   I1 : nd2
      Port Map ( A=>N_14, B=>N_16, Z=>N_19 );
   I2 : nd2
      Port Map ( A=>N_6, B=>N_5, Z=>N_15 );
   I3 : nd2
      Port Map ( A=>N_8, B=>N_7, Z=>N_16 );
   I4 : nd3
      Port Map ( A=>N_3, B=>N_2, C=>N_1, Z=>N_4 );
   I5 : nd3
      Port Map ( A=>N_19, B=>N_18, C=>N_17, Z=>f );
   I6 : nd3
      Port Map ( A=>x1, B=>N_4, C=>x2, Z=>N_17 );
   I7 : nd3
      Port Map ( A=>N_14, B=>N_13, C=>N_15, Z=>N_18 );
   I8 : nd3
      Port Map ( A=>N_9, B=>N_12, C=>x5, Z=>N_6 );
   I9 : nd3
      Port Map ( A=>x4, B=>N_11, C=>x6, Z=>N_5 );
   I10 : nd3
      Port Map ( A=>N_9, B=>N_12, C=>x6, Z=>N_3 );
   I11 : nd3
      Port Map ( A=>N_9, B=>x5, C=>N_10, Z=>N_2 );
   I12 : nd3
      Port Map ( A=>x3, B=>x4, C=>x5, Z=>N_1 );
   I13 : nd3
      Port Map ( A=>x4, B=>x5, C=>N_10, Z=>N_7 );
   I14 : nd3
      Port Map ( A=>N_12, B=>N_11, C=>x6, Z=>N_8 );
   I15 : inv
      Port Map ( A=>x6, Z=>N_10 );
   I16 : inv
      Port Map ( A=>x5, Z=>N_11 );
   I17 : inv
      Port Map ( A=>x4, Z=>N_12 );
   I18 : inv
      Port Map ( A=>x3, Z=>N_9 );
   I19 : inv
      Port Map ( A=>x2, Z=>N_13 );
   I20 : inv
      Port Map ( A=>x1, Z=>N_14 );

end SCHEMATIC;
