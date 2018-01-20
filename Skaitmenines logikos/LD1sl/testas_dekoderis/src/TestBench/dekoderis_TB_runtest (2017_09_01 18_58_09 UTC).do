SetActiveLib -work
comp -include "C:\Users\Z585\Desktop\LD1\LD1\dekoderis.vhd" 
comp -include "$dsn\src\TestBench\dekoderis_TB.vhd" 
asim +access +r TESTBENCH_FOR_dekoderis 
wave 
wave -noreg x1
wave -noreg x2
wave -noreg x3
wave -noreg x4
wave -noreg x5
wave -noreg x6
wave -noreg f
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\dekoderis_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_dekoderis 
