lappend auto_path "C:/lscc/diamond/3.6_x64/data/script"
package require simulation_generation
set ::bali::simulation::Para(PROJECT) {Testas}
set ::bali::simulation::Para(PROJECTPATH) {C:/Users/Z585/Desktop/LD4sl}
set ::bali::simulation::Para(FILELIST) {"C:/Users/Z585/Desktop/LD4sl/LD4/SchemaMsk.vhd" "C:/Users/Z585/Desktop/LD4sl/LD4/SchemaM1.vhd" "C:/Users/Z585/Desktop/LD4sl/LD4/SchemaMSK2.vhd" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "work" "work" }
set ::bali::simulation::Para(COMPLIST) {"VHDL" "VHDL" "VHDL" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_xp2}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {SCHEMAMSK}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {}
set ::bali::simulation::Para(LANGUAGE) {VHDL}
set ::bali::simulation::Para(SDFPATH)  {}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {1}
set ::bali::simulation::Para(RUNSIMULATION)  {0}
set ::bali::simulation::Para(HDLPARAMETERS) {}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
::bali::simulation::ActiveHDL_Run
