@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto c1229a9aeb8e43ca8901002372ca723c -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot nand_kapi_variable_behav xil_defaultlib.nand_kapi_variable -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
