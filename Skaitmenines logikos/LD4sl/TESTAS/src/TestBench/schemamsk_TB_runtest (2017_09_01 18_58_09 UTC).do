SetActiveLib -work
comp -include "C:\Users\Z585\Desktop\LD4sl\LD4\SchemaMsk.vhd" 
comp -include "$dsn\src\TestBench\schemamsk_TB.vhd" 
asim +access +r TESTBENCH_FOR_schemamsk 
wave 

wave -noreg C
wave -noreg R
wave -noreg D0
wave -noreg D1
wave -noreg D2
wave -noreg D3
wave -noreg L
wave -noreg C
wave -noreg Q13
wave -noreg Q12
wave -noreg Q11	
wave -noreg Q10
wave -noreg p
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\schemamsk_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_schemamsk 
