setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/Users/Z585/Desktop/LDtrecias/Test1/Test1.adf"]} { 
	design create Test1 "C:/Users/Z585/Desktop/LDtrecias"
  set newDesign 1
}
design open "C:/Users/Z585/Desktop/LDtrecias/Test1"
cd "C:/Users/Z585/Desktop/LDtrecias"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_xp2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/Users/Z585/Desktop/LDtrecias/LD3/SchemaUNI.v"
vlib "C:/Users/Z585/Desktop/LDtrecias/Test1/work"
set worklib work
adel -all
vlog -dbg -work work "C:/Users/Z585/Desktop/LDtrecias/LD3/SchemaUNI.v"
module SchemaUNI
vsim  +access +r SchemaUNI   -PL pmi_work -L ovi_xp2
add wave *
run 1000ns
