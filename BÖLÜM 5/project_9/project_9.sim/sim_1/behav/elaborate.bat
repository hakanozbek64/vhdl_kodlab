@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 78b25b8deea34760849f9dfb293421a9 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot ornek_signed_behav xil_defaultlib.ornek_signed -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
