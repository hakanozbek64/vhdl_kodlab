@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto ac5305d24457403494e557c79110520c -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot paket_kullanimi_behav xil_defaultlib.paket_kullanimi -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
