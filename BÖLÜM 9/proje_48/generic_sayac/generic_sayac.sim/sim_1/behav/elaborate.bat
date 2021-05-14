@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 1fa5828be514444b9a5545919e97d5ba -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot tb_generic_sayac_behav xil_defaultlib.tb_generic_sayac -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
