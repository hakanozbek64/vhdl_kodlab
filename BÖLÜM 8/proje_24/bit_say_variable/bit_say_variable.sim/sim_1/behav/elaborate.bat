@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto d457d9c24c3d4dd99e4bdda979792816 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot bit_say_variable_behav xil_defaultlib.bit_say_variable -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
