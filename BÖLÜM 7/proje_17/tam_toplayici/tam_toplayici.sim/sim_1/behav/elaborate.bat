@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 16986e4a4be04593a8b08e4805c78700 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot tam_toplayici_behav xil_defaultlib.tam_toplayici -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
