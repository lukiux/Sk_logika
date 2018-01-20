setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/Users/Z585/Desktop/LD2sl/testttt/testttt.adf"]} { 
	design create testttt "C:/Users/Z585/Desktop/LD2sl"
  set newDesign 1
}
design open "C:/Users/Z585/Desktop/LD2sl/testttt"
cd "C:/Users/Z585/Desktop/LD2sl"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_xp2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/Users/Z585/Desktop/LD2sl/impl1/schemaSR.vhd"
addfile "C:/Users/Z585/Desktop/LD2sl/impl1/schemaMS1.vhd"
vlib "C:/Users/Z585/Desktop/LD2sl/testttt/work"
set worklib work
adel -all
vcom -dbg -work work "C:/Users/Z585/Desktop/LD2sl/impl1/schemaSR.vhd"
vcom -dbg -work work "C:/Users/Z585/Desktop/LD2sl/impl1/schemaMS1.vhd"
entity SCHEMASR
vsim  +access +r SCHEMASR   -PL pmi_work -L ovi_xp2
add wave *
run 1000ns
