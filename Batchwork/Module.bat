C:\intelFPGA_lite\18.0\modelsim_ase\win32aloem\vlib work
C:\intelFPGA_lite\18.0\modelsim_ase\win32aloem\vmap work work
C:\intelFPGA_lite\18.0\modelsim_ase\win32aloem\vlog -work work ../rtl/test1.v
C:\intelFPGA_lite\18.0\modelsim_ase\win32aloem\vlog -work work ../simulation/test1_tb.v
C:\intelFPGA_lite\18.0\modelsim_ase\win32aloem\vsim -c -wlf saved.wlf test1_tb -do "do wave.do ;run -all"

