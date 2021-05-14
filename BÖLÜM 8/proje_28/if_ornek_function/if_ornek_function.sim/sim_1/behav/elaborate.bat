@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto bdd2d3c579484aa6b95fce04a20d7317 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot if_ornek_function_behav xil_defaultlib.if_ornek_function -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
