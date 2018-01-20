library ieee;
use ieee.std_logic_1164.all;
library xp2;
use xp2.components.all;

	-- Add your library and packages declaration here ...

entity schemam_tb is
end schemam_tb;

architecture TB_ARCHITECTURE of schemam_tb is
	-- Component declaration of the tested unit
	component schemam
	port(
		R : in STD_LOGIC;
		L : in STD_LOGIC;
		C : in STD_LOGIC;
		D0 : in STD_LOGIC;
		D1 : in STD_LOGIC;
		D2 : in STD_LOGIC;
		D3 : in STD_LOGIC;
		Q0 : out STD_LOGIC;
		Q2 : out STD_LOGIC;
		Q3 : out STD_LOGIC;
		Q1 : out STD_LOGIC;
		p : out STD_LOGIC );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal R : STD_LOGIC;
	signal L : STD_LOGIC;
	signal C : STD_LOGIC;
	signal D0 : STD_LOGIC;
	signal D1 : STD_LOGIC;
	signal D2 : STD_LOGIC;
	signal D3 : STD_LOGIC;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal Q0 : STD_LOGIC;
	signal Q2 : STD_LOGIC;
	signal Q3 : STD_LOGIC;
	signal Q1 : STD_LOGIC;
	signal p : STD_LOGIC;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : schemam
		port map (
			R => R,
			L => L,
			C => C,
			D0 => D0,
			D1 => D1,
			D2 => D2,
			D3 => D3,
			Q0 => Q0,
			Q2 => Q2,
			Q3 => Q3,
			Q1 => Q1,
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
	L <= '0'; wait;
	-- L <= '1'; wait for 10 ns;
end process;
Skaitikliai: process
begin
	D0 <= '0'; D1 <= '0'; D2 <= '0'; D3 <= '0'; wait for 200 ns;
end process;
end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_schemam of schemam_tb is
	for TB_ARCHITECTURE
		for UUT : schemam
			use entity work.schemam(schematic);
		end for;
	end for;
end TESTBENCH_FOR_schemam;

