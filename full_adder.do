vcom full_adder.vhd
vcom full_adder_tb.vhd

vsim work.full_adder_tb

puts "x y z s c"

run 100 ms
examine sim:/full_adder_tb/*

run 100 ms
examine sim:/full_adder_tb/*

run 100 ms
examine sim:/full_adder_tb/*

run 100 ms
examine sim:/full_adder_tb/*
