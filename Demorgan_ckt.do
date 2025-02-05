vcom Demorgan_ckt.vhd
vcom Demorgan_ckt_tb.vhd

vsim work.Demorgan_ckt_tb

puts "a b and_not not_or or_not not_and"

run 100 ms
examine sim:/Demorgan_ckt_tb/*

run 100 ms
examine sim:/Demorgan_ckt_tb/*

run 100 ms
examine sim:/Demorgan_ckt_tb/*

run 100 ms
examine sim:/Demorgan_ckt_tb/*
