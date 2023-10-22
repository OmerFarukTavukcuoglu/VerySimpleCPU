# VerySimpleCPU
VerySimpleCPU
![image](https://github.com/OmerFarukTavukcuoglu/VerySimpleCPU/assets/148585869/f564431c-2f95-43f2-ad3e-3670dbe0b8f1)


Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--> Parameter TMPDIR set to xst/projnav.tmp


Total REAL time to Xst completion: 0.00 secs
Total CPU time to Xst completion: 0.09 secs
 
--> Parameter xsthdpdir set to xst


Total REAL time to Xst completion: 0.00 secs
Total CPU time to Xst completion: 0.09 secs
 
--> Reading design: VerySimpleCPU.prj

TABLE OF CONTENTS
  1) Synthesis Options Summary
  2) HDL Parsing
  3) HDL Elaboration
  4) HDL Synthesis
       4.1) HDL Synthesis Report
  5) Advanced HDL Synthesis
       5.1) Advanced HDL Synthesis Report
  6) Low Level Synthesis
  7) Partition Report
  8) Design Summary
       8.1) Primitive and Black Box Usage
       8.2) Device utilization summary
       8.3) Partition Resource Summary
       8.4) Timing Report
            8.4.1) Clock Information
            8.4.2) Asynchronous Control Signals Information
            8.4.3) Timing Summary
            8.4.4) Timing Details
            8.4.5) Cross Clock Domains Report


=========================================================================
*                      Synthesis Options Summary                        *
=========================================================================
---- Source Parameters
Input File Name                    : "VerySimpleCPU.prj"
Ignore Synthesis Constraint File   : NO

---- Target Parameters
Output File Name                   : "VerySimpleCPU"
Output Format                      : NGC
Target Device                      : xc7a100t-3-csg324

---- Source Options
Top Module Name                    : VerySimpleCPU
Automatic FSM Extraction           : YES
FSM Encoding Algorithm             : Auto
Safe Implementation                : No
FSM Style                          : LUT
RAM Extraction                     : Yes
RAM Style                          : Auto
ROM Extraction                     : Yes
Shift Register Extraction          : YES
ROM Style                          : Auto
Resource Sharing                   : YES
Asynchronous To Synchronous        : NO
Shift Register Minimum Size        : 2
Use DSP Block                      : Auto
Automatic Register Balancing       : No

---- Target Options
LUT Combining                      : Auto
Reduce Control Sets                : Auto
Add IO Buffers                     : YES
Global Maximum Fanout              : 100000
Add Generic Clock Buffer(BUFG)     : 32
Register Duplication               : YES
Optimize Instantiated Primitives   : NO
Use Clock Enable                   : Auto
Use Synchronous Set                : Auto
Use Synchronous Reset              : Auto
Pack IO Registers into IOBs        : Auto
Equivalent register Removal        : YES

---- General Options
Optimization Goal                  : Speed
Optimization Effort                : 1
Power Reduction                    : NO
Keep Hierarchy                     : No
Netlist Hierarchy                  : As_Optimized
RTL Output                         : Yes
Global Optimization                : AllClockNets
Read Cores                         : YES
Write Timing Constraints           : NO
Cross Clock Analysis               : NO
Hierarchy Separator                : /
Bus Delimiter                      : <>
Case Specifier                     : Maintain
Slice Utilization Ratio            : 100
BRAM Utilization Ratio             : 100
DSP48 Utilization Ratio            : 100
Auto BRAM Packing                  : NO
Slice Utilization Ratio Delta      : 5

=========================================================================


=========================================================================
*                          HDL Parsing                                  *
=========================================================================
Analyzing Verilog file "C:\.Xilinx\VerySimpleCPU_HW\VerySimpleCPU.v" into library work
Parsing module <VerySimpleCPU>.
WARNING:HDLCompiler:568 - "C:\.Xilinx\VerySimpleCPU_HW\VerySimpleCPU.v" Line 160: Constant value is truncated to fit in <3> bits.
WARNING:HDLCompiler:568 - "C:\.Xilinx\VerySimpleCPU_HW\VerySimpleCPU.v" Line 166: Constant value is truncated to fit in <3> bits.
WARNING:HDLCompiler:568 - "C:\.Xilinx\VerySimpleCPU_HW\VerySimpleCPU.v" Line 170: Constant value is truncated to fit in <3> bits.
WARNING:HDLCompiler:568 - "C:\.Xilinx\VerySimpleCPU_HW\VerySimpleCPU.v" Line 178: Constant value is truncated to fit in <3> bits.
WARNING:HDLCompiler:568 - "C:\.Xilinx\VerySimpleCPU_HW\VerySimpleCPU.v" Line 182: Constant value is truncated to fit in <3> bits.
WARNING:HDLCompiler:568 - "C:\.Xilinx\VerySimpleCPU_HW\VerySimpleCPU.v" Line 184: Constant value is truncated to fit in <3> bits.
WARNING:HDLCompiler:568 - "C:\.Xilinx\VerySimpleCPU_HW\VerySimpleCPU.v" Line 188: Constant value is truncated to fit in <3> bits.
WARNING:HDLCompiler:568 - "C:\.Xilinx\VerySimpleCPU_HW\VerySimpleCPU.v" Line 190: Constant value is truncated to fit in <3> bits.

=========================================================================
*                            HDL Elaboration                            *
=========================================================================

Elaborating module <VerySimpleCPU>.

=========================================================================
*                           HDL Synthesis                               *
=========================================================================

Synthesizing Unit <VerySimpleCPU>.
    Related source file is "C:\.Xilinx\VerySimpleCPU_HW\VerySimpleCPU.v".
    Found 14-bit register for signal <PC>.
    Found 32-bit register for signal <A>.
    Found 32-bit register for signal <IW>.
    Found 1-bit register for signal <intr>.
    Found 1-bit register for signal <isr>.
    Found 3-bit register for signal <st>.
    Found finite state machine <FSM_0> for signal <st>.
    -----------------------------------------------------------------------
    | States             | 6                                              |
    | Transitions        | 23                                             |
    | Inputs             | 13                                             |
    | Outputs            | 5                                              |
    | Clock              | clk (rising_edge)                              |
    | Reset              | rst (positive)                                 |
    | Reset type         | synchronous                                    |
    | Reset State        | 000                                            |
    | Encoding           | auto                                           |
    | Implementation     | LUT                                            |
    -----------------------------------------------------------------------
    Found 32-bit adder for signal <data_fromRAM[31]_GND_1_o_add_21_OUT> created at line 81.
    Found 14-bit adder for signal <data_fromRAM[13]_IW[13]_add_42_OUT> created at line 101.
    Found 32-bit adder for signal <A[31]_data_fromRAM[31]_add_49_OUT> created at line 111.
    Found 14-bit adder for signal <PC[13]_GND_1_o_add_50_OUT> created at line 113.
    Found 14-bit 8-to-1 multiplexer for signal <addr_toRAM> created at line 62.
    Found 32-bit 4-to-1 multiplexer for signal <_n0171> created at line 90.
    Found 32-bit 4-to-1 multiplexer for signal <_n0180> created at line 119.
    Summary:
	inferred   4 Adder/Subtractor(s).
	inferred  80 D-type flip-flop(s).
	inferred  28 Multiplexer(s).
	inferred   1 Finite State Machine(s).
Unit <VerySimpleCPU> synthesized.

=========================================================================
HDL Synthesis Report

Macro Statistics
# Adders/Subtractors                                   : 4
 14-bit adder                                          : 2
 32-bit adder                                          : 2
# Registers                                            : 5
 1-bit register                                        : 2
 14-bit register                                       : 1
 32-bit register                                       : 2
# Multiplexers                                         : 28
 1-bit 2-to-1 multiplexer                              : 5
 14-bit 2-to-1 multiplexer                             : 14
 14-bit 8-to-1 multiplexer                             : 1
 32-bit 2-to-1 multiplexer                             : 6
 32-bit 4-to-1 multiplexer                             : 2
# FSMs                                                 : 1

=========================================================================

=========================================================================
*                       Advanced HDL Synthesis                          *
=========================================================================


=========================================================================
Advanced HDL Synthesis Report

Macro Statistics
# Adders/Subtractors                                   : 4
 14-bit adder                                          : 2
 32-bit adder                                          : 2
# Registers                                            : 80
 Flip-Flops                                            : 80
# Multiplexers                                         : 28
 1-bit 2-to-1 multiplexer                              : 5
 14-bit 2-to-1 multiplexer                             : 14
 14-bit 8-to-1 multiplexer                             : 1
 32-bit 2-to-1 multiplexer                             : 6
 32-bit 4-to-1 multiplexer                             : 2
# FSMs                                                 : 1

=========================================================================

=========================================================================
*                         Low Level Synthesis                           *
=========================================================================
Analyzing FSM <MFsm> for best encoding.
Optimizing FSM <FSM_0> on signal <st[1:3]> with user encoding.
-------------------
 State | Encoding
-------------------
 000   | 000
 001   | 001
 010   | 010
 011   | 011
 100   | 100
 101   | 101
-------------------

Optimizing unit <VerySimpleCPU> ...

Mapping all equations...
Building and optimizing final netlist ...
Found area constraint ratio of 100 (+ 5) on block VerySimpleCPU, actual ratio is 0.
FlipFlop st_FSM_FFd3 has been replicated 1 time(s)

Final Macro Processing ...

=========================================================================
Final Register Report

Macro Statistics
# Registers                                            : 84
 Flip-Flops                                            : 84

=========================================================================

=========================================================================
*                           Partition Report                            *
=========================================================================

Partition Implementation Status
-------------------------------

  No Partitions were found in this design.

-------------------------------

=========================================================================
*                            Design Summary                             *
=========================================================================

Top Level Output File Name         : VerySimpleCPU.ngc

Primitive and Black Box Usage:
------------------------------
# BELS                             : 503
#      GND                         : 1
#      INV                         : 1
#      LUT1                        : 31
#      LUT2                        : 63
#      LUT3                        : 8
#      LUT4                        : 32
#      LUT5                        : 52
#      LUT6                        : 132
#      MUXCY                       : 88
#      MUXF7                       : 2
#      VCC                         : 1
#      XORCY                       : 92
# FlipFlops/Latches                : 84
#      FDR                         : 36
#      FDRE                        : 48
# Clock Buffers                    : 1
#      BUFGP                       : 1
# IO Buffers                       : 81
#      IBUF                        : 34
#      OBUF                        : 47

Device utilization summary:
---------------------------

Selected Device : 7a100tcsg324-3 


Slice Logic Utilization: 
 Number of Slice Registers:              84  out of  126800     0%  
 Number of Slice LUTs:                  319  out of  63400     0%  
    Number used as Logic:               319  out of  63400     0%  

Slice Logic Distribution: 
 Number of LUT Flip Flop pairs used:    335
   Number with an unused Flip Flop:     251  out of    335    74%  
   Number with an unused LUT:            16  out of    335     4%  
   Number of fully used LUT-FF pairs:    68  out of    335    20%  
   Number of unique control sets:         7

IO Utilization: 
 Number of IOs:                          82
 Number of bonded IOBs:                  82  out of    210    39%  

Specific Feature Utilization:
 Number of BUFG/BUFGCTRLs:                1  out of     32     3%  

---------------------------
Partition Resource Summary:
---------------------------

  No Partitions were found in this design.

---------------------------


=========================================================================
Timing Report

NOTE: THESE TIMING NUMBERS ARE ONLY A SYNTHESIS ESTIMATE.
      FOR ACCURATE TIMING INFORMATION PLEASE REFER TO THE TRACE REPORT
      GENERATED AFTER PLACE-and-ROUTE.

Clock Information:
------------------
-----------------------------------+------------------------+-------+
Clock Signal                       | Clock buffer(FF name)  | Load  |
-----------------------------------+------------------------+-------+
clk                                | BUFGP                  | 84    |
-----------------------------------+------------------------+-------+

Asynchronous Control Signals Information:
----------------------------------------
No asynchronous control signals found in this design

Timing Summary:
---------------
Speed Grade: -3

   Minimum period: 2.643ns (Maximum Frequency: 378.372MHz)
   Minimum input arrival time before clock: 2.989ns
   Maximum output required time after clock: 3.324ns
   Maximum combinational path delay: 2.907ns

Timing Details:
---------------
All values displayed in nanoseconds (ns)

=========================================================================
Timing constraint: Default period analysis for Clock 'clk'
  Clock period: 2.643ns (frequency: 378.372MHz)
  Total number of paths / destination ports: 979 / 134
-------------------------------------------------------------------------
Delay:               2.643ns (Levels of Logic = 17)
  Source:            IW_0 (FF)
  Destination:       PC_13 (FF)
  Source Clock:      clk rising
  Destination Clock: clk rising

  Data Path: IW_0 to PC_13
                                Gate     Net
    Cell:in->out      fanout   Delay   Delay  Logical Name (Net Name)
    ----------------------------------------  ------------
     FDRE:C->Q             4   0.361   0.309  IW_0 (IW_0)
     LUT2:I1->O            1   0.097   0.000  Madd_data_fromRAM[13]_IW[13]_add_42_OUT_lut<0> (Madd_data_fromRAM[13]_IW[13]_add_42_OUT_lut<0>)
     MUXCY:S->O            1   0.353   0.000  Madd_data_fromRAM[13]_IW[13]_add_42_OUT_cy<0> (Madd_data_fromRAM[13]_IW[13]_add_42_OUT_cy<0>)
     MUXCY:CI->O           1   0.023   0.000  Madd_data_fromRAM[13]_IW[13]_add_42_OUT_cy<1> (Madd_data_fromRAM[13]_IW[13]_add_42_OUT_cy<1>)
     MUXCY:CI->O           1   0.023   0.000  Madd_data_fromRAM[13]_IW[13]_add_42_OUT_cy<2> (Madd_data_fromRAM[13]_IW[13]_add_42_OUT_cy<2>)
     MUXCY:CI->O           1   0.023   0.000  Madd_data_fromRAM[13]_IW[13]_add_42_OUT_cy<3> (Madd_data_fromRAM[13]_IW[13]_add_42_OUT_cy<3>)
     MUXCY:CI->O           1   0.023   0.000  Madd_data_fromRAM[13]_IW[13]_add_42_OUT_cy<4> (Madd_data_fromRAM[13]_IW[13]_add_42_OUT_cy<4>)
     MUXCY:CI->O           1   0.023   0.000  Madd_data_fromRAM[13]_IW[13]_add_42_OUT_cy<5> (Madd_data_fromRAM[13]_IW[13]_add_42_OUT_cy<5>)
     MUXCY:CI->O           1   0.023   0.000  Madd_data_fromRAM[13]_IW[13]_add_42_OUT_cy<6> (Madd_data_fromRAM[13]_IW[13]_add_42_OUT_cy<6>)
     MUXCY:CI->O           1   0.023   0.000  Madd_data_fromRAM[13]_IW[13]_add_42_OUT_cy<7> (Madd_data_fromRAM[13]_IW[13]_add_42_OUT_cy<7>)
     MUXCY:CI->O           1   0.023   0.000  Madd_data_fromRAM[13]_IW[13]_add_42_OUT_cy<8> (Madd_data_fromRAM[13]_IW[13]_add_42_OUT_cy<8>)
     MUXCY:CI->O           1   0.023   0.000  Madd_data_fromRAM[13]_IW[13]_add_42_OUT_cy<9> (Madd_data_fromRAM[13]_IW[13]_add_42_OUT_cy<9>)
     MUXCY:CI->O           1   0.023   0.000  Madd_data_fromRAM[13]_IW[13]_add_42_OUT_cy<10> (Madd_data_fromRAM[13]_IW[13]_add_42_OUT_cy<10>)
     MUXCY:CI->O           1   0.023   0.000  Madd_data_fromRAM[13]_IW[13]_add_42_OUT_cy<11> (Madd_data_fromRAM[13]_IW[13]_add_42_OUT_cy<11>)
     MUXCY:CI->O           0   0.023   0.000  Madd_data_fromRAM[13]_IW[13]_add_42_OUT_cy<12> (Madd_data_fromRAM[13]_IW[13]_add_42_OUT_cy<12>)
     XORCY:CI->O           1   0.370   0.295  Madd_data_fromRAM[13]_IW[13]_add_42_OUT_xor<13> (data_fromRAM[13]_IW[13]_add_42_OUT<13>)
     LUT6:I5->O            1   0.097   0.379  Mmux_PCN102 (Mmux_PCN101)
     LUT4:I2->O            1   0.097   0.000  Mmux_PCN103 (PCN<13>)
     FDRE:D                    0.008          PC_13
    ----------------------------------------
    Total                      2.643ns (1.659ns logic, 0.984ns route)
                                       (62.8% logic, 37.2% route)

=========================================================================
Timing constraint: Default OFFSET IN BEFORE for Clock 'clk'
  Total number of paths / destination ports: 1255 / 163
-------------------------------------------------------------------------
Offset:              2.989ns (Levels of Logic = 5)
  Source:            data_fromRAM<13> (PAD)
  Destination:       PC_0 (FF)
  Destination Clock: clk rising

  Data Path: data_fromRAM<13> to PC_0
                                Gate     Net
    Cell:in->out      fanout   Delay   Delay  Logical Name (Net Name)
    ----------------------------------------  ------------
     IBUF:I->O             9   0.001   0.730  data_fromRAM_13_IBUF (data_fromRAM_13_IBUF)
     LUT6:I0->O            1   0.097   0.693  data_fromRAM[31]_GND_1_o_equal_71_o<31>1 (data_fromRAM[31]_GND_1_o_equal_71_o<31>)
     LUT6:I0->O           28   0.097   0.789  data_fromRAM[31]_GND_1_o_equal_71_o<31>7 (data_fromRAM[31]_GND_1_o_equal_71_o)
     LUT5:I0->O            1   0.097   0.379  Mmux_PCN181 (Mmux_PCN18)
     LUT4:I2->O            1   0.097   0.000  Mmux_PCN183 (PCN<4>)
     FDRE:D                    0.008          PC_4
    ----------------------------------------
    Total                      2.989ns (0.397ns logic, 2.592ns route)
                                       (13.3% logic, 86.7% route)

=========================================================================
Timing constraint: Default OFFSET OUT AFTER for Clock 'clk'
  Total number of paths / destination ports: 2150 / 47
-------------------------------------------------------------------------
Offset:              3.324ns (Levels of Logic = 36)
  Source:            A_0 (FF)
  Destination:       data_toRAM<31> (PAD)
  Source Clock:      clk rising

  Data Path: A_0 to data_toRAM<31>
                                Gate     Net
    Cell:in->out      fanout   Delay   Delay  Logical Name (Net Name)
    ----------------------------------------  ------------
     FDR:C->Q              3   0.361   0.389  A_0 (A_0)
     LUT2:I0->O            1   0.097   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_lut<0> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_lut<0>)
     MUXCY:S->O            1   0.353   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<0> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<0>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<1> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<1>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<2> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<2>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<3> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<3>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<4> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<4>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<5> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<5>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<6> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<6>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<7> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<7>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<8> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<8>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<9> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<9>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<10> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<10>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<11> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<11>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<12> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<12>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<13> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<13>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<14> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<14>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<15> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<15>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<16> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<16>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<17> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<17>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<18> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<18>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<19> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<19>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<20> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<20>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<21> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<21>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<22> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<22>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<23> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<23>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<24> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<24>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<25> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<25>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<26> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<26>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<27> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<27>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<28> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<28>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<29> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<29>)
     MUXCY:CI->O           0   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<30> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<30>)
     XORCY:CI->O           1   0.370   0.295  Madd_A[31]_data_fromRAM[31]_add_49_OUT_xor<31> (A[31]_data_fromRAM[31]_add_49_OUT<31>)
     LUT6:I5->O            1   0.097   0.295  Mmux_data_toRAM251 (Mmux_data_toRAM25)
     LUT6:I5->O            1   0.097   0.279  Mmux_data_toRAM252 (data_toRAM_31_OBUF)
     OBUF:I->O                 0.000          data_toRAM_31_OBUF (data_toRAM<31>)
    ----------------------------------------
    Total                      3.324ns (2.065ns logic, 1.259ns route)
                                       (62.1% logic, 37.9% route)

=========================================================================
Timing constraint: Default path analysis
  Total number of paths / destination ports: 1501 / 46
-------------------------------------------------------------------------
Delay:               2.907ns (Levels of Logic = 37)
  Source:            data_fromRAM<0> (PAD)
  Destination:       data_toRAM<31> (PAD)

  Data Path: data_fromRAM<0> to data_toRAM<31>
                                Gate     Net
    Cell:in->out      fanout   Delay   Delay  Logical Name (Net Name)
    ----------------------------------------  ------------
     IBUF:I->O             9   0.001   0.332  data_fromRAM_0_IBUF (data_fromRAM_0_IBUF)
     LUT2:I1->O            1   0.097   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_lut<0> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_lut<0>)
     MUXCY:S->O            1   0.353   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<0> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<0>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<1> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<1>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<2> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<2>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<3> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<3>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<4> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<4>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<5> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<5>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<6> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<6>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<7> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<7>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<8> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<8>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<9> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<9>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<10> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<10>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<11> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<11>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<12> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<12>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<13> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<13>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<14> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<14>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<15> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<15>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<16> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<16>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<17> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<17>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<18> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<18>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<19> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<19>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<20> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<20>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<21> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<21>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<22> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<22>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<23> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<23>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<24> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<24>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<25> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<25>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<26> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<26>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<27> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<27>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<28> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<28>)
     MUXCY:CI->O           1   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<29> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<29>)
     MUXCY:CI->O           0   0.023   0.000  Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<30> (Madd_A[31]_data_fromRAM[31]_add_49_OUT_cy<30>)
     XORCY:CI->O           1   0.370   0.295  Madd_A[31]_data_fromRAM[31]_add_49_OUT_xor<31> (A[31]_data_fromRAM[31]_add_49_OUT<31>)
     LUT6:I5->O            1   0.097   0.295  Mmux_data_toRAM251 (Mmux_data_toRAM25)
     LUT6:I5->O            1   0.097   0.279  Mmux_data_toRAM252 (data_toRAM_31_OBUF)
     OBUF:I->O                 0.000          data_toRAM_31_OBUF (data_toRAM<31>)
    ----------------------------------------
    Total                      2.907ns (1.705ns logic, 1.202ns route)
                                       (58.6% logic, 41.4% route)

=========================================================================

Cross Clock Domains Report:
--------------------------

Clock to Setup on destination clock clk
---------------+---------+---------+---------+---------+
               | Src:Rise| Src:Fall| Src:Rise| Src:Fall|
Source Clock   |Dest:Rise|Dest:Rise|Dest:Fall|Dest:Fall|
---------------+---------+---------+---------+---------+
clk            |    2.643|         |         |         |
---------------+---------+---------+---------+---------+

=========================================================================


Total REAL time to Xst completion: 7.00 secs
Total CPU time to Xst completion: 7.57 secs
 
--> 

Total memory usage is 4617888 kilobytes

Number of errors   :    0 (   0 filtered)
Number of warnings :    8 (   0 filtered)
Number of infos    :    0 (   0 filtered)
