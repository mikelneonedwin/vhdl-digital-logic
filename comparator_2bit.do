vcom comparator_2bit.vhd
vcom comparator_2bit_tb.vhd

vsim work.comparator_2bit_tb

puts "a b a_greater_b a_equal_b a_less_b"

run 100 ms
examine sim:/comparator_2bit_tb/*

run 100 ms
examine sim:/comparator_2bit_tb/*

run 100 ms
examine sim:/comparator_2bit_tb/*

run 100 ms
examine sim:/comparator_2bit_tb/*
