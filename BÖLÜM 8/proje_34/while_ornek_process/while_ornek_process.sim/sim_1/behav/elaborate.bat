@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto d2dcd6b6524d4125a3debee95152d652 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot while_ornek_process_behav xil_defaultlib.while_ornek_process -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
