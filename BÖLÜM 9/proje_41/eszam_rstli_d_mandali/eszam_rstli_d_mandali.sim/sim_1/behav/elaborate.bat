@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 0bf04e2145394a1aa57828ea5597fad3 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot tb_eszam_rstli_d_mandali_behav xil_defaultlib.tb_eszam_rstli_d_mandali -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
