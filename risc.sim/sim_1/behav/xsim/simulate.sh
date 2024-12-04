#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2023.1 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Sun Nov 24 01:56:44 CET 2024
# SW Build 3865809 on Sun May  7 15:04:56 MDT 2023
#
# IP Build 3864474 on Sun May  7 20:36:21 MDT 2023
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim Register_Bank_test_behav -key {Behavioral:sim_1:Functional:Register_Bank_test} -tclbatch Register_Bank_test.tcl -log simulate.log"
xsim Register_Bank_test_behav -key {Behavioral:sim_1:Functional:Register_Bank_test} -tclbatch Register_Bank_test.tcl -log simulate.log

