SetActiveLib -work
comp -include "C:\Users\Z585\Desktop\LD4sl\LD4\SchemaM.vhd" 
comp -include "$dsn\src\TestBench\schemam_TB.vhd" 
asim +access +r TESTBENCH_FOR_schemam 
wave 
wave -noreg R
wave -noreg L
wave -noreg C
wave -noreg D0
wave -noreg D1
wave -noreg D2
wave -noreg D3
wave -noreg Q0
wave -noreg Q2
wave -noreg Q3
wave -noreg Q1
wave -noreg p
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\schemam_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_schemam 
