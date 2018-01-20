setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/Users/Z585/Desktop/LD4sl/testasmsk/testasmsk.adf"]} { 
	design create testasmsk "C:/Users/Z585/Desktop/LD4sl"
  set newDesign 1
}
design open "C:/Users/Z585/Desktop/LD4sl/testasmsk"
cd "C:/Users/Z585/Desktop/LD4sl"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_xp2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/Users/Z585/Desktop/LD4sl/LD4/SchemaM1.vhd"
addfile "C:/Users/Z585/Desktop/LD4sl/LD4/SchemaMsk.vhd"
vlib "C:/Users/Z585/Desktop/LD4sl/testasmsk/work"
set worklib work
adel -all
vcom -dbg -work work "C:/Users/Z585/Desktop/LD4sl/LD4/SchemaM1.vhd"
vcom -dbg -work work "C:/Users/Z585/Desktop/LD4sl/LD4/SchemaMsk.vhd"
entity SCHEMAM1
vsim  +access +r SCHEMAM1   -PL pmi_work -L ovi_xp2
add wave *
