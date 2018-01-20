setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "E:/LD1sl/testas/testas.adf"]} { 
	design create testas "E:/LD1sl"
  set newDesign 1
}
design open "E:/LD1sl/testas"
cd "E:/LD1sl"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_xp2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "E:/LD1sl/LD1/dekoderis.vhd"
addfile "E:/LD1sl/LD1/dekoderis2.vhd"
addfile "E:/LD1sl/LD1/dekoderis3.vhd"
vlib "E:/LD1sl/testas/work"
set worklib work
adel -all
vcom -dbg -work work "E:/LD1sl/LD1/dekoderis.vhd"
vcom -dbg -work work "E:/LD1sl/LD1/dekoderis2.vhd"
vcom -dbg -work work "E:/LD1sl/LD1/dekoderis3.vhd"
entity DEKODERIS
vsim  +access +r DEKODERIS   -PL pmi_work -L ovi_xp2
add wave *
run 1000ns
