@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto f70fdf1e9d834cec8354c543c9bb4345 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot tb_rom_behav xil_defaultlib.tb_rom -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
