@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto d9e3e701b23f4cfd8cfb01f9c4856a28 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot carpim_operatorleri_behav xil_defaultlib.carpim_operatorleri -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
