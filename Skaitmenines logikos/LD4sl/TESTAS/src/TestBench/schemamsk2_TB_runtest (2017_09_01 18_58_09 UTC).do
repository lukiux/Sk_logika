SetActiveLib -work
comp -include "C:\Users\Z585\Desktop\LD4sl\LD4\SchemaMSK2.vhd" 
comp -include "$dsn\src\TestBench\schemamsk2_TB.vhd" 
asim +access +r TESTBENCH_FOR_schemamsk2 
wave 

wave -noreg R 
wave -noreg C  
wave -noreg Q23	
wave -noreg Q22
wave -noreg Q21
wave -noreg Q20	
wave -noreg Q13
wave -noreg Q12
wave -noreg Q11
wave -noreg Q10
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\schemamsk2_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_schemamsk2 
