@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xsim port_map_for_if_generate_behav -key {Behavioral:sim_1:Functional:port_map_for_if_generate} -tclbatch port_map_for_if_generate.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
