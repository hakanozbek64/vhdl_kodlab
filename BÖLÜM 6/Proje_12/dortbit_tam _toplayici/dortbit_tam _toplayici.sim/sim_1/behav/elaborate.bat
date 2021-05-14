@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 33d87de5c0b2477f8ad4c2dc78edc07f -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot dort_bit_toplayici_behav xil_defaultlib.dort_bit_toplayici -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
