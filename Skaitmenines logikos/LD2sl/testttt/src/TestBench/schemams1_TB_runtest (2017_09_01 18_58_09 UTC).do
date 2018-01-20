SetActiveLib -work
comp -include "C:\Users\Z585\Desktop\LD2sl\impl1\schemaMS1.vhd" 
comp -include "$dsn\src\TestBench\schemams1_TB.vhd" 
asim +access +r TESTBENCH_FOR_schemams1 
wave 
wave -noreg x1
wave -noreg x2
wave -noreg x3
wave -noreg x4
wave -noreg Q
wave -noreg nQ
wave -noreg reset
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\schemams1_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_schemams1 
