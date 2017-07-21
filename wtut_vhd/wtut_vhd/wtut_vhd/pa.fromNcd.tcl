
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name wtut_vhd -dir "D:/GitHub/ISE_Tutorial/wtut_vhd/wtut_vhd/wtut_vhd/planAhead_run_1" -part xc3s700afg484-4
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "D:/GitHub/ISE_Tutorial/wtut_vhd/wtut_vhd/wtut_vhd/stopwatch.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/GitHub/ISE_Tutorial/wtut_vhd/wtut_vhd/wtut_vhd} {ipcore_dir} }
add_files [list {ipcore_dir/timer_preset.ncf}] -fileset [get_property constrset [current_run]]
set_property target_constrs_file "stopwatch.ucf" [current_fileset -constrset]
add_files [list {stopwatch.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "D:/GitHub/ISE_Tutorial/wtut_vhd/wtut_vhd/wtut_vhd/stopwatch.ncd"
if {[catch {read_twx -name results_1 -file "D:/GitHub/ISE_Tutorial/wtut_vhd/wtut_vhd/wtut_vhd/stopwatch.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"D:/GitHub/ISE_Tutorial/wtut_vhd/wtut_vhd/wtut_vhd/stopwatch.twx\": $eInfo"
}
