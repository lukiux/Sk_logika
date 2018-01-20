library ieee;
use ieee.std_logic_1164.all;
library xp2;
use xp2.components.all;

	-- Add your library and packages declaration here ...

entity schemauni_tb is
end schemauni_tb;

architecture TB_ARCHITECTURE of schemauni_tb is
	-- Component declaration of the tested unit
	component schemauni
	port(
		DR : in STD_LOGIC;
		A0 : in STD_LOGIC;
		A1 : in STD_LOGIC;
		reset : in STD_LOGIC;
		clock : in STD_LOGIC;
		D7 : in STD_LOGIC;
		D4 : in STD_LOGIC;
		D1 : in STD_LOGIC;
		Q4 : out STD_LOGIC;
		Q7 : out STD_LOGIC;
		Q1 : out STD_LOGIC;
		D3 : in STD_LOGIC;
		D6 : in STD_LOGIC;
		D0 : in STD_LOGIC;
		DL : in STD_LOGIC;
		Q6 : out STD_LOGIC;
		Q3 : out STD_LOGIC;
		D5 : in STD_LOGIC;
		D2 : in STD_LOGIC;
		Q0 : out STD_LOGIC;
		Q5 : out STD_LOGIC;
		Q2 : out STD_LOGIC );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal DR : STD_LOGIC;
	signal A0 : STD_LOGIC;
	signal A1 : STD_LOGIC;
	signal reset : STD_LOGIC;
	signal clock : STD_LOGIC;
	signal D7 : STD_LOGIC;
	signal D4 : STD_LOGIC;
	signal D1 : STD_LOGIC;
	signal D3 : STD_LOGIC;
	signal D6 : STD_LOGIC;
	signal D0 : STD_LOGIC;
	signal DL : STD_LOGIC;
	signal D5 : STD_LOGIC;
	signal D2 : STD_LOGIC;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal Q4 : STD_LOGIC;
	signal Q7 : STD_LOGIC;
	signal Q1 : STD_LOGIC;
	signal Q6 : STD_LOGIC;
	signal Q3 : STD_LOGIC;
	signal Q0 : STD_LOGIC;
	signal Q5 : STD_LOGIC;
	signal Q2 : STD_LOGIC;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : schemauni
		port map (
			DR => DR,
			A0 => A0,
			A1 => A1,
			reset => reset,
			clock => clock,
			D7 => D7,
			D4 => D4,
			D1 => D1,
			Q4 => Q4,
			Q7 => Q7,
			Q1 => Q1,
			D3 => D3,
			D6 => D6,
			D0 => D0,
			DL => DL,
			Q6 => Q6,
			Q3 => Q3,
			D5 => D5,
			D2 => D2,
			Q0 => Q0,
			Q5 => Q5,
			Q2 => Q2
		);

	-- Add your stimulus here ...
pradia: process
begin
	reset <= '0';
	wait for 3 ns;
	reset <= '1';
	wait;
end process;
sincro: process
begin
	clock <= '0';
	wait for 5 ns;
	clock <= '1';
	wait for 5 ns;
end process;
Postûmiai: process
begin
	DL <= '0'; DR <= '0';
	D7 <= '1'; D6 <= '0'; D5 <= '0'; D4 <= '0'; D3 <= '1'; D2 <= '0'; D1 <= '0'; D0 <= '1'; -- stumdomas þodis
	--------------------------------------------------------------
	A1 <= '1'; A0 <= '1'; wait for 10 ns;		-- áraðome
	A1 <= '0'; A0 <= '0'; wait for 10 ns;		-- saugome	
	DR <= '0'; A1 <= '0'; A0 <= '1'; wait for 10 ns; -- á deðinæ
	DR <= '1'; A1 <= '0'; A0 <= '1'; wait for 10 ns; -- á deðinæ
	DR <= '1'; A1 <= '0'; A0 <= '1'; wait for 10 ns; -- á deðinæ
	DR <= '0'; A1 <= '0'; A0 <= '1'; wait for 10 ns; -- á deðinæ
	DR <= '0'; A1 <= '0'; A0 <= '1'; wait for 10 ns; -- á deðinæ
	A1 <= '0'; A0 <= '0'; wait for 10 ns;		-- saugome-
	--------------------------------------------------------------
	A1 <= '1'; A1 <= '0'; wait for 10 ns;		-- áraðome
	DL <= '0'; A1 <= '1'; A0 <= '0'; wait for 10 ns; -- á kairæ
	DL <= '0'; A1 <= '1'; A0 <= '0'; wait for 10 ns; -- á kairæ
	DL <= '1'; A1 <= '1'; A0 <= '0'; wait for 10 ns; -- á kairæ
	DL <= '1'; A1 <= '1'; A0 <= '0'; wait for 10 ns; -- á kairæ
	DL <= '0'; A1 <= '1'; A0 <= '0'; wait for 10 ns; -- á kairæ
	A1 <= '0'; A0 <= '0'; wait for 10 ns;		-- saugome
end process;	
end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_schemauni of schemauni_tb is
	for TB_ARCHITECTURE
		for UUT : schemauni
			use entity work.schemauni(schematic);
		end for;
	end for;
end TESTBENCH_FOR_schemauni;

