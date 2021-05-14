@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto dcee4f9853fd4bfebd456fd6e786ed16 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot port_map_for_if_generate_behav xil_defaultlib.port_map_for_if_generate -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
