#!/bin/bash -f
#**********************************************************************************************************
# Vivado (TM) v2023.2 (64-bit)
#
# Script generated by Vivado on Fri May 30 00:05:58 -0700 2025
# SW Build 4029153 on Fri Oct 13 20:14:34 MDT 2023
#
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved. 
#
# Filename     : CADABD.sh
# Simulator    : Cadence Xcelium Parallel Simulator
# Description  : Simulation script generated by export_simulation Tcl command
# Purpose      : Run 'compile', 'elaborate', 'simulate' steps for compiling, elaborating and simulating the
#                design. The script will copy the library mapping file from the compiled library directory,
#                create design library directories and library mappings in the mapping file.
#
# Usage        : CADABD.sh
#                CADABD.sh [-lib_map_path] [-step] [-keep_index] [-noclean_files]*
#                CADABD.sh [-reset_run]
#                CADABD.sh [-reset_log]
#                CADABD.sh [-help]
#
#               * The -noclean_files switch is deprecated and will not peform any function (by default, the
#                 simulator generated files will not be removed unless -reset_run switch is used)
#
# Prerequisite : Before running export_simulation, you must first compile the AMD simulation library
#                using the 'compile_simlib' Tcl command (for more information, run 'compile_simlib -help'
#                command in the Vivado Tcl shell). After compiling the library, specify the -lib_map_path
#                switch with the directory path where the library is created while generating the script
#                with export_simulation.
#
#                Alternatively, you can set the library path by setting the following project property:-
#
#                 set_property compxlib.<simulator>_compiled_library_dir <path> [current_project]
#
#                You can also point to the simulation library by either setting the 'lib_map_path' global
#                variable in this script or specify it with the '-lib_map_path' switch while executing this
#                script (type 'CADABD.sh -help' for more information).
#
#                Note: For pure RTL based designs, the -lib_map_path switch can be specified later with the
#                generated script, but if design is targetted for system simulation containing SystemC/C++/C
#                sources, then the library path MUST be specified upfront when calling export_simulation.
#
#                For more information, refer 'Vivado Design Suite User Guide:Logic simulation (UG900)'
#
#**********************************************************************************************************

# catch pipeline exit status
set -Eeuo pipefail

# set xmvhdl compile options
xmvhdl_opts="-64bit -messages -logfile .tmp_log -update"

# set xmvlog compile options
xmvlog_opts="-64bit -messages -logfile .tmp_log -update"

# set xmelab elaboration options
xmelab_opts="-64bit -relax -access +rwc -namemap_mixgen -messages -logfile elaborate.log"

# set xmsim simulation options
xmsim_opts="-64bit -logfile simulate.log"

# set design libraries for elaboration
design_libs_elab="-libname xpm -libname xil_defaultlib -libname blk_mem_gen_v8_4_7 -libname unisims_ver -libname unimacro_ver -libname secureip"

# set design libraries
design_libs=(simprims_ver xpm xil_defaultlib blk_mem_gen_v8_4_7)

# simulation root library directory
sim_lib_dir="xcelium_lib"

# script info
echo -e "CADABD.sh - Script generated by export_simulation (Vivado v2023.2 (64-bit)-id)\n"

# main steps
run()
{
  check_args $*
  setup
  if [[ ($b_step == 1) ]]; then
    case $step in
      "compile" )
       init_lib
       compile
      ;;
      "elaborate" )
       elaborate
      ;;
      "simulate" )
       simulate
      ;;
      * )
        echo -e "ERROR: Invalid or missing step '$step' (type \"./CADABD.sh -help\" for more information)\n"
        exit 1
      esac
  else
    init_lib
    compile
    elaborate
    simulate
  fi
}

# RUN_STEP: <compile>
compile()
{
  xmvlog -work xpm $xmvlog_opts -sv \
  "F:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  2>&1 | tee compile.log; cat .tmp_log > xmvlog.log 2>/dev/null

  xmvhdl -work xpm $xmvhdl_opts \
  "F:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log > xmvhdl.log 2>/dev/null

  xmvlog -work xil_defaultlib $xmvlog_opts \
  "../../../bd/CADABD/ip/CADABD_MEMDock_0_0/sim/CADABD_MEMDock_0_0.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvlog -work blk_mem_gen_v8_4_7 $xmvlog_opts \
  "../../../../project_1.gen/sources_1/bd/CADABD/ipshared/3c0c/simulation/blk_mem_gen_v8_4.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvlog -work xil_defaultlib $xmvlog_opts \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_0_0/sim/CADABD_blk_mem_gen_0_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_1_0/sim/CADABD_blk_mem_gen_1_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_2_0/sim/CADABD_blk_mem_gen_2_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_3_0/sim/CADABD_blk_mem_gen_3_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_4_0/sim/CADABD_blk_mem_gen_4_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_5_0/sim/CADABD_blk_mem_gen_5_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_6_0/sim/CADABD_blk_mem_gen_6_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_7_0/sim/CADABD_blk_mem_gen_7_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_8_0/sim/CADABD_blk_mem_gen_8_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_9_0/sim/CADABD_blk_mem_gen_9_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_10_0/sim/CADABD_blk_mem_gen_10_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_11_0/sim/CADABD_blk_mem_gen_11_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_12_0/sim/CADABD_blk_mem_gen_12_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_13_0/sim/CADABD_blk_mem_gen_13_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_14_0/sim/CADABD_blk_mem_gen_14_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_15_0/sim/CADABD_blk_mem_gen_15_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_16_0/sim/CADABD_blk_mem_gen_16_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_17_0/sim/CADABD_blk_mem_gen_17_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_18_0/sim/CADABD_blk_mem_gen_18_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_19_0/sim/CADABD_blk_mem_gen_19_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_20_0/sim/CADABD_blk_mem_gen_20_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_21_0/sim/CADABD_blk_mem_gen_21_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_22_0/sim/CADABD_blk_mem_gen_22_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_23_0/sim/CADABD_blk_mem_gen_23_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_24_0/sim/CADABD_blk_mem_gen_24_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_25_0/sim/CADABD_blk_mem_gen_25_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_26_0/sim/CADABD_blk_mem_gen_26_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_27_0/sim/CADABD_blk_mem_gen_27_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_28_0/sim/CADABD_blk_mem_gen_28_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_29_0/sim/CADABD_blk_mem_gen_29_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_30_0/sim/CADABD_blk_mem_gen_30_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_31_0/sim/CADABD_blk_mem_gen_31_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_32_0/sim/CADABD_blk_mem_gen_32_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_33_0/sim/CADABD_blk_mem_gen_33_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_34_0/sim/CADABD_blk_mem_gen_34_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_35_0/sim/CADABD_blk_mem_gen_35_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_36_0/sim/CADABD_blk_mem_gen_36_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_37_0/sim/CADABD_blk_mem_gen_37_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_38_0/sim/CADABD_blk_mem_gen_38_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_39_0/sim/CADABD_blk_mem_gen_39_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_40_0/sim/CADABD_blk_mem_gen_40_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_41_0/sim/CADABD_blk_mem_gen_41_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_42_0/sim/CADABD_blk_mem_gen_42_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_43_0/sim/CADABD_blk_mem_gen_43_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_44_0/sim/CADABD_blk_mem_gen_44_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_45_0/sim/CADABD_blk_mem_gen_45_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_46_0/sim/CADABD_blk_mem_gen_46_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_47_0/sim/CADABD_blk_mem_gen_47_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_48_0/sim/CADABD_blk_mem_gen_48_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_49_0/sim/CADABD_blk_mem_gen_49_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_50_0/sim/CADABD_blk_mem_gen_50_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_51_0/sim/CADABD_blk_mem_gen_51_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_52_0/sim/CADABD_blk_mem_gen_52_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_53_0/sim/CADABD_blk_mem_gen_53_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_54_0/sim/CADABD_blk_mem_gen_54_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_55_0/sim/CADABD_blk_mem_gen_55_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_56_0/sim/CADABD_blk_mem_gen_56_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_57_0/sim/CADABD_blk_mem_gen_57_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_58_0/sim/CADABD_blk_mem_gen_58_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_59_0/sim/CADABD_blk_mem_gen_59_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_60_0/sim/CADABD_blk_mem_gen_60_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_61_0/sim/CADABD_blk_mem_gen_61_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_62_0/sim/CADABD_blk_mem_gen_62_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_63_0/sim/CADABD_blk_mem_gen_63_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_64_0/sim/CADABD_blk_mem_gen_64_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_65_0/sim/CADABD_blk_mem_gen_65_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_66_0/sim/CADABD_blk_mem_gen_66_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_67_0/sim/CADABD_blk_mem_gen_67_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_68_0/sim/CADABD_blk_mem_gen_68_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_69_0/sim/CADABD_blk_mem_gen_69_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_70_0/sim/CADABD_blk_mem_gen_70_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_71_0/sim/CADABD_blk_mem_gen_71_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_72_0/sim/CADABD_blk_mem_gen_72_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_73_0/sim/CADABD_blk_mem_gen_73_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_74_0/sim/CADABD_blk_mem_gen_74_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_75_0/sim/CADABD_blk_mem_gen_75_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_76_0/sim/CADABD_blk_mem_gen_76_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_77_0/sim/CADABD_blk_mem_gen_77_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_78_0/sim/CADABD_blk_mem_gen_78_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_79_0/sim/CADABD_blk_mem_gen_79_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_80_0/sim/CADABD_blk_mem_gen_80_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_81_0/sim/CADABD_blk_mem_gen_81_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_82_0/sim/CADABD_blk_mem_gen_82_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_83_0/sim/CADABD_blk_mem_gen_83_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_84_0/sim/CADABD_blk_mem_gen_84_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_85_0/sim/CADABD_blk_mem_gen_85_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_86_0/sim/CADABD_blk_mem_gen_86_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_87_0/sim/CADABD_blk_mem_gen_87_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_88_0/sim/CADABD_blk_mem_gen_88_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_89_0/sim/CADABD_blk_mem_gen_89_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_90_0/sim/CADABD_blk_mem_gen_90_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_91_0/sim/CADABD_blk_mem_gen_91_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_92_0/sim/CADABD_blk_mem_gen_92_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_93_0/sim/CADABD_blk_mem_gen_93_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_94_0/sim/CADABD_blk_mem_gen_94_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_95_0/sim/CADABD_blk_mem_gen_95_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_96_0/sim/CADABD_blk_mem_gen_96_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_97_0/sim/CADABD_blk_mem_gen_97_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_98_0/sim/CADABD_blk_mem_gen_98_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_99_0/sim/CADABD_blk_mem_gen_99_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_100_0/sim/CADABD_blk_mem_gen_100_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_101_0/sim/CADABD_blk_mem_gen_101_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_102_0/sim/CADABD_blk_mem_gen_102_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_103_0/sim/CADABD_blk_mem_gen_103_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_104_0/sim/CADABD_blk_mem_gen_104_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_105_0/sim/CADABD_blk_mem_gen_105_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_106_0/sim/CADABD_blk_mem_gen_106_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_107_0/sim/CADABD_blk_mem_gen_107_0.v" \
  "../../../bd/CADABD/ip/CADABD_blk_mem_gen_108_0/sim/CADABD_blk_mem_gen_108_0.v" \
  "../../../bd/CADABD/ip/CADABD_CGRATop_0_0/sim/CADABD_CGRATop_0_0.v" \
  "../../../bd/CADABD/sim/CADABD.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvlog -work xil_defaultlib $xmvlog_opts \
  glbl.v \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null
}

# RUN_STEP: <elaborate>
elaborate()
{
  xmelab $xmelab_opts $design_libs_elab xil_defaultlib.CADABD xil_defaultlib.glbl
}

# RUN_STEP: <simulate>
simulate()
{
  xmsim $xmsim_opts xil_defaultlib.CADABD -input simulate.do
}

# STEP: setup
setup()
{
  # delete previous files for a clean rerun
  if [[ ($b_reset_run == 1) ]]; then
    reset_run
    echo -e "INFO: Simulation run files deleted.\n"
    exit 0
  fi

 # delete previous log files
  if [[ ($b_reset_log == 1) ]]; then
    reset_log
    echo -e "INFO: Simulation run log files deleted.\n"
    exit 0
  fi

  # add any setup/initialization commands here:-

  # <user specific commands>

}

# simulator index file/library directory processing
init_lib()
{
  if [[ ($b_keep_index == 1) ]]; then
    # keep previous design library mappings
    true
  else
    # define design library mappings
    create_lib_mappings
  fi

  if [[ ($b_keep_index == 1) ]]; then
    # do not recreate design library directories
    true
  else
    # create design library directories
    create_lib_dir
  fi
}

# define design library mappings
create_lib_mappings()
{
  file="hdl.var"
  touch $file

  file="cds.lib"
  if [[ -e $file ]]; then
    if [[ ($lib_map_path == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file


  if [[ ($lib_map_path != "") ]]; then
    incl_ref="INCLUDE $lib_map_path/cds.lib"
    echo $incl_ref >> $file
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="DEFINE $lib $sim_lib_dir/$lib"
    echo $mapping >> $file
  done
}

# create design library directory
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi
  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# delete generated data from the previous run
reset_run()
{
  files_to_remove=(xmvlog.log xmvhdl.log xmsc.log compile.log elaborate.log simulate.log diag_report.log xsc_report.log CADABD_sc.so .tmp_log xcelium_lib waves.shm c.obj)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done
}

# delete generated log files from the previous run
reset_log()
{
  files_to_remove=(xmvlog.log xmvhdl.log xmsc.log compile.log elaborate.log simulate.log diag_report.log xsc_report.log .tmp_log)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done
}

# check switch argument value
check_arg_value()
{
  if [[ ($1 == "-step") && (($2 != "compile") && ($2 != "elaborate") && ($2 != "simulate")) ]];then
    echo -e "ERROR: Invalid or missing step '$2' (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($1 == "-lib_map_path") && ($2 == "") ]];then
    echo -e "ERROR: Simulation library directory path not specified (type \"./CADABD.sh -help\" for more information)\n"
    exit 1
  fi
}

# check command line arguments
check_args()
{
  arg_count=$#
  if [[ ("$#" == 1) && (("$1" == "-help") || ("$1" == "-h")) ]]; then
    usage
  fi
  while [[ "$#" -gt 0 ]]; do
    case $1 in
      -step)          check_arg_value $1 $2;step=$2;         b_step=1;         shift;;
      -lib_map_path)  check_arg_value $1 $2;lib_map_path=$2; b_lib_map_path=1; shift;;
      -gen_bypass)    b_gen_bypass=1    ;;
      -reset_run)     b_reset_run=1     ;;
      -reset_log)     b_reset_log=1     ;;
      -keep_index)    b_keep_index=1    ;;
      -noclean_files) b_noclean_files=1 ;;
      -help|-h)       ;;
      *) echo -e "ERROR: Invalid option specified '$1' (type "./top.sh -help" for more information)\n"; exit 1 ;;
    esac
     shift
  done

  # -reset_run is not applicable with other switches
  if [[ ("$arg_count" -gt 1) && ($b_reset_run == 1) ]]; then
    echo -e "ERROR: -reset_run switch is not applicable with other switches (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi

  # -reset_log is not applicable with other switches
  if [[ ("$arg_count" -gt 1) && ($b_reset_log == 1) ]]; then
    echo -e "ERROR: -reset_log switch is not applicable with other switches (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi

  # -keep_index is not applicable with other switches
  if [[ ("$arg_count" -gt 1) && ($b_keep_index == 1) ]]; then
    echo -e "ERROR: -keep_index switch is not applicable with other switches (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi

  # -noclean_files is not applicable with other switches
  if [[ ("$arg_count" -gt 1) && ($b_noclean_files == 1) ]]; then
    echo -e "ERROR: -noclean_files switch is not applicable with other switches (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi
}

# script usage
usage()
{
  msg="Usage: CADABD.sh [-help]\n\
Usage: CADABD.sh [-step]\n\
Usage: CADABD.sh [-lib_map_path]\n\
Usage: CADABD.sh [-reset_run]\n\
Usage: CADABD.sh [-reset_log]\n\
Usage: CADABD.sh [-keep_index]\n\
Usage: CADABD.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-step <name>] -- Execute specified step (simulate)\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Delete simulator generated data files from the previous run and recreate simulator setup\n\
file/library mappings for a clean run. This switch will not execute steps defined in the script.\n\n\
NOTE: To keep simulator index file settings from the previous run, use the -keep_index switch\n\
NOTE: To regenerate simulator index file but keep the simulator generated files, use the -noclean_files switch\n\n\
[-reset_log] -- Delete simulator generated log files from the previous run\n\n\
[-keep_index] -- Keep simulator index file settings from the previous run\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run\n"
  echo -e $msg
  exit 0
}

# initialize globals
step=""
lib_map_path=""
b_step=0
b_lib_map_path=0
b_gen_bypass=0
b_reset_run=0
b_reset_log=0
b_keep_index=0
b_noclean_files=0

# launch script
run $*
