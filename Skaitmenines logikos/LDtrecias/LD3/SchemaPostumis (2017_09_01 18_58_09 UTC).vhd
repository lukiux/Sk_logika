-- VHDL model created from schematic SchemaPostumis.sch -- Apr 20 16:27:01 2016

library IEEE;
use IEEE.std_logic_1164.all;
library xp2;
use xp2.components.all;

entity SCHEMAPOSTUMIS is
      Port (      Q0 : Out   std_logic;
                  Q4 : Out   std_logic;
                  x4 : In    std_logic;
                  Q5 : Out   std_logic;
                  Q6 : Out   std_logic;
                  x5 : In    std_logic;
                  Q7 : Out   std_logic;
                  x6 : In    std_logic;
                  x7 : In    std_logic;
                  A1 : In    std_logic;
               reset : In    std_logic;
                  A0 : In    std_logic;
               clock : In    std_logic;
                  x1 : In    std_logic;
                  Q2 : Out   std_logic;
                  x2 : In    std_logic;
                  Q3 : Out   std_logic;
                  x3 : In    std_logic;
                  x0 : In    std_logic;
                  Q1 : Out   std_logic );

end SCHEMAPOSTUMIS;

architecture SCHEMATIC of SCHEMAPOSTUMIS is

   SIGNAL gnd : std_logic := '0';
   SIGNAL vcc : std_logic := '1';

   signal Q1_DUMMY : std_logic;
   signal     N_23 : std_logic;
   signal     N_22 : std_logic;
   signal Q3_DUMMY : std_logic;
   signal Q2_DUMMY : std_logic;
   signal     N_21 : std_logic;
   signal Q7_DUMMY : std_logic;
   signal Q6_DUMMY : std_logic;
   signal Q5_DUMMY : std_logic;
   signal Q4_DUMMY : std_logic;
   signal      N_1 : std_logic;
   signal      N_2 : std_logic;
   signal      N_3 : std_logic;
   signal      N_4 : std_logic;
   signal      N_5 : std_logic;
   signal Q0_DUMMY : std_logic;
   signal      N_8 : std_logic;
   signal     N_12 : std_logic;
   signal     N_13 : std_logic;
   signal     N_14 : std_logic;
   signal     N_15 : std_logic;
   signal     N_16 : std_logic;
   signal     N_17 : std_logic;
   signal     N_18 : std_logic;
   signal     N_19 : std_logic;

   component and2
      Port (       A : In    std_logic;
                   B : In    std_logic;
                   Z : Out   std_logic );
   end component;

   component vlo
      Port (       Z : Out   std_logic );
   end component;

   component fd1s3ax
      Port (      CK : In    std_logic;
                   D : In    std_logic;
                   Q : Out   std_logic );
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
   Q4 <= Q4_DUMMY;
   Q5 <= Q5_DUMMY;
   Q6 <= Q6_DUMMY;
   Q7 <= Q7_DUMMY;
   Q2 <= Q2_DUMMY;
   Q3 <= Q3_DUMMY;
   Q1 <= Q1_DUMMY;

   I35 : and2
      Port Map ( A=>N_21, B=>reset, Z=>N_12 );
   I36 : and2
      Port Map ( A=>N_5, B=>reset, Z=>N_22 );
   I37 : and2
      Port Map ( A=>N_3, B=>reset, Z=>N_4 );
   I38 : and2
      Port Map ( A=>N_1, B=>reset, Z=>N_2 );
   I39 : and2
      Port Map ( A=>N_17, B=>reset, Z=>N_16 );
   I40 : and2
      Port Map ( A=>N_19, B=>reset, Z=>N_18 );
   I41 : and2
      Port Map ( A=>N_14, B=>reset, Z=>N_15 );
   I42 : and2
      Port Map ( A=>N_13, B=>reset, Z=>N_8 );
   I43 : vlo
      Port Map ( Z=>N_23 );
   I12 : fd1s3ax
      Port Map ( CK=>clock, D=>N_2, Q=>Q3_DUMMY );
   I13 : fd1s3ax
      Port Map ( CK=>clock, D=>N_4, Q=>Q2_DUMMY );
   I14 : fd1s3ax
      Port Map ( CK=>clock, D=>N_22, Q=>Q1_DUMMY );
   I15 : fd1s3ax
      Port Map ( CK=>clock, D=>N_8, Q=>Q7_DUMMY );
   I16 : fd1s3ax
      Port Map ( CK=>clock, D=>N_16, Q=>Q4_DUMMY );
   I17 : fd1s3ax
      Port Map ( CK=>clock, D=>N_18, Q=>Q5_DUMMY );
   I18 : fd1s3ax
      Port Map ( CK=>clock, D=>N_15, Q=>Q6_DUMMY );
   I19 : fd1s3ax
      Port Map ( CK=>clock, D=>N_12, Q=>Q0_DUMMY );
   I26 : mux41
      Port Map ( D0=>x0, D1=>N_23, D2=>Q7_DUMMY, D3=>Q7_DUMMY, SD1=>A1,
                 SD2=>A0, Z=>N_21 );
   I20 : mux41
      Port Map ( D0=>x3, D1=>Q2_DUMMY, D2=>Q2_DUMMY, D3=>Q1_DUMMY,
                 SD1=>A1, SD2=>A0, Z=>N_1 );
   I21 : mux41
      Port Map ( D0=>x2, D1=>Q1_DUMMY, D2=>Q1_DUMMY, D3=>Q0_DUMMY,
                 SD1=>A1, SD2=>A0, Z=>N_3 );
   I22 : mux41
      Port Map ( D0=>x1, D1=>Q0_DUMMY, D2=>Q0_DUMMY, D3=>Q7_DUMMY,
                 SD1=>A1, SD2=>A0, Z=>N_5 );
   I23 : mux41
      Port Map ( D0=>x4, D1=>Q3_DUMMY, D2=>Q3_DUMMY, D3=>Q2_DUMMY,
                 SD1=>A1, SD2=>A0, Z=>N_17 );
   I24 : mux41
      Port Map ( D0=>x5, D1=>Q4_DUMMY, D2=>Q4_DUMMY, D3=>Q3_DUMMY,
                 SD1=>A1, SD2=>A0, Z=>N_19 );
   I25 : mux41
      Port Map ( D0=>x6, D1=>Q5_DUMMY, D2=>Q5_DUMMY, D3=>Q4_DUMMY,
                 SD1=>A1, SD2=>A0, Z=>N_14 );
   I27 : mux41
      Port Map ( D0=>x7, D1=>Q6_DUMMY, D2=>Q6_DUMMY, D3=>Q7_DUMMY,
                 SD1=>A1, SD2=>A0, Z=>N_13 );

end SCHEMATIC;
