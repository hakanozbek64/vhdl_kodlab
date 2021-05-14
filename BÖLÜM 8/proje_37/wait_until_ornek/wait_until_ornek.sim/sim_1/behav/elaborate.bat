@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 6d058aec8319498793f6feab05ae64d5 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot wait_until_ornek_behav xil_defaultlib.wait_until_ornek -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
