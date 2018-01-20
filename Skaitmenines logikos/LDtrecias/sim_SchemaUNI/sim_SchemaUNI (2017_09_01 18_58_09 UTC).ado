setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/Users/Z585/Desktop/LDtrecias/sim_SchemaUNI/sim_SchemaUNI.adf"]} { 
	design create sim_SchemaUNI "C:/Users/Z585/Desktop/LDtrecias"
  set newDesign 1
}
design open "C:/Users/Z585/Desktop/LDtrecias/sim_SchemaUNI"
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
addfile "C:/Users/Z585/Desktop/LDtrecias/LD3/SchemaUNI.vhd"
vlib "C:/Users/Z585/Desktop/LDtrecias/sim_SchemaUNI/work"
set worklib work
adel -all
vcom -dbg -work work "C:/Users/Z585/Desktop/LDtrecias/LD3/SchemaUNI.vhd"
vsim  +access +r    -PL pmi_work -L ovi_xp2
add wave *
