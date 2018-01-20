-- VHDL model created from schematic dekoderis3.sch -- Mar 01 11:11:10 2016

library IEEE;
use IEEE.std_logic_1164.all;
library xp2;
use xp2.components.all;

entity DEKODERIS3 is
      Port (      x1 : In    std_logic;
                  x2 : In    std_logic;
                  x3 : In    std_logic;
                  x4 : In    std_logic;
                  x5 : In    std_logic;
                  x6 : In    std_logic;
                   f : Out   std_logic );

end DEKODERIS3;

architecture SCHEMATIC of DEKODERIS3 is

   SIGNAL gnd : std_logic := '0';
   SIGNAL vcc : std_logic := '1';

   signal     N_25 : std_logic;
   signal     N_11 : std_logic;
   signal     N_12 : std_logic;
   signal     N_13 : std_logic;
   signal     N_14 : std_logic;
   signal     N_15 : std_logic;
   signal     N_16 : std_logic;
   signal     N_17 : std_logic;
   signal     N_18 : std_logic;
   signal     N_21 : std_logic;
   signal     N_23 : std_logic;
   signal     N_24 : std_logic;
   signal      N_8 : std_logic;
   signal      N_9 : std_logic;
   signal     N_10 : std_logic;

   component vlo
      Port (       Z : Out   std_logic );
   end component;

   component inv
      Port (       A : In    std_logic;
                   Z : Out   std_logic );
   end component;

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

   component or4
      Port (       A : In    std_logic;
                   B : In    std_logic;
                   C : In    std_logic;
                   D : In    std_logic;
                   Z : Out   std_logic );
   end component;

   component and3
      Port (       A : In    std_logic;
                   B : In    std_logic;
                   C : In    std_logic;
                   Z : Out   std_logic );
   end component;

   component mux41
      Port (      D0 : In    std_logic;
                  D1 : In    std_logic;
                  D2 : In    std_logic;
                  D3 : In    std_logic;
                 SD1 : In    std_logic;
                 SD2 : In    std_logic;
                   Z : Out   std_logic );
   end component;

begin

   I16 : vlo
      Port Map ( Z=>N_25 );
   I12 : inv
      Port Map ( A=>x6, Z=>N_18 );
   I13 : inv
      Port Map ( A=>x5, Z=>N_23 );
   I14 : inv
      Port Map ( A=>x4, Z=>N_24 );
   I15 : inv
      Port Map ( A=>x3, Z=>N_21 );
   I2 : or3
      Port Map ( A=>N_13, B=>N_12, C=>N_11, Z=>N_8 );
   I3 : or2
      Port Map ( A=>N_17, B=>N_14, Z=>N_9 );
   I4 : or4
      Port Map ( A=>N_17, B=>N_16, C=>N_15, D=>N_14, Z=>N_10 );
   I5 : and3
      Port Map ( A=>x3, B=>x4, C=>x5, Z=>N_11 );
   I6 : and3
      Port Map ( A=>N_21, B=>N_18, C=>x5, Z=>N_12 );
   I7 : and3
      Port Map ( A=>N_21, B=>N_24, C=>x6, Z=>N_13 );
   I8 : and3
      Port Map ( A=>x4, B=>x5, C=>N_18, Z=>N_14 );
   I9 : and3
      Port Map ( A=>x4, B=>N_23, C=>x6, Z=>N_15 );
   I10 : and3
      Port Map ( A=>N_24, B=>N_21, C=>x5, Z=>N_16 );
   I11 : and3
      Port Map ( A=>N_24, B=>N_23, C=>x6, Z=>N_17 );
   I1 : mux41
      Port Map ( D0=>N_10, D1=>N_9, D2=>N_25, D3=>N_8, SD1=>x1, SD2=>x2,
                 Z=>f );

end SCHEMATIC;
