library ieee;
use ieee.std_logic_1164.all;
library xp2;
use xp2.components.all;

	-- Add your library and packages declaration here ...

entity schemapostumis_tb is
end schemapostumis_tb;

architecture TB_ARCHITECTURE of schemapostumis_tb is
	-- Component declaration of the tested unit
	component schemapostumis
	port(
		x0 : in STD_LOGIC;
		x1 : in STD_LOGIC;
		x2 : in STD_LOGIC;
		Q0 : out STD_LOGIC;
		Q1 : out STD_LOGIC;
		x3 : in STD_LOGIC;
		Q2 : out STD_LOGIC;
		Q3 : out STD_LOGIC;
		Q4 : out STD_LOGIC;
		x4 : in STD_LOGIC;
		Q5 : out STD_LOGIC;
		Q6 : out STD_LOGIC;
		x5 : in STD_LOGIC;
		Q7 : out STD_LOGIC;
		x6 : in STD_LOGIC;
		x7 : in STD_LOGIC;
		A1 : in STD_LOGIC;
		reset : in STD_LOGIC;
		A0 : in STD_LOGIC;
		clock : in STD_LOGIC );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal x0 : STD_LOGIC;
	signal x1 : STD_LOGIC;
	signal x2 : STD_LOGIC;
	signal x3 : STD_LOGIC;
	signal x4 : STD_LOGIC;
	signal x5 : STD_LOGIC;
	signal x6 : STD_LOGIC;
	signal x7 : STD_LOGIC;
	signal A1 : STD_LOGIC;
	signal reset : STD_LOGIC;
	signal A0 : STD_LOGIC;
	signal clock : STD_LOGIC;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal Q0 : STD_LOGIC;
	signal Q1 : STD_LOGIC;
	signal Q2 : STD_LOGIC;
	signal Q3 : STD_LOGIC;
	signal Q4 : STD_LOGIC;
	signal Q5 : STD_LOGIC;
	signal Q6 : STD_LOGIC;
	signal Q7 : STD_LOGIC;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : schemapostumis
		port map (
			x0 => x0,
			x1 => x1,
			x2 => x2,
			Q0 => Q0,
			Q1 => Q1,
			x3 => x3,
			Q2 => Q2,
			Q3 => Q3,
			Q4 => Q4,
			x4 => x4,
			Q5 => Q5,
			Q6 => Q6,
			x5 => x5,
			Q7 => Q7,
			x6 => x6,
			x7 => x7,
			A1 => A1,
			reset => reset,
			A0 => A0,
			clock => clock
		);

	-- Add your stimulus here ...
pradzia: process
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
	x7 <= '1'; x6 <= '0'; x5 <= '0'; x4 <= '0'; x3 <= '1'; x2 <= '0'; x1 <= '0'; x0 <= '1';
	A0 <= '0'; A1 <= '0'; wait for 10 ns;
	A1 <= '1'; A0 <= '0'; wait for 10 ns;
	A1 <= '1'; A0 <= '1'; wait for 10 ns;
	A1 <= '0'; A0 <= '0'; wait for 10 ns;
	A1 <= '0'; A0 <= '1'; wait for 10 ns;
end process;
end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_schemapostumis of schemapostumis_tb is
	for TB_ARCHITECTURE
		for UUT : schemapostumis
			use entity work.schemapostumis(schematic);
		end for;
	end for;
end TESTBENCH_FOR_schemapostumis;

