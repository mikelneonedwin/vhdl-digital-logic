restart -force

vcom logic_gates.vhd
vcom logic_gates_tb.vhd

vsim work.logic_gates_tb

puts "a b c d e f g h i"

run 100 ms
examine sim:/logic_gates_tb/*

run 100 ms
examine sim:/logic_gates_tb/*

run 100 ms
examine sim:/logic_gates_tb/*

run 100 ms
examine sim:/logic_gates_tb/*
