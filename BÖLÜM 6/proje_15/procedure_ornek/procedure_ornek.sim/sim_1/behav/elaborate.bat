@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto ee525af3eb5b4ee6aeca0b24d68360bd -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot procedure_ornek_behav xil_defaultlib.procedure_ornek -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
