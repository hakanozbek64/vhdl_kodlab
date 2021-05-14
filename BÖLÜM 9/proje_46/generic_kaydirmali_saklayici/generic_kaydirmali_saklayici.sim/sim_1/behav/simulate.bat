@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xsim tb_generic_kaydirmali_saklayici_behav -key {Behavioral:sim_1:Functional:tb_generic_kaydirmali_saklayici} -tclbatch tb_generic_kaydirmali_saklayici.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
