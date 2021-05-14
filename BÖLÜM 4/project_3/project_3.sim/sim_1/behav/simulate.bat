@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xsim mantiksal_operatorler_behav -key {Behavioral:sim_1:Functional:mantiksal_operatorler} -tclbatch mantiksal_operatorler.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
