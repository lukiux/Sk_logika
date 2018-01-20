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
		R : in STD_LOGIC;
		D0 : in STD_LOGIC;
		D1 : in STD_LOGIC;
		D2 : in STD_LOGIC;
		D3 : in STD_LOGIC;
		L : in STD_LOGIC;
		p : out STD_LOGIC );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal C : STD_LOGIC;
	signal R : STD_LOGIC;
	signal D0 : STD_LOGIC;
	signal D1 : STD_LOGIC;
	signal D2 : STD_LOGIC;
	signal D3 : STD_LOGIC;
	signal L : STD_LOGIC;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal Q10 : STD_LOGIC;
	signal Q11 : STD_LOGIC;
	signal Q12 : STD_LOGIC;
	signal Q13 : STD_LOGIC;
	signal p : STD_LOGIC;

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
			R => R,
			D0 => D0,
			D1 => D1,
			D2 => D2,
			D3 => D3,
			L => L,
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
Skai: process
begin
	D0 <= '0'; D1 <= '0'; D2 <= '0'; D3 <= '0';	 wait;
end process;
end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_schemamsk of schemamsk_tb is
	for TB_ARCHITECTURE
		for UUT : schemamsk
			use entity work.schemamsk(schematic);
		end for;
	end for;
end TESTBENCH_FOR_schemamsk;

