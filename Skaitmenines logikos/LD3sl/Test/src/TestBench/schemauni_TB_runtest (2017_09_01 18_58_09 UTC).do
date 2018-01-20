setactivelib -work
#Compiling UUT module design files
comp -include C:\Users\Z585\Desktop\LD3sl\LD3\SchemaUNI.v
comp -include "$dsn\src\TestBench\SchemaUNI_TB.v"
asim +access +r SchemaUNI_tb

wave
wave -noreg A0
wave -noreg A1
wave -noreg clock
wave -noreg D0
wave -noreg D1
wave -noreg D2
wave -noreg D3
wave -noreg D4
wave -noreg D5
wave -noreg D6
wave -noreg D7
wave -noreg DL
wave -noreg DR
wave -noreg Q0
wave -noreg Q1
wave -noreg Q2
wave -noreg Q3
wave -noreg Q4
wave -noreg Q5
wave -noreg Q6
wave -noreg Q7
wave -noreg reset

run

#End simulation macro
