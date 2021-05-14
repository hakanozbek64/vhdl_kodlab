@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto a75cde1d9ece496f9c3337902fb6db2e -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot nand_kapi_signal_behav xil_defaultlib.nand_kapi_signal -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
