@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 4c7f41d56b184ba9835bca8b6b8577d2 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot oncelikli_atama_behav xil_defaultlib.oncelikli_atama -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
