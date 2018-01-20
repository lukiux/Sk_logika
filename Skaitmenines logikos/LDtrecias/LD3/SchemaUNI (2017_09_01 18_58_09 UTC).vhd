-- VHDL model created from schematic SchemaUNI.sch -- Apr 20 16:27:01 2016

library IEEE;
use IEEE.std_logic_1164.all;
library xp2;
use xp2.components.all;

entity SCHEMAUNI is
      Port (      DR : In    std_logic;
                  A0 : In    std_logic;
                  A1 : In    std_logic;
               reset : In    std_logic;
               clock : In    std_logic;
                  D7 : In    std_logic;
                  D4 : In    std_logic;
                  D1 : In    std_logic;
                  Q4 : Out   std_logic;
                  Q7 : Out   std_logic;
                  Q1 : Out   std_logic;
                  D3 : In    std_logic;
                  D6 : In    std_logic;
                  D0 : In    std_logic;
                  DL : In    std_logic;
                  Q6 : Out   std_logic;
                  Q3 : Out   std_logic;
                  D5 : In    std_logic;
                  D2 : In    std_logic;
                  Q0 : Out   std_logic;
                  Q5 : Out   std_logic;
                  Q2 : Out   std_logic );

end SCHEMAUNI;

architecture SCHEMATIC of SCHEMAUNI is

   SIGNAL gnd : std_logic := '0';
   SIGNAL vcc : std_logic := '1';

   signal Q2_DUMMY : std_logic;
   signal Q5_DUMMY : std_logic;
   signal Q0_DUMMY : std_logic;
   signal Q3_DUMMY : std_logic;
   signal Q6_DUMMY : std_logic;
   signal Q1_DUMMY : std_logic;
   signal Q7_DUMMY : std_logic;
   signal Q4_DUMMY : std_logic;
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

   component and2
      Port (       A : In    std_logic;
                   B : In    std_logic;
                   Z : Out   std_logic );
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

   Q4 <= Q4_DUMMY;
   Q7 <= Q7_DUMMY;
   Q1 <= Q1_DUMMY;
   Q6 <= Q6_DUMMY;
   Q3 <= Q3_DUMMY;
   Q0 <= Q0_DUMMY;
   Q5 <= Q5_DUMMY;
   Q2 <= Q2_DUMMY;

   I1 : and2
      Port Map ( A=>N_4, B=>reset, Z=>N_3 );
   I2 : and2
      Port Map ( A=>N_2, B=>reset, Z=>N_1 );
   I3 : and2
      Port Map ( A=>N_12, B=>reset, Z=>N_11 );
   I4 : and2
      Port Map ( A=>N_14, B=>reset, Z=>N_13 );
   I5 : and2
      Port Map ( A=>N_16, B=>reset, Z=>N_15 );
   I6 : and2
      Port Map ( A=>N_6, B=>reset, Z=>N_5 );
   I7 : and2
      Port Map ( A=>N_8, B=>reset, Z=>N_7 );
   I8 : and2
      Port Map ( A=>N_10, B=>reset, Z=>N_9 );
   I9 : fd1s3ax
      Port Map ( CK=>clock, D=>N_3, Q=>Q1_DUMMY );
   I10 : fd1s3ax
      Port Map ( CK=>clock, D=>N_1, Q=>Q0_DUMMY );
   I11 : fd1s3ax
      Port Map ( CK=>clock, D=>N_11, Q=>Q5_DUMMY );
   I12 : fd1s3ax
      Port Map ( CK=>clock, D=>N_13, Q=>Q6_DUMMY );
   I13 : fd1s3ax
      Port Map ( CK=>clock, D=>N_15, Q=>Q7_DUMMY );
   I14 : fd1s3ax
      Port Map ( CK=>clock, D=>N_5, Q=>Q2_DUMMY );
   I15 : fd1s3ax
      Port Map ( CK=>clock, D=>N_7, Q=>Q3_DUMMY );
   I16 : fd1s3ax
      Port Map ( CK=>clock, D=>N_9, Q=>Q4_DUMMY );
   I17 : mux41
      Port Map ( D0=>Q1_DUMMY, D1=>Q2_DUMMY, D2=>Q0_DUMMY, D3=>D1,
                 SD1=>A0, SD2=>A1, Z=>N_4 );
   I18 : mux41
      Port Map ( D0=>Q0_DUMMY, D1=>Q1_DUMMY, D2=>DL, D3=>D0, SD1=>A0,
                 SD2=>A1, Z=>N_2 );
   I19 : mux41
      Port Map ( D0=>Q5_DUMMY, D1=>Q6_DUMMY, D2=>Q4_DUMMY, D3=>D5,
                 SD1=>A0, SD2=>A1, Z=>N_12 );
   I20 : mux41
      Port Map ( D0=>Q6_DUMMY, D1=>Q7_DUMMY, D2=>Q5_DUMMY, D3=>D6,
                 SD1=>A0, SD2=>A1, Z=>N_14 );
   I21 : mux41
      Port Map ( D0=>Q7_DUMMY, D1=>DR, D2=>Q6_DUMMY, D3=>D7, SD1=>A0,
                 SD2=>A1, Z=>N_16 );
   I22 : mux41
      Port Map ( D0=>Q2_DUMMY, D1=>Q3_DUMMY, D2=>Q1_DUMMY, D3=>D2,
                 SD1=>A0, SD2=>A1, Z=>N_6 );
   I23 : mux41
      Port Map ( D0=>Q3_DUMMY, D1=>Q4_DUMMY, D2=>Q2_DUMMY, D3=>D3,
                 SD1=>A0, SD2=>A1, Z=>N_8 );
   I24 : mux41
      Port Map ( D0=>Q4_DUMMY, D1=>Q5_DUMMY, D2=>Q3_DUMMY, D3=>D4,
                 SD1=>A0, SD2=>A1, Z=>N_10 );

end SCHEMATIC;
