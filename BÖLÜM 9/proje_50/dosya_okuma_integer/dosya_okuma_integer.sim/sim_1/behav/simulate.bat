@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xsim dosya_okuma_integer_behav -key {Behavioral:sim_1:Functional:dosya_okuma_integer} -tclbatch dosya_okuma_integer.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
