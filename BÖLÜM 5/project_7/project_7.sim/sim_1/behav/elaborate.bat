@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto b60837b7b0fd441782b5b83263cadd7a -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot ornek_std_logic_behav xil_defaultlib.ornek_std_logic -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
