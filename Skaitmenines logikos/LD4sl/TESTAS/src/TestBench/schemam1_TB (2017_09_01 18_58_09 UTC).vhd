library ieee;
use ieee.std_logic_1164.all;
library xp2;
use xp2.components.all;

	-- Add your library and packages declaration here ...

entity schemam1_tb is
end schemam1_tb;

architecture TB_ARCHITECTURE of schemam1_tb is
	-- Component declaration of the tested unit
	component schemam1
	port(
		B1 : in STD_LOGIC;
		B2 : in STD_LOGIC;
		B3 : in STD_LOGIC;
		B4 : in STD_LOGIC;
		C : in STD_LOGIC;
		L : in STD_LOGIC;
		R : in STD_LOGIC;
		Q0 : out STD_LOGIC;
		Q1 : out STD_LOGIC;
		Q2 : out STD_LOGIC;
		Q3 : out STD_LOGIC;
		p : out STD_LOGIC );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal B1 : STD_LOGIC;
	signal B2 : STD_LOGIC;
	signal B3 : STD_LOGIC;
	signal B4 : STD_LOGIC;
	signal C : STD_LOGIC;
	signal L : STD_LOGIC;
	signal R : STD_LOGIC;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal Q0 : STD_LOGIC;
	signal Q1 : STD_LOGIC;
	signal Q2 : STD_LOGIC;
	signal Q3 : STD_LOGIC;
	signal p : STD_LOGIC;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : schemam1
		port map (
			B1 => B1,
			B2 => B2,
			B3 => B3,
			B4 => B4,
			C => C,
			L => L,
			R => R,
			Q0 => Q0,
			Q1 => Q1,
			Q2 => Q2,
			Q3 => Q3,
			p => p
		);

	-- Add your stimulus here ...
Reset: process
begin
	R <= '1'; wait for 5 ns;
	R <= '0'; wait;
end process;
Sinchro: process
begin
	C <= '0'; wait for 5 ns;
	C <= '1'; wait for 5 ns;
end process;
Load: process
begin
	L <= '0'; wait for 80 ns;
	L <= '1'; wait for 10 ns;
	L <= '0'; wait for 120 ns;
end process;
Skaitikliai: process
begin
	B1 <= '0'; B2 <= '0'; B3 <= '0'; B4 <= '0'; wait for 200 ns;
end process;
end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_schemam1 of schemam1_tb is
	for TB_ARCHITECTURE
		for UUT : schemam1
			use entity work.schemam1(schematic);
		end for;
	end for;
end TESTBENCH_FOR_schemam1;

