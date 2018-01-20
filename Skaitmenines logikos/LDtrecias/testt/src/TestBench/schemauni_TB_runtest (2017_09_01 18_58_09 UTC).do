SetActiveLib -work
comp -include "C:\Users\Z585\Desktop\LDtrecias\LD3\SchemaUNI.vhd" 
comp -include "$dsn\src\TestBench\schemauni_TB.vhd" 
asim +access +r TESTBENCH_FOR_schemauni 
wave 

wave -noreg reset
wave -noreg clock
wave -noreg D7
wave -noreg D4
wave -noreg D1
wave -noreg D3
wave -noreg D6
wave -noreg D0
wave -noreg DL
wave -noreg D5
wave -noreg D2
wave -noreg DR
wave -noreg A0
wave -noreg A1
wave -noreg Q0
wave -noreg Q1
wave -noreg Q2
wave -noreg Q3
wave -noreg Q4
wave -noreg Q5
wave -noreg Q6
wave -noreg Q7

# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\schemauni_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_schemauni 
