@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 20110382e924483f8d932ae3d6550153 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot process_ornek_2_behav xil_defaultlib.process_ornek_2 -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
