@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 0bbea906090b45f5915d69d1a149281e -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot for_ornek_process_behav xil_defaultlib.for_ornek_process -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
