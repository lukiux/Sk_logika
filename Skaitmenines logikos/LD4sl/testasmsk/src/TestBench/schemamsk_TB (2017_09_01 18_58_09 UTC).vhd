library ieee;
use ieee.std_logic_1164.all;
library xp2;
use xp2.components.all;

	-- Add your library and packages declaration here ...

entity schemamsk_tb is
end schemamsk_tb;

architecture TB_ARCHITECTURE of schemamsk_tb is
	-- Component declaration of the tested unit
	component schemamsk
	port(
		Q10 : out STD_LOGIC;
		Q11 : out STD_LOGIC;
		Q12 : out STD_LOGIC;
		Q13 : out STD_LOGIC;
		C : in STD_LOGIC;
		Q20 : out STD_LOGIC;
		Q21 : out STD_LOGIC;
		Q22 : out STD_LOGIC;
		Q23 : out STD_LOGIC;
		R : in STD_LOGIC );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal C : STD_LOGIC;
	signal R : STD_LOGIC;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal Q10 : STD_LOGIC;
	signal Q11 : STD_LOGIC;
	signal Q12 : STD_LOGIC;
	signal Q13 : STD_LOGIC;
	signal Q20 : STD_LOGIC;
	signal Q21 : STD_LOGIC;
	signal Q22 : STD_LOGIC;
	signal Q23 : STD_LOGIC;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : schemamsk
		port map (
			Q10 => Q10,
			Q11 => Q11,
			Q12 => Q12,
			Q13 => Q13,
			C => C,
			Q20 => Q20,
			Q21 => Q21,
			Q22 => Q22,
			Q23 => Q23,
			R => R
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
end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_schemamsk of schemamsk_tb is
	for TB_ARCHITECTURE
		for UUT : schemamsk
			use entity work.schemamsk(schematic);
		end for;
	end for;
end TESTBENCH_FOR_schemamsk;

