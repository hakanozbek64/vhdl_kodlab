@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 428897eec9ce4b8b8e1fda523da0a52e -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot case_ornek_function_behav xil_defaultlib.case_ornek_function -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
