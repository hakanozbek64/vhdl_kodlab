@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 096a407631cb4e44b16884afe6def152 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot saat_darbesi_ornek_behav xil_defaultlib.saat_darbesi_ornek -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
