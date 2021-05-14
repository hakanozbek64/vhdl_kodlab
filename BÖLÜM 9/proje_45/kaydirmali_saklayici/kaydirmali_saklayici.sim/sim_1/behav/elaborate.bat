@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto e08284992c274f62be18be835dbcfd1b -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot tb_kaydirmali_saklayici_behav xil_defaultlib.tb_kaydirmali_saklayici -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
