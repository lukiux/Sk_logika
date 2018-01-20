-- VHDL model created from schematic SchemaM1.sch -- May 06 17:53:56 2016

library IEEE;
use IEEE.std_logic_1164.all;
library xp2;
use xp2.components.all;

entity SCHEMAM1 is
      Port (      B1 : In    std_logic;
                  B2 : In    std_logic;
                  B3 : In    std_logic;
                  B4 : In    std_logic;
                   C : In    std_logic;
                   L : In    std_logic;
                   R : In    std_logic;
                  Q0 : Out   std_logic;
                  Q1 : Out   std_logic;
                  Q2 : Out   std_logic;
                  Q3 : Out   std_logic;
                   p : Out   std_logic );

end SCHEMAM1;

architecture SCHEMATIC of SCHEMAM1 is

   SIGNAL gnd : std_logic := '0';
   SIGNAL vcc : std_logic := '1';

   signal     N_33 : std_logic;
   signal Q3_DUMMY : std_logic;
   signal Q2_DUMMY : std_logic;
   signal Q1_DUMMY : std_logic;
   signal Q0_DUMMY : std_logic;
   signal      N_2 : std_logic;
   signal      N_4 : std_logic;
   signal      N_5 : std_logic;
   signal      N_7 : std_logic;
   signal      N_8 : std_logic;
   signal      N_9 : std_logic;
   signal     N_10 : std_logic;
   signal     N_11 : std_logic;
   signal     N_12 : std_logic;
   signal     N_13 : std_logic;
   signal     N_15 : std_logic;
   signal     N_16 : std_logic;
   signal     N_17 : std_logic;
   signal     N_18 : std_logic;
   signal     N_20 : std_logic;
   signal     N_21 : std_logic;
   signal     N_22 : std_logic;
   signal     N_23 : std_logic;
   signal     N_24 : std_logic;
   signal     N_26 : std_logic;
   signal     N_27 : std_logic;
   signal     N_31 : std_logic;
   signal     N_32 : std_logic;

   component vlo
      Port (       Z : Out   std_logic );
   end component;

   component vhi
      Port (       Z : Out   std_logic );
   end component;

   component inv
      Port (       A : In    std_logic;
                   Z : Out   std_logic );
   end component;

   component fd1s3dx
      Port (      CD : In    std_logic;
                  CK : In    std_logic;
                   D : In    std_logic;
                   Q : Out   std_logic );
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

   Q0 <= Q0_DUMMY;
   Q1 <= Q1_DUMMY;
   Q2 <= Q2_DUMMY;
   Q3 <= Q3_DUMMY;

   I1 : vlo
      Port Map ( Z=>N_2 );
   I2 : vlo
      Port Map ( Z=>N_12 );
   I3 : vlo
      Port Map ( Z=>N_13 );
   I4 : vhi
      Port Map ( Z=>N_11 );
   I5 : vhi
      Port Map ( Z=>N_33 );
   I6 : inv
      Port Map ( A=>Q3_DUMMY, Z=>N_4 );
   I7 : inv
      Port Map ( A=>Q2_DUMMY, Z=>N_10 );
   I8 : inv
      Port Map ( A=>L, Z=>N_27 );
   I9 : fd1s3dx
      Port Map ( CD=>R, CK=>C, D=>N_7, Q=>Q3_DUMMY );
   I10 : fd1s3dx
      Port Map ( CD=>R, CK=>C, D=>N_16, Q=>Q2_DUMMY );
   I11 : fd1s3dx
      Port Map ( CD=>R, CK=>C, D=>N_20, Q=>Q1_DUMMY );
   I12 : fd1s3dx
      Port Map ( CD=>R, CK=>C, D=>N_24, Q=>Q0_DUMMY );
   I13 : or2
      Port Map ( A=>N_8, B=>N_5, Z=>N_7 );
   I14 : or2
      Port Map ( A=>N_17, B=>N_15, Z=>N_16 );
   I15 : or2
      Port Map ( A=>N_22, B=>N_21, Z=>N_20 );
   I16 : or2
      Port Map ( A=>N_26, B=>N_32, Z=>N_24 );
   I29 : and2
      Port Map ( A=>Q1_DUMMY, B=>Q3_DUMMY, Z=>p );
   I17 : and2
      Port Map ( A=>B4, B=>L, Z=>N_5 );
   I18 : and2
      Port Map ( A=>N_9, B=>N_27, Z=>N_8 );
   I19 : and2
      Port Map ( A=>B3, B=>L, Z=>N_15 );
   I20 : and2
      Port Map ( A=>N_18, B=>N_27, Z=>N_17 );
   I21 : and2
      Port Map ( A=>B2, B=>L, Z=>N_21 );
   I22 : and2
      Port Map ( A=>N_23, B=>N_27, Z=>N_22 );
   I23 : and2
      Port Map ( A=>B1, B=>L, Z=>N_32 );
   I24 : and2
      Port Map ( A=>N_31, B=>N_27, Z=>N_26 );
   I25 : mux41
      Port Map ( D0=>Q3_DUMMY, D1=>Q3_DUMMY, D2=>N_2, D3=>Q2_DUMMY,
                 SD1=>Q0_DUMMY, SD2=>Q1_DUMMY, Z=>N_9 );
   I26 : mux41
      Port Map ( D0=>Q2_DUMMY, D1=>Q2_DUMMY, D2=>Q2_DUMMY, D3=>N_10,
                 SD1=>Q0_DUMMY, SD2=>Q1_DUMMY, Z=>N_18 );
   I27 : mux41
      Port Map ( D0=>N_12, D1=>N_11, D2=>N_4, D3=>N_12, SD1=>Q0_DUMMY,
                 SD2=>Q1_DUMMY, Z=>N_23 );
   I28 : mux41
      Port Map ( D0=>N_33, D1=>N_13, D2=>N_4, D3=>N_13, SD1=>Q0_DUMMY,
                 SD2=>Q1_DUMMY, Z=>N_31 );

end SCHEMATIC;
