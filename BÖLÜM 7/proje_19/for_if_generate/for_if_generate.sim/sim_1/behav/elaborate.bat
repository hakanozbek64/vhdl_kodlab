@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 6589562c44c1484e992bebfa2815ee78 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot for_if_generate_behav xil_defaultlib.for_if_generate -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
