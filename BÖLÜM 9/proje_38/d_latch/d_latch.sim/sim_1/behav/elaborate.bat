@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto cd341fd4f53a40f0bc66c7cfb30fb377 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot tb_d_latch_behav xil_defaultlib.tb_d_latch -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
