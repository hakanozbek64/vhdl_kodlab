@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 1c73bc073adb48309d64b9e745f7bea1 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot yari_toplayici_bit_behav xil_defaultlib.yari_toplayici_bit -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
