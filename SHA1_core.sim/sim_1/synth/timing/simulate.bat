@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.3\\bin
call %xv_path%/xsim SHA1_core_tb_time_synth -key {Post-Synthesis:sim_1:Timing:SHA1_core_tb} -tclbatch SHA1_core_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
