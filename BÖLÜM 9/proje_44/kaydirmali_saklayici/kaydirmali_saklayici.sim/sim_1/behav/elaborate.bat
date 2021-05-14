@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 5427d0aa48d94f0eb59d3aa8e1241497 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot tb_kaydirmali_saklayici_behav xil_defaultlib.tb_kaydirmali_saklayici -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
