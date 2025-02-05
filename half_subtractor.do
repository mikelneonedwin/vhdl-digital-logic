vcom half_subtractor.vhd
vcom half_subtractor_tb.vhd

vsim work.half_subtractor_tb

puts "x y d b"

run 100 ms
examine sim:/half_subtractor_tb/*

run 100 ms
examine sim:/half_subtractor_tb/*

run 100 ms
examine sim:/half_subtractor_tb/*

run 100 ms
examine sim:/half_subtractor_tb/*