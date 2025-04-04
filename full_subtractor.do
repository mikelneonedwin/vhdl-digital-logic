vcom full_subtractor.vhd
vcom full_subtractor_tb.vhd

vsim work.full_subtractor_tb

puts "x y z d b"

run 100 ms
examine sim:/full_subtractor_tb/*

run 100 ms
examine sim:/full_subtractor_tb/*

run 100 ms
examine sim:/full_subtractor_tb/*

run 100 ms
examine sim:/full_subtractor_tb/*