@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xsim ornek_signed_behav -key {Behavioral:sim_1:Functional:ornek_signed} -tclbatch ornek_signed.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
