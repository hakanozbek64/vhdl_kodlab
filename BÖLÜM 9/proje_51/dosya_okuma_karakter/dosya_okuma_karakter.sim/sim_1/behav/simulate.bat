@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xsim dosya_okuma_karakter_behav -key {Behavioral:sim_1:Functional:dosya_okuma_karakter} -tclbatch dosya_okuma_karakter.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
