@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 343b2b1e92e04982a93097a3fd931ea8 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot process_ornek_1_behav xil_defaultlib.process_ornek_1 -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
