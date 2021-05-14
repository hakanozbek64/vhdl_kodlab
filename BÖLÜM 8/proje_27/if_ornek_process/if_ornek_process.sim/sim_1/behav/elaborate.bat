@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto a7f020532a6e41f990222b4988e959d5 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot if_ornek_process_behav xil_defaultlib.if_ornek_process -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
