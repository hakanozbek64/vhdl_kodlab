@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 23d56b40a406455c9a3f2ba750f657a0 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot while_ornek_function_behav xil_defaultlib.while_ornek_function -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
