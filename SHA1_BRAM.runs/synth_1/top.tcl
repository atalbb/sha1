# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/College/Thesis/VivadoProjects/SHA1_BRAM/SHA1_BRAM.cache/wt [current_project]
set_property parent.project_path C:/College/Thesis/VivadoProjects/SHA1_BRAM/SHA1_BRAM.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:nexys4:part0:1.1 [current_project]
set_property ip_output_repo c:/College/Thesis/VivadoProjects/SHA1_BRAM/SHA1_BRAM.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files C:/College/Thesis/VivadoProjects/SHA1_BRAM/hashin.coe
add_files c:/College/Thesis/VivadoProjects/SHA1_BRAM/56Msg.coe
add_files -quiet c:/College/Thesis/VivadoProjects/SHA1_BRAM/SHA1_BRAM.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0.dcp
set_property used_in_implementation false [get_files c:/College/Thesis/VivadoProjects/SHA1_BRAM/SHA1_BRAM.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0.dcp]
add_files -quiet C:/College/Thesis/VivadoProjects/SHA1_BRAM/SHA1_BRAM.srcs/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1.dcp
set_property used_in_implementation false [get_files C:/College/Thesis/VivadoProjects/SHA1_BRAM/SHA1_BRAM.srcs/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1.dcp]
read_verilog -library xil_defaultlib {
  C:/College/Thesis/VivadoProjects/SHA1_BRAM/SHA1_BRAM.srcs/sources_1/new/HashOut.v
  C:/College/Thesis/VivadoProjects/SHA1_BRAM/SHA1_BRAM.srcs/sources_1/new/SHA1Core.v
  C:/College/Thesis/VivadoProjects/SHA1_BRAM/SHA1_BRAM.srcs/sources_1/new/MsgIn.v
  C:/College/Thesis/VivadoProjects/SHA1_BRAM/SHA1_BRAM.srcs/sources_1/new/counter.v
  C:/College/Thesis/VivadoProjects/SHA1_BRAM/SHA1_BRAM.srcs/sources_1/new/HashIn.v
  C:/College/Thesis/VivadoProjects/SHA1_BRAM/SHA1_BRAM.srcs/sources_1/new/top.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top top -part xc7a100tcsg324-1


write_checkpoint -force -noxdef top.dcp

catch { report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb }
