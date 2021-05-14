@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 12d11bda45b94a1395765c8cea2a9048 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot case_ornek_process_behav xil_defaultlib.case_ornek_process -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
