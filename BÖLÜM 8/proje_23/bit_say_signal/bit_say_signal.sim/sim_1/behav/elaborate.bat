@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 928fb64f44dc47eb9fc41bfd239cc4c8 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot bit_say_signal_behav xil_defaultlib.bit_say_signal -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
