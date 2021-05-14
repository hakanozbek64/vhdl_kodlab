@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto aee13ad8733c4b489d0223702b71bb42 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot tb_sayac_4_bit_behav xil_defaultlib.tb_sayac_4_bit -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
