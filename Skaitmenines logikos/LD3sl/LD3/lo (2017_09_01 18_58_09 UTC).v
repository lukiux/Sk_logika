/* Verilog model created from schematic lo.sch -- Apr 09, 2016 00:58 */

module lo( A0, A1, clock, D0, D1, D2, D3, D4, D5, D6, D7, DL, DR, Q0, Q1, Q2,
           Q3, Q4, Q5, Q6, Q7, reset );
 input A0;
 input A1;
 input clock;
 input D0;
 input D1;
 input D2;
 input D3;
 input D4;
 input D5;
 input D6;
 input D7;
 input DL;
 input DR;
output Q0;
output Q1;
output Q2;
output Q3;
output Q4;
output Q5;
output Q6;
output Q7;
 input reset;
wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;
wire N_9;
wire N_10;
wire N_11;
wire N_12;
wire N_13;
wire N_14;
wire N_15;
wire N_16;



AND2 I1 ( .A(N_4), .B(reset), .Z(N_3) );
AND2 I2 ( .A(N_2), .B(reset), .Z(N_1) );
AND2 I3 ( .A(N_12), .B(reset), .Z(N_11) );
AND2 I4 ( .A(N_14), .B(reset), .Z(N_13) );
AND2 I5 ( .A(N_16), .B(reset), .Z(N_15) );
AND2 I6 ( .A(N_6), .B(reset), .Z(N_5) );
AND2 I7 ( .A(N_8), .B(reset), .Z(N_7) );
AND2 I8 ( .A(N_10), .B(reset), .Z(N_9) );
FD1S3AX I9 ( .CK(clock), .D(N_3), .Q(Q1) );
FD1S3AX I10 ( .CK(clock), .D(N_1), .Q(Q0) );
FD1S3AX I11 ( .CK(clock), .D(N_11), .Q(Q5) );
FD1S3AX I12 ( .CK(clock), .D(N_13), .Q(Q6) );
FD1S3AX I13 ( .CK(clock), .D(N_15), .Q(Q7) );
FD1S3AX I14 ( .CK(clock), .D(N_5), .Q(Q2) );
FD1S3AX I15 ( .CK(clock), .D(N_7), .Q(Q3) );
FD1S3AX I16 ( .CK(clock), .D(N_9), .Q(Q4) );
MUX41 I17 ( .D0(Q1), .D1(Q2), .D2(Q0), .D3(D1), .SD1(A0), .SD2(A1), .Z(N_4) );
MUX41 I18 ( .D0(Q0), .D1(Q1), .D2(DL), .D3(D0), .SD1(A0), .SD2(A1), .Z(N_2) );
MUX41 I19 ( .D0(Q5), .D1(Q6), .D2(Q4), .D3(D5), .SD1(A0), .SD2(A1), .Z(N_12) );
MUX41 I20 ( .D0(Q6), .D1(Q7), .D2(Q5), .D3(D6), .SD1(A0), .SD2(A1), .Z(N_14) );
MUX41 I21 ( .D0(Q7), .D1(DR), .D2(Q6), .D3(D7), .SD1(A0), .SD2(A1), .Z(N_16) );
MUX41 I22 ( .D0(Q2), .D1(Q3), .D2(Q1), .D3(D2), .SD1(A0), .SD2(A1), .Z(N_6) );
MUX41 I23 ( .D0(Q3), .D1(Q4), .D2(Q2), .D3(D3), .SD1(A0), .SD2(A1), .Z(N_8) );
MUX41 I24 ( .D0(Q4), .D1(Q5), .D2(Q3), .D3(D4), .SD1(A0), .SD2(A1), .Z(N_10) );

endmodule // lo
