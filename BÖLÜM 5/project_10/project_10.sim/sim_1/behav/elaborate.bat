@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 4bc8f5f7a8f947cb975821ba32ee04b5 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot ornek_conv_behav xil_defaultlib.ornek_conv -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
