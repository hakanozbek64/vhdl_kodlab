@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 07e1005bd449486f8f6f769cddf29d74 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot port_dizi_ornek_behav xil_defaultlib.port_dizi_ornek -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
