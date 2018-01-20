library ieee;
use ieee.std_logic_1164.all;
library xp2;
use xp2.components.all;

	-- Add your library and packages declaration here ...

entity schemasr_tb is
end schemasr_tb;

architecture TB_ARCHITECTURE of schemasr_tb is
	-- Component declaration of the tested unit
	component schemasr
	port(
		x1 : in STD_LOGIC;
		x2 : in STD_LOGIC;
		x3 : in STD_LOGIC;
		x4 : in STD_LOGIC;
		reset : in STD_LOGIC;
		Q : out STD_LOGIC;
		nQ : out STD_LOGIC );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal x1 : STD_LOGIC;
	signal x2 : STD_LOGIC;
	signal x3 : STD_LOGIC;
	signal x4 : STD_LOGIC;
	signal reset : STD_LOGIC;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal Q : STD_LOGIC;
	signal nQ : STD_LOGIC;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : schemasr
		port map (
			x1 => x1,
			x2 => x2,
			x3 => x3,
			x4 => x4,
			reset => reset,
			Q => Q,
			nQ => nQ
		);

	-- Add your stimulus here ...
reset_proc: process begin
	reset <= '0';
	wait for 4 ns;
	reset <= '1';
	wait;
end process;
clock_proc: process begin
	x1 <= '0';
	wait for 10 ns;
	x1 <= '1';
	wait for 10 ns;
	x1 <= '0';
	wait for 10 ns;
	x1 <= '1';
	wait for 10 ns;
	x1 <= '0';
	wait for 50 ns;
end process;

test_proc: process begin
	x2 <= '0'; x3 <= '0'; x4 <= '0';   -- iraso 0
	wait for 20 ns;
	x2 <= '1'; x3 <= '1'; x4 <= '0';   -- iraso 1
	wait for 20 ns;
	x2 <= '1'; x3 <= '0'; x4 <= '1';   -- iraso 0
	wait for 20 ns;
	x2 <= '1'; x3 <= '1'; x4 <= '1';   -- iraso 1
	wait for 20 ns;
	x2 <= '0'; x3 <= '0'; x4 <= '0';   -- iraso 0
end process;
end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_schemasr of schemasr_tb is
	for TB_ARCHITECTURE
		for UUT : schemasr
			use entity work.schemasr(schematic);
		end for;
	end for;
end TESTBENCH_FOR_schemasr;

