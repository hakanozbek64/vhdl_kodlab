@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 083e5e62b2c34ac9b46bb06cb11320ce -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot dosya_okuma_integer_behav xil_defaultlib.dosya_okuma_integer -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
