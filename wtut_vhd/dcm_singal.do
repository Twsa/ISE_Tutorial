onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /stopwatch_tb/clk
add wave -noupdate /stopwatch_tb/lap_load
add wave -noupdate /stopwatch_tb/mode
add wave -noupdate /stopwatch_tb/reset
add wave -noupdate /stopwatch_tb/strtstop
add wave -noupdate /stopwatch_tb/lcd_e
add wave -noupdate /stopwatch_tb/lcd_rs
add wave -noupdate /stopwatch_tb/lcd_rw
add wave -noupdate /stopwatch_tb/sf_d
add wave -noupdate /stopwatch_tb/UUT/Inst_dcm1/CLKIN_IN
add wave -noupdate /stopwatch_tb/UUT/Inst_dcm1/RST_IN
add wave -noupdate /stopwatch_tb/UUT/Inst_dcm1/CLKFX_OUT
add wave -noupdate /stopwatch_tb/UUT/Inst_dcm1/CLK0_OUT
add wave -noupdate /stopwatch_tb/UUT/Inst_dcm1/LOCKED_OUT
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 2} {388460 ps} 1} {{Cursor 3} {350000 ps} 1}
quietly wave cursor active 2
configure wave -namecolwidth 257
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {229930 ps} {572829 ps}
