onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider theOriginalColors
add wave -noupdate /ink_jet_decoder_tb/color2
add wave -noupdate /ink_jet_decoder_tb/color1
add wave -noupdate /ink_jet_decoder_tb/color0
add wave -noupdate -divider syntheticColors
add wave -noupdate /ink_jet_decoder_tb/black
add wave -noupdate /ink_jet_decoder_tb/cyan
add wave -noupdate /ink_jet_decoder_tb/megenta
add wave -noupdate /ink_jet_decoder_tb/yellow
add wave -noupdate /ink_jet_decoder_tb/light_cyan
add wave -noupdate /ink_jet_decoder_tb/light_megenta
add wave -noupdate -divider clk
add wave -noupdate /ink_jet_decoder_tb/clk
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {207777 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 148
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
configure wave -timelineunits ns
update
WaveRestoreZoom {65818 ps} {314633 ps}
