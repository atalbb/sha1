@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.3\\bin
call %xv_path%/xsim counter_tb_func_synth -key {Post-Synthesis:sim_1:Functional:counter_tb} -tclbatch counter_tb.tcl -view C:/College/Thesis/VivadoProjects/SHA1_block/counter_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
