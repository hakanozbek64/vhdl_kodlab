@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 9ff3e639defc46e99706f6262292914d -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot tb_saklayici_generic_aktif_signal_behav xil_defaultlib.tb_saklayici_generic_aktif_signal -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
