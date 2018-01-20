-- VHDL model created from schematic SchemaM.sch -- Apr 27 15:59:21 2016

library IEEE;
use IEEE.std_logic_1164.all;
library xp2;
use xp2.components.all;

entity SCHEMAM is
      Port (       R : In    std_logic;
                   L : In    std_logic;
                   C : In    std_logic;
                  D0 : In    std_logic;
                  D1 : In    std_logic;
                  D2 : In    std_logic;
                  D3 : In    std_logic;
                  Q0 : Out   std_logic;
                  Q2 : Out   std_logic;
                  Q3 : Out   std_logic;
                  Q1 : Out   std_logic;
                   p : Out   std_logic );

end SCHEMAM;

architecture SCHEMATIC of SCHEMAM is

   SIGNAL gnd : std_logic := '0';
   SIGNAL vcc : std_logic := '1';

   signal     N_50 : std_logic;
   signal     N_48 : std_logic;
   signal     N_49 : std_logic;
   signal     N_45 : std_logic;
   signal     N_46 : std_logic;
   signal     N_47 : std_logic;
   signal     N_42 : std_logic;
   signal     N_43 : std_logic;
   signal Q1_DUMMY : std_logic;
   signal Q3_DUMMY : std_logic;
   signal Q2_DUMMY : std_logic;
   signal Q0_DUMMY : std_logic;
   signal     N_32 : std_logic;
   signal     N_35 : std_logic;
   signal     N_40 : std_logic;
   signal      N_5 : std_logic;
   signal      N_8 : std_logic;
   signal     N_10 : std_logic;
   signal     N_11 : std_logic;
   signal     N_13 : std_logic;
   signal     N_17 : std_logic;
   signal     N_18 : std_logic;
   signal     N_22 : std_logic;

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

   component inv
      Port (       A : In    std_logic;
                   Z : Out   std_logic );
   end component;

   component and3
      Port (       A : In    std_logic;
                   B : In    std_logic;
                   C : In    std_logic;
                   Z : Out   std_logic );
   end component;

   component xor2
      Port (       A : In    std_logic;
                   B : In    std_logic;
                   Z : Out   std_logic );
   end component;

   component fd1s3dx
      Port (      CD : In    std_logic;
                  CK : In    std_logic;
                   D : In    std_logic;
                   Q : Out   std_logic );
   end component;

   component mux21
      Port (      D0 : In    std_logic;
                  D1 : In    std_logic;
                  SD : In    std_logic;
                   Z : Out   std_logic );
   end component;

begin

   Q0 <= Q0_DUMMY;
   Q2 <= Q2_DUMMY;
   Q3 <= Q3_DUMMY;
   Q1 <= Q1_DUMMY;

   I23 : or2
      Port Map ( A=>N_10, B=>N_42, Z=>N_13 );
   I24 : or2
      Port Map ( A=>N_45, B=>N_49, Z=>N_43 );
   I1 : or2
      Port Map ( A=>N_48, B=>N_32, Z=>N_5 );
   I26 : and2
      Port Map ( A=>N_46, B=>N_47, Z=>N_45 );
   I25 : and2
      Port Map ( A=>Q2_DUMMY, B=>N_11, Z=>N_42 );
   I22 : and2
      Port Map ( A=>Q3_DUMMY, B=>Q1_DUMMY, Z=>p );
   I4 : and2
      Port Map ( A=>Q0_DUMMY, B=>Q2_DUMMY, Z=>N_32 );
   I5 : and2
      Port Map ( A=>N_35, B=>N_50, Z=>N_11 );
   I27 : inv
      Port Map ( A=>Q3_DUMMY, Z=>N_47 );
   I10 : inv
      Port Map ( A=>Q0_DUMMY, Z=>N_50 );
   I8 : inv
      Port Map ( A=>Q2_DUMMY, Z=>N_8 );
   I9 : inv
      Port Map ( A=>Q1_DUMMY, Z=>N_35 );
   I28 : and3
      Port Map ( A=>Q3_DUMMY, B=>N_35, C=>N_50, Z=>N_48 );
   I12 : and3
      Port Map ( A=>N_35, B=>Q3_DUMMY, C=>N_50, Z=>N_49 );
   I11 : and3
      Port Map ( A=>N_8, B=>Q0_DUMMY, C=>Q1_DUMMY, Z=>N_10 );
   I13 : xor2
      Port Map ( A=>Q1_DUMMY, B=>Q0_DUMMY, Z=>N_46 );
   I14 : fd1s3dx
      Port Map ( CD=>R, CK=>C, D=>N_40, Q=>Q0_DUMMY );
   I15 : fd1s3dx
      Port Map ( CD=>R, CK=>C, D=>N_17, Q=>Q2_DUMMY );
   I16 : fd1s3dx
      Port Map ( CD=>R, CK=>C, D=>N_18, Q=>Q3_DUMMY );
   I17 : fd1s3dx
      Port Map ( CD=>R, CK=>C, D=>N_22, Q=>Q1_DUMMY );
   I18 : mux21
      Port Map ( D0=>N_50, D1=>D0, SD=>L, Z=>N_40 );
   I19 : mux21
      Port Map ( D0=>N_13, D1=>D2, SD=>L, Z=>N_17 );
   I20 : mux21
      Port Map ( D0=>N_5, D1=>D3, SD=>L, Z=>N_18 );
   I21 : mux21
      Port Map ( D0=>N_43, D1=>D1, SD=>L, Z=>N_22 );

end SCHEMATIC;
