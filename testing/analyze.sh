#!/bin/sh

echo "Analyzing full_adder"
ghdl -a full_adder.vhdl
ghdl -e full_adder

echo "Analyzing n_bit_adder"
ghdl -a n_bit_adder.vhdl
ghdl -e n_bit_adder

echo "Analyzing full_subtractor"
ghdl -a full_subtractor.vhdl
ghdl -e full_subtractor

echo "Analyzing n_bit_subtractor"
ghdl -a n_bit_subtractor.vhdl
ghdl -e n_bit_subtractor

#echo "Analyzing d_flip_flop"
#ghdl -a d_flip_flop.vhdl
#ghdl -e d_flip_flop
#
#echo "Analyzing n_bit_mem"
#ghdl -a n_bit_mem.vhdl
#ghdl -e n_bit_mem

echo "Analyzing decoder"
ghdl -a decoder.vhdl
ghdl -e decoder

echo "Analyzing coke_mach"
ghdl -a coke_mach.vhdl
ghdl -e coke_mach

#echo "Analyzing coke_mach_tb_proc"
#ghdl -a coke_mach_tb_proc.vhdl
#ghdl -e coke_mach_tb_proc
#ghdl -r coke_mach_tb_proc --vcd=coke_mach_vcd.vcd

echo "Analyzing coke_mach_tb"
ghdl -a coke_mach_tb.vhdl
ghdl -e coke_mach_tb
