@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto c2d5826217d1456b8f36c267e0b71102 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot case_ornek_type_behav xil_defaultlib.case_ornek_type -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
