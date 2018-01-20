SetActiveLib -work
comp -include "C:\Users\Z585\Desktop\LD4sl\LD4\SchemaM1.vhd" 
comp -include "$dsn\src\TestBench\schemam1_TB.vhd" 
asim +access +r TESTBENCH_FOR_schemam1 
wave 
wave -noreg B1
wave -noreg B2
wave -noreg B3
wave -noreg B4
wave -noreg C
wave -noreg L
wave -noreg R
wave -noreg Q0
wave -noreg Q1
wave -noreg Q2
wave -noreg Q3
wave -noreg p
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\schemam1_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_schemam1 
