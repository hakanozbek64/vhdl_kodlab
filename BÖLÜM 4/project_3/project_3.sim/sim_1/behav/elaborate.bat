@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto e23ff01bd8044d3c84ce1480df0a6e17 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot mantiksal_operatorler_behav xil_defaultlib.mantiksal_operatorler -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
