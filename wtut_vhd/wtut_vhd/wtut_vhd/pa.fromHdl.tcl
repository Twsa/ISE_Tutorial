
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name wtut_vhd -dir "D:/GitHub/ISE_Tutorial/wtut_vhd/wtut_vhd/wtut_vhd/planAhead_run_2" -part xc3s700afg484-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "stopwatch.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {ipcore_dir/timer_preset.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {dcm1.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {debounce.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../time_cnt.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../statmach.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../lcd_control.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../clk_div_262k.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../stopwatch.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top stopwatch $srcset
add_files [list {stopwatch.ucf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/timer_preset.ncf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s700afg484-4
