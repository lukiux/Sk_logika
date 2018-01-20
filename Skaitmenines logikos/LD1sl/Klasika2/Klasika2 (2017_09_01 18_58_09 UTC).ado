setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/Users/Z585/Desktop/LD1sl/Klasika2/Klasika2.adf"]} { 
	design create Klasika2 "C:/Users/Z585/Desktop/LD1sl"
  set newDesign 1
}
design open "C:/Users/Z585/Desktop/LD1sl/Klasika2"
cd "C:/Users/Z585/Desktop/LD1sl"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_xp2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/Users/Z585/Desktop/LD1sl/LD1/dekoderis.vhd"
vlib "C:/Users/Z585/Desktop/LD1sl/Klasika2/work"
set worklib work
adel -all
vcom -dbg -work work "C:/Users/Z585/Desktop/LD1sl/LD1/dekoderis.vhd"
entity DEKODERIS
vsim  +access +r DEKODERIS   -PL pmi_work -L ovi_xp2
add wave *
run 1000ns
