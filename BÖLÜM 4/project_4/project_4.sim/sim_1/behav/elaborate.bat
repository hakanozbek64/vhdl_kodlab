@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 1d389ec945c047f494846620c16ea9cf -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot toplama_operatorleri_behav xil_defaultlib.toplama_operatorleri -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
