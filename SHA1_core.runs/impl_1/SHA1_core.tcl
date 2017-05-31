proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7a100tcsg324-1
  set_property board_part digilentinc.com:nexys4:part0:1.1 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir C:/College/Thesis/VivadoProjects/SHA1_core/SHA1_core.cache/wt [current_project]
  set_property parent.project_path C:/College/Thesis/VivadoProjects/SHA1_core/SHA1_core.xpr [current_project]
  set_property ip_output_repo C:/College/Thesis/VivadoProjects/SHA1_core/SHA1_core.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  add_files -quiet C:/College/Thesis/VivadoProjects/SHA1_core/SHA1_core.runs/synth_1/SHA1_core.dcp
  link_design -top SHA1_core -part xc7a100tcsg324-1
  write_hwdef -file SHA1_core.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force SHA1_core_opt.dcp
  report_drc -file SHA1_core_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force SHA1_core_placed.dcp
  report_io -file SHA1_core_io_placed.rpt
  report_utilization -file SHA1_core_utilization_placed.rpt -pb SHA1_core_utilization_placed.pb
  report_control_sets -verbose -file SHA1_core_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force SHA1_core_routed.dcp
  report_drc -file SHA1_core_drc_routed.rpt -pb SHA1_core_drc_routed.pb -rpx SHA1_core_drc_routed.rpx
  report_methodology -file SHA1_core_methodology_drc_routed.rpt -rpx SHA1_core_methodology_drc_routed.rpx
  report_timing_summary -warn_on_violation -max_paths 10 -file SHA1_core_timing_summary_routed.rpt -rpx SHA1_core_timing_summary_routed.rpx
  report_power -file SHA1_core_power_routed.rpt -pb SHA1_core_power_summary_routed.pb -rpx SHA1_core_power_routed.rpx
  report_route_status -file SHA1_core_route_status.rpt -pb SHA1_core_route_status.pb
  report_clock_utilization -file SHA1_core_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force SHA1_core_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

