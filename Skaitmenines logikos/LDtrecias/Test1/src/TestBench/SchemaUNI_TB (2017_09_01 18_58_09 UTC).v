//-----------------------------------------------------------------------------
//
// Title       : SchemaUNI_tb
// Design      : Test1
// Author      : MarekNowak
// Company     : ALDEC
//
//-----------------------------------------------------------------------------
//
// File        : SchemaUNI_TB.v
// Generated   : Sat Apr  9 17:26:28 2016
// From        : C:\Users\Z585\Desktop\LDtrecias\Test1\src\TestBench\SchemaUNI_TB_settings.txt
// By          : tb_verilog.pl ver. ver 1.2s
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps
module SchemaUNI_tb;


//Internal signals declarations:
reg A0;
reg A1;
reg clock;
reg D0;
reg D1;
reg D2;
reg D3;
reg D4;
reg D5;
reg D6;
reg D7;
reg DL;
reg DR;
wire Q0;
wire Q1;
wire Q2;
wire Q3;
wire Q4;
wire Q5;
wire Q6;
wire Q7;
reg reset;



// Unit Under Test port map
	SchemaUNI UUT (
		.A0(A0),
		.A1(A1),
		.clock(clock),
		.D0(D0),
		.D1(D1),
		.D2(D2),
		.D3(D3),
		.D4(D4),
		.D5(D5),
		.D6(D6),
		.D7(D7),
		.DL(DL),
		.DR(DR),
		.Q0(Q0),
		.Q1(Q1),
		.Q2(Q2),
		.Q3(Q3),
		.Q4(Q4),
		.Q5(Q5),
		.Q6(Q6),
		.Q7(Q7),
		.reset(reset));

initial
	$monitor($realtime,,"ps %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h ",A0,A1,clock,D0,D1,D2,D3,D4,D5,D6,D7,DL,DR,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,reset);

endmodule
