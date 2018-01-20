-- VHDL model created from schematic SchemaPLIS.sch -- Apr 20 16:27:01 2016

library IEEE;
use IEEE.std_logic_1164.all;
library xp2;
use xp2.components.all;

entity SCHEMAPLIS is
      Port (      A0 : In    std_logic;
                  A1 : In    std_logic;
               reset : In    std_logic;
               clock : In    std_logic;
                  Q4 : Out   std_logic;
                  Q7 : Out   std_logic;
                  Q6 : Out   std_logic;
                  Q5 : Out   std_logic;
                  Q0 : Out   std_logic;
                  Q2 : Out   std_logic;
                  Q3 : Out   std_logic;
                  Q1 : Out   std_logic );

end SCHEMAPLIS;

architecture SCHEMATIC of SCHEMAPLIS is

   SIGNAL gnd : std_logic := '0';
   SIGNAL vcc : std_logic := '1';

   signal     N_40 : std_logic;
   signal     N_37 : std_logic;
   signal     N_38 : std_logic;
   signal     N_39 : std_logic;
   signal     N_35 : std_logic;
   signal     N_36 : std_logic;
   signal      N_2 : std_logic;
   signal      N_3 : std_logic;
   signal      N_4 : std_logic;
   signal      N_5 : std_logic;
   signal      N_7 : std_logic;
   signal      N_8 : std_logic;
   signal      N_9 : std_logic;
   signal     N_10 : std_logic;
   signal     N_12 : std_logic;
   signal     N_15 : std_logic;
   signal     N_16 : std_logic;
   signal     N_17 : std_logic;
   signal     N_18 : std_logic;
   signal     N_19 : std_logic;
   signal     N_22 : std_logic;
   signal     N_23 : std_logic;
   signal     N_24 : std_logic;
   signal     N_25 : std_logic;
   signal     N_26 : std_logic;
   signal     N_27 : std_logic;
   signal     N_28 : std_logic;
   signal     N_29 : std_logic;
   signal     N_30 : std_logic;
   signal     N_31 : std_logic;
   signal     N_32 : std_logic;
   signal     N_33 : std_logic;
   signal     N_34 : std_logic;

   component and2
      Port (       A : In    std_logic;
                   B : In    std_logic;
                   Z : Out   std_logic );
   end component;

   component vlo
      Port (       Z : Out   std_logic );
   end component;

   component inv
      Port (       A : In    std_logic;
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

   component vhi
      Port (       Z : Out   std_logic );
   end component;

begin

   I35 : and2
      Port Map ( A=>N_19, B=>reset, Z=>N_17 );
   I36 : and2
      Port Map ( A=>N_22, B=>reset, Z=>N_39 );
   I37 : and2
      Port Map ( A=>N_24, B=>reset, Z=>N_23 );
   I38 : and2
      Port Map ( A=>N_26, B=>reset, Z=>N_25 );
   I39 : and2
      Port Map ( A=>N_31, B=>reset, Z=>N_27 );
   I40 : and2
      Port Map ( A=>N_32, B=>reset, Z=>N_28 );
   I41 : and2
      Port Map ( A=>N_33, B=>reset, Z=>N_29 );
   I42 : and2
      Port Map ( A=>N_34, B=>reset, Z=>N_30 );
   I73 : vlo
      Port Map ( Z=>N_15 );
   I74 : vlo
      Port Map ( Z=>N_40 );
   I44 : vlo
      Port Map ( Z=>N_38 );
   I60 : vlo
      Port Map ( Z=>N_35 );
   I58 : vlo
      Port Map ( Z=>N_2 );
   I59 : vlo
      Port Map ( Z=>N_3 );
   I62 : vlo
      Port Map ( Z=>N_16 );
   I65 : inv
      Port Map ( A=>N_37, Z=>Q1 );
   I63 : inv
      Port Map ( A=>N_4, Z=>Q3 );
   I64 : inv
      Port Map ( A=>N_5, Z=>Q0 );
   I66 : inv
      Port Map ( A=>N_7, Z=>Q2 );
   I67 : inv
      Port Map ( A=>N_8, Z=>Q4 );
   I68 : inv
      Port Map ( A=>N_9, Z=>Q5 );
   I69 : inv
      Port Map ( A=>N_10, Z=>Q6 );
   I70 : inv
      Port Map ( A=>N_18, Z=>Q7 );
   I14 : fd1s3ax
      Port Map ( CK=>clock, D=>N_39, Q=>N_37 );
   I12 : fd1s3ax
      Port Map ( CK=>clock, D=>N_25, Q=>N_4 );
   I13 : fd1s3ax
      Port Map ( CK=>clock, D=>N_23, Q=>N_7 );
   I15 : fd1s3ax
      Port Map ( CK=>clock, D=>N_30, Q=>N_18 );
   I16 : fd1s3ax
      Port Map ( CK=>clock, D=>N_27, Q=>N_8 );
   I17 : fd1s3ax
      Port Map ( CK=>clock, D=>N_28, Q=>N_9 );
   I18 : fd1s3ax
      Port Map ( CK=>clock, D=>N_29, Q=>N_10 );
   I19 : fd1s3ax
      Port Map ( CK=>clock, D=>N_17, Q=>N_5 );
   I20 : mux41
      Port Map ( D0=>N_12, D1=>N_7, D2=>N_7, D3=>N_37, SD1=>A1, SD2=>A0,
                 Z=>N_26 );
   I21 : mux41
      Port Map ( D0=>N_3, D1=>N_37, D2=>N_37, D3=>N_5, SD1=>A1, SD2=>A0,
                 Z=>N_24 );
   I22 : mux41
      Port Map ( D0=>N_2, D1=>N_5, D2=>N_5, D3=>N_18, SD1=>A1, SD2=>A0,
                 Z=>N_22 );
   I23 : mux41
      Port Map ( D0=>N_35, D1=>N_4, D2=>N_4, D3=>N_7, SD1=>A1, SD2=>A0,
                 Z=>N_31 );
   I24 : mux41
      Port Map ( D0=>N_36, D1=>N_8, D2=>N_8, D3=>N_4, SD1=>A1, SD2=>A0,
                 Z=>N_32 );
   I25 : mux41
      Port Map ( D0=>N_15, D1=>N_9, D2=>N_9, D3=>N_8, SD1=>A1, SD2=>A0,
                 Z=>N_33 );
   I26 : mux41
      Port Map ( D0=>N_40, D1=>N_38, D2=>N_18, D3=>N_18, SD1=>A1,
                 SD2=>A0, Z=>N_19 );
   I27 : mux41
      Port Map ( D0=>N_16, D1=>N_10, D2=>N_10, D3=>N_18, SD1=>A1,
                 SD2=>A0, Z=>N_34 );
   I75 : vhi
      Port Map ( Z=>N_36 );
   I72 : vhi
      Port Map ( Z=>N_12 );

end SCHEMATIC;
