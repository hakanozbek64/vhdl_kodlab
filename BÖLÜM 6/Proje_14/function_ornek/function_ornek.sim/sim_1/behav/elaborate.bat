@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto cee9572e799f46e09de0b255c77b59e1 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot function_ornek_behav xil_defaultlib.function_ornek -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
