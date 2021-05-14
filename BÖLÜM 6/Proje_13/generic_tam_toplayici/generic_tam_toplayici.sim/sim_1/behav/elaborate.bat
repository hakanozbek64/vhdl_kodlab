@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 450b920cd2ca43b190af510e979edccf -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot tb_toplayici_behav xil_defaultlib.tb_toplayici -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
