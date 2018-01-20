-- VHDL model created from schematic pvz.sch -- Apr 13 20:58:11 2016

library IEEE;
use IEEE.std_logic_1164.all;
library xp2;
use xp2.components.all;

entity PVZ is
      Port (      A0 : In    std_logic;
                  A1 : In    std_logic;
               reset : In    std_logic;
               clock : In    std_logic;
                  x0 : In    std_logic;
                  x4 : In    std_logic;
                  Q0 : Out   std_logic;
                  Q4 : Out   std_logic;
                  x1 : In    std_logic;
                  x5 : In    std_logic;
                  Q1 : Out   std_logic;
                  Q5 : Out   std_logic;
                  x2 : In    std_logic;
                  x6 : In    std_logic;
                  Q2 : Out   std_logic;
                  Q6 : Out   std_logic;
                  x3 : In    std_logic;
                  Q3 : Out   std_logic );

end PVZ;

architecture SCHEMATIC of PVZ is

   SIGNAL gnd : std_logic := '0';
   SIGNAL vcc : std_logic := '1';

   signal Q3_DUMMY : std_logic;
   signal Q2_DUMMY : std_logic;
   signal Q5_DUMMY : std_logic;
   signal Q1_DUMMY : std_logic;
   signal Q4_DUMMY : std_logic;
   signal Q0_DUMMY : std_logic;
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
   signal     N_20 : std_logic;
   signal     N_21 : std_logic;

   component nd2
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

   component vlo
      Port (       Z : Out   std_logic );
   end component;

begin

   Q0 <= Q0_DUMMY;
   Q4 <= Q4_DUMMY;
   Q1 <= Q1_DUMMY;
   Q5 <= Q5_DUMMY;
   Q2 <= Q2_DUMMY;
   Q3 <= Q3_DUMMY;

   I11 : nd2
      Port Map ( A=>N_20, B=>reset, Z=>N_16 );
   I9 : nd2
      Port Map ( A=>N_19, B=>reset, Z=>N_15 );
   I8 : nd2
      Port Map ( A=>N_18, B=>reset, Z=>N_14 );
   I4 : nd2
      Port Map ( A=>N_9, B=>reset, Z=>N_8 );
   I5 : nd2
      Port Map ( A=>N_7, B=>reset, Z=>N_6 );
   I6 : nd2
      Port Map ( A=>N_5, B=>reset, Z=>N_4 );
   I7 : nd2
      Port Map ( A=>N_17, B=>reset, Z=>N_13 );
   I10 : nd2
      Port Map ( A=>N_3, B=>reset, Z=>N_2 );
   I16 : fd1s3ax
      Port Map ( CK=>clock, D=>N_13, Q=>Q3_DUMMY );
   I14 : fd1s3ax
      Port Map ( CK=>clock, D=>N_4, Q=>Q6 );
   I13 : fd1s3ax
      Port Map ( CK=>clock, D=>N_6, Q=>Q5_DUMMY );
   I12 : fd1s3ax
      Port Map ( CK=>clock, D=>N_8, Q=>Q4_DUMMY );
   I17 : fd1s3ax
      Port Map ( CK=>clock, D=>N_14, Q=>Q2_DUMMY );
   I18 : fd1s3ax
      Port Map ( CK=>clock, D=>N_15, Q=>Q1_DUMMY );
   I15 : fd1s3ax
      Port Map ( CK=>clock, D=>N_16, Q=>Q0_DUMMY );
   I19 : fd1s3ax
      Port Map ( CK=>clock, D=>N_2, Q=>Q0_DUMMY );
   I27 : mux41
      Port Map ( D0=>x0, D1=>N_21, D2=>N_1, D3=>N_12, SD1=>A0, SD2=>A1,
                 Z=>N_20 );
   I25 : mux41
      Port Map ( D0=>x1, D1=>Q0_DUMMY, D2=>Q0_DUMMY, D3=>N_11, SD1=>A0,
                 SD2=>A1, Z=>N_19 );
   I24 : mux41
      Port Map ( D0=>x2, D1=>Q1_DUMMY, D2=>Q1_DUMMY, D3=>Q0_DUMMY,
                 SD1=>A0, SD2=>A1, Z=>N_18 );
   I23 : mux41
      Port Map ( D0=>x3, D1=>Q2_DUMMY, D2=>Q2_DUMMY, D3=>Q1_DUMMY,
                 SD1=>A0, SD2=>A1, Z=>N_17 );
   I20 : mux41
      Port Map ( D0=>x4, D1=>Q3_DUMMY, D2=>Q3_DUMMY, D3=>Q2_DUMMY,
                 SD1=>A0, SD2=>A1, Z=>N_9 );
   I21 : mux41
      Port Map ( D0=>x5, D1=>Q4_DUMMY, D2=>Q4_DUMMY, D3=>Q3_DUMMY,
                 SD1=>A0, SD2=>A1, Z=>N_7 );
   I22 : mux41
      Port Map ( D0=>x6, D1=>Q5_DUMMY, D2=>Q5_DUMMY, D3=>Q4_DUMMY,
                 SD1=>A0, SD2=>A1, Z=>N_5 );
   I26 : mux41
      Port Map ( D0=>x0, D1=>N_10, D2=>open, D3=>N_1, SD1=>A0, SD2=>A1,
                 Z=>N_3 );
   I2 : vlo
      Port Map ( Z=>N_21 );
   I3 : vlo
      Port Map ( Z=>N_12 );
   I1 : vlo
      Port Map ( Z=>N_11 );
   I28 : vlo
      Port Map ( Z=>N_10 );

end SCHEMATIC;
