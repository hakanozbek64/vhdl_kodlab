@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 4fc453ad53d14139af1d335e710f580c -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot top_level_behav xil_defaultlib.top_level -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
