@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 277b19956b3742d986cebec4af48fe97 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot dosya_okuma_karakter_behav xil_defaultlib.dosya_okuma_karakter -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
