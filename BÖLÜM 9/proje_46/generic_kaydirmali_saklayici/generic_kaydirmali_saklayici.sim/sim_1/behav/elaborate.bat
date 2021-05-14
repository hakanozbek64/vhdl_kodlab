@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 1855535f049b42efa6a37b40e0faf25a -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot tb_generic_kaydirmali_saklayici_behav xil_defaultlib.tb_generic_kaydirmali_saklayici -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
