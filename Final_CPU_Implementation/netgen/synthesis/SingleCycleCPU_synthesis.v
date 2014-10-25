////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.58f
//  \   \         Application: netgen
//  /   /         Filename: SingleCycleCPU_synthesis.v
// /___/   /\     Timestamp: Sat Apr 06 16:34:38 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim SingleCycleCPU.ngc SingleCycleCPU_synthesis.v 
// Device	: xc7a100t-3-csg324
// Input file	: SingleCycleCPU.ngc
// Output file	: C:\Users\rstrogonovs\Desktop\Final CPU Architecture\CPU\netgen\synthesis\SingleCycleCPU_synthesis.v
// # of Modules	: 1
// Design Name	: SingleCycleCPU
// Xilinx        : C:\Xilinx\14.5\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module SingleCycleCPU (
  clk, reset, instruction
);
  input clk;
  input reset;
  output [31 : 0] instruction;
  wire clk_BUFGP_0;
  wire reset_IBUF_1;
  wire MemRead;
  wire instruction_7_OBUF_4;
  wire instruction_6_OBUF_5;
  wire instruction_5_OBUF_6;
  wire instruction_4_OBUF_7;
  wire instruction_3_OBUF_8;
  wire instruction_2_OBUF_9;
  wire instruction_0_OBUF_10;
  wire \InstrFetch/PC_Adder/Madd_result_cy<8>_rt_70 ;
  wire \InstrFetch/PC_Adder/Madd_result_cy<7>_rt_71 ;
  wire \InstrFetch/PC_Adder/Madd_result_cy<6>_rt_72 ;
  wire \InstrFetch/PC_Adder/Madd_result_cy<5>_rt_73 ;
  wire \InstrFetch/PC_Adder/Madd_result_cy<4>_rt_74 ;
  wire \InstrFetch/PC_Adder/Madd_result_cy<3>_rt_75 ;
  wire \InstrFetch_InstrMem/Mram_MemContent14_f71 ;
  wire \InstrFetch_InstrMem/Mram_MemContent143_77 ;
  wire \InstrFetch_InstrMem/Mram_MemContent142_78 ;
  wire \InstrFetch_InstrMem/Mram_MemContent14_f7_79 ;
  wire \InstrFetch_InstrMem/Mram_MemContent141_80 ;
  wire \InstrFetch_InstrMem/Mram_MemContent14_81 ;
  wire \InstrFetch_InstrMem/Mram_MemContent12_f71 ;
  wire \InstrFetch_InstrMem/Mram_MemContent123_83 ;
  wire \InstrFetch_InstrMem/Mram_MemContent122_84 ;
  wire \InstrFetch_InstrMem/Mram_MemContent12_f7_85 ;
  wire \InstrFetch_InstrMem/Mram_MemContent121_86 ;
  wire \InstrFetch_InstrMem/Mram_MemContent12_87 ;
  wire \InstrFetch_InstrMem/Mram_MemContent10_f71 ;
  wire \InstrFetch_InstrMem/Mram_MemContent103_89 ;
  wire \InstrFetch_InstrMem/Mram_MemContent102_90 ;
  wire \InstrFetch_InstrMem/Mram_MemContent10_f7_91 ;
  wire \InstrFetch_InstrMem/Mram_MemContent101_92 ;
  wire \InstrFetch_InstrMem/Mram_MemContent10_93 ;
  wire \InstrFetch_InstrMem/Mram_MemContent8_f71 ;
  wire \InstrFetch_InstrMem/Mram_MemContent83_95 ;
  wire \InstrFetch_InstrMem/Mram_MemContent82_96 ;
  wire \InstrFetch_InstrMem/Mram_MemContent8_f7_97 ;
  wire \InstrFetch_InstrMem/Mram_MemContent81_98 ;
  wire \InstrFetch_InstrMem/Mram_MemContent8_99 ;
  wire \InstrFetch_InstrMem/Mram_MemContent6_f71 ;
  wire \InstrFetch_InstrMem/Mram_MemContent63_101 ;
  wire \InstrFetch_InstrMem/Mram_MemContent62_102 ;
  wire \InstrFetch_InstrMem/Mram_MemContent6_f7_103 ;
  wire \InstrFetch_InstrMem/Mram_MemContent61_104 ;
  wire \InstrFetch_InstrMem/Mram_MemContent6_105 ;
  wire \InstrFetch_InstrMem/Mram_MemContent4_f71 ;
  wire \InstrFetch_InstrMem/Mram_MemContent43_107 ;
  wire \InstrFetch_InstrMem/Mram_MemContent42_108 ;
  wire \InstrFetch_InstrMem/Mram_MemContent4_f7_109 ;
  wire \InstrFetch_InstrMem/Mram_MemContent41_110 ;
  wire \InstrFetch_InstrMem/Mram_MemContent4_111 ;
  wire \InstrFetch_InstrMem/Mram_MemContent2_f71 ;
  wire \InstrFetch_InstrMem/Mram_MemContent24_113 ;
  wire \InstrFetch_InstrMem/Mram_MemContent23_114 ;
  wire \InstrFetch_InstrMem/Mram_MemContent2_f7_115 ;
  wire \InstrFetch_InstrMem/Mram_MemContent22_116 ;
  wire \InstrFetch_InstrMem/Mram_MemContent21_117 ;
  wire \InstrFetch_InstrMem/Mram_MemContent_f71 ;
  wire \InstrFetch_InstrMem/Mram_MemContent3_119 ;
  wire \InstrFetch_InstrMem/Mram_MemContent2_120 ;
  wire \InstrFetch_InstrMem/Mram_MemContent_f7_121 ;
  wire \InstrFetch_InstrMem/Mram_MemContent1_122 ;
  wire \InstrFetch_InstrMem/Mram_MemContent ;
  wire [2 : 2] ALUCtr;
  wire [8 : 2] \InstrFetch/PC_Adder/Madd_result_cy ;
  wire [2 : 2] \InstrFetch/PC_Adder/Madd_result_lut ;
  wire [9 : 2] \InstrFetch/PC1/output ;
  wire [9 : 2] \InstrFetch/PC_new_value ;
  wire [0 : 0] \RegFile/E ;
  GND   XST_GND (
    .G(MemRead)
  );
  VCC   XST_VCC (
    .P(\RegFile/E [0])
  );
  XORCY   \InstrFetch/PC_Adder/Madd_result_xor<9>  (
    .CI(\InstrFetch/PC_Adder/Madd_result_cy [8]),
    .LI(\InstrFetch/PC1/output [9]),
    .O(\InstrFetch/PC_new_value [9])
  );
  XORCY   \InstrFetch/PC_Adder/Madd_result_xor<8>  (
    .CI(\InstrFetch/PC_Adder/Madd_result_cy [7]),
    .LI(\InstrFetch/PC_Adder/Madd_result_cy<8>_rt_70 ),
    .O(\InstrFetch/PC_new_value [8])
  );
  MUXCY   \InstrFetch/PC_Adder/Madd_result_cy<8>  (
    .CI(\InstrFetch/PC_Adder/Madd_result_cy [7]),
    .DI(MemRead),
    .S(\InstrFetch/PC_Adder/Madd_result_cy<8>_rt_70 ),
    .O(\InstrFetch/PC_Adder/Madd_result_cy [8])
  );
  XORCY   \InstrFetch/PC_Adder/Madd_result_xor<7>  (
    .CI(\InstrFetch/PC_Adder/Madd_result_cy [6]),
    .LI(\InstrFetch/PC_Adder/Madd_result_cy<7>_rt_71 ),
    .O(\InstrFetch/PC_new_value [7])
  );
  MUXCY   \InstrFetch/PC_Adder/Madd_result_cy<7>  (
    .CI(\InstrFetch/PC_Adder/Madd_result_cy [6]),
    .DI(MemRead),
    .S(\InstrFetch/PC_Adder/Madd_result_cy<7>_rt_71 ),
    .O(\InstrFetch/PC_Adder/Madd_result_cy [7])
  );
  XORCY   \InstrFetch/PC_Adder/Madd_result_xor<6>  (
    .CI(\InstrFetch/PC_Adder/Madd_result_cy [5]),
    .LI(\InstrFetch/PC_Adder/Madd_result_cy<6>_rt_72 ),
    .O(\InstrFetch/PC_new_value [6])
  );
  MUXCY   \InstrFetch/PC_Adder/Madd_result_cy<6>  (
    .CI(\InstrFetch/PC_Adder/Madd_result_cy [5]),
    .DI(MemRead),
    .S(\InstrFetch/PC_Adder/Madd_result_cy<6>_rt_72 ),
    .O(\InstrFetch/PC_Adder/Madd_result_cy [6])
  );
  XORCY   \InstrFetch/PC_Adder/Madd_result_xor<5>  (
    .CI(\InstrFetch/PC_Adder/Madd_result_cy [4]),
    .LI(\InstrFetch/PC_Adder/Madd_result_cy<5>_rt_73 ),
    .O(\InstrFetch/PC_new_value [5])
  );
  MUXCY   \InstrFetch/PC_Adder/Madd_result_cy<5>  (
    .CI(\InstrFetch/PC_Adder/Madd_result_cy [4]),
    .DI(MemRead),
    .S(\InstrFetch/PC_Adder/Madd_result_cy<5>_rt_73 ),
    .O(\InstrFetch/PC_Adder/Madd_result_cy [5])
  );
  XORCY   \InstrFetch/PC_Adder/Madd_result_xor<4>  (
    .CI(\InstrFetch/PC_Adder/Madd_result_cy [3]),
    .LI(\InstrFetch/PC_Adder/Madd_result_cy<4>_rt_74 ),
    .O(\InstrFetch/PC_new_value [4])
  );
  MUXCY   \InstrFetch/PC_Adder/Madd_result_cy<4>  (
    .CI(\InstrFetch/PC_Adder/Madd_result_cy [3]),
    .DI(MemRead),
    .S(\InstrFetch/PC_Adder/Madd_result_cy<4>_rt_74 ),
    .O(\InstrFetch/PC_Adder/Madd_result_cy [4])
  );
  XORCY   \InstrFetch/PC_Adder/Madd_result_xor<3>  (
    .CI(\InstrFetch/PC_Adder/Madd_result_cy [2]),
    .LI(\InstrFetch/PC_Adder/Madd_result_cy<3>_rt_75 ),
    .O(\InstrFetch/PC_new_value [3])
  );
  MUXCY   \InstrFetch/PC_Adder/Madd_result_cy<3>  (
    .CI(\InstrFetch/PC_Adder/Madd_result_cy [2]),
    .DI(MemRead),
    .S(\InstrFetch/PC_Adder/Madd_result_cy<3>_rt_75 ),
    .O(\InstrFetch/PC_Adder/Madd_result_cy [3])
  );
  XORCY   \InstrFetch/PC_Adder/Madd_result_xor<2>  (
    .CI(MemRead),
    .LI(\InstrFetch/PC_Adder/Madd_result_lut [2]),
    .O(\InstrFetch/PC_new_value [2])
  );
  MUXCY   \InstrFetch/PC_Adder/Madd_result_cy<2>  (
    .CI(MemRead),
    .DI(\RegFile/E [0]),
    .S(\InstrFetch/PC_Adder/Madd_result_lut [2]),
    .O(\InstrFetch/PC_Adder/Madd_result_cy [2])
  );
  FDC   \InstrFetch/PC1/output_9  (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(\InstrFetch/PC_new_value [9]),
    .Q(\InstrFetch/PC1/output [9])
  );
  FDC   \InstrFetch/PC1/output_8  (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(\InstrFetch/PC_new_value [8]),
    .Q(\InstrFetch/PC1/output [8])
  );
  FDC   \InstrFetch/PC1/output_7  (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(\InstrFetch/PC_new_value [7]),
    .Q(\InstrFetch/PC1/output [7])
  );
  FDC   \InstrFetch/PC1/output_6  (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(\InstrFetch/PC_new_value [6]),
    .Q(\InstrFetch/PC1/output [6])
  );
  FDC   \InstrFetch/PC1/output_5  (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(\InstrFetch/PC_new_value [5]),
    .Q(\InstrFetch/PC1/output [5])
  );
  FDC   \InstrFetch/PC1/output_4  (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(\InstrFetch/PC_new_value [4]),
    .Q(\InstrFetch/PC1/output [4])
  );
  FDC   \InstrFetch/PC1/output_3  (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(\InstrFetch/PC_new_value [3]),
    .Q(\InstrFetch/PC1/output [3])
  );
  FDC   \InstrFetch/PC1/output_2  (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(\InstrFetch/PC_new_value [2]),
    .Q(\InstrFetch/PC1/output [2])
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_1)
  );
  OBUF   instruction_31_OBUF (
    .I(MemRead),
    .O(instruction[31])
  );
  OBUF   instruction_30_OBUF (
    .I(MemRead),
    .O(instruction[30])
  );
  OBUF   instruction_29_OBUF (
    .I(MemRead),
    .O(instruction[29])
  );
  OBUF   instruction_28_OBUF (
    .I(MemRead),
    .O(instruction[28])
  );
  OBUF   instruction_27_OBUF (
    .I(MemRead),
    .O(instruction[27])
  );
  OBUF   instruction_26_OBUF (
    .I(MemRead),
    .O(instruction[26])
  );
  OBUF   instruction_25_OBUF (
    .I(MemRead),
    .O(instruction[25])
  );
  OBUF   instruction_24_OBUF (
    .I(MemRead),
    .O(instruction[24])
  );
  OBUF   instruction_23_OBUF (
    .I(MemRead),
    .O(instruction[23])
  );
  OBUF   instruction_22_OBUF (
    .I(MemRead),
    .O(instruction[22])
  );
  OBUF   instruction_21_OBUF (
    .I(MemRead),
    .O(instruction[21])
  );
  OBUF   instruction_20_OBUF (
    .I(MemRead),
    .O(instruction[20])
  );
  OBUF   instruction_19_OBUF (
    .I(MemRead),
    .O(instruction[19])
  );
  OBUF   instruction_18_OBUF (
    .I(MemRead),
    .O(instruction[18])
  );
  OBUF   instruction_17_OBUF (
    .I(MemRead),
    .O(instruction[17])
  );
  OBUF   instruction_16_OBUF (
    .I(MemRead),
    .O(instruction[16])
  );
  OBUF   instruction_15_OBUF (
    .I(MemRead),
    .O(instruction[15])
  );
  OBUF   instruction_14_OBUF (
    .I(MemRead),
    .O(instruction[14])
  );
  OBUF   instruction_13_OBUF (
    .I(MemRead),
    .O(instruction[13])
  );
  OBUF   instruction_12_OBUF (
    .I(MemRead),
    .O(instruction[12])
  );
  OBUF   instruction_11_OBUF (
    .I(MemRead),
    .O(instruction[11])
  );
  OBUF   instruction_10_OBUF (
    .I(MemRead),
    .O(instruction[10])
  );
  OBUF   instruction_9_OBUF (
    .I(MemRead),
    .O(instruction[9])
  );
  OBUF   instruction_8_OBUF (
    .I(MemRead),
    .O(instruction[8])
  );
  OBUF   instruction_7_OBUF (
    .I(instruction_7_OBUF_4),
    .O(instruction[7])
  );
  OBUF   instruction_6_OBUF (
    .I(instruction_6_OBUF_5),
    .O(instruction[6])
  );
  OBUF   instruction_5_OBUF (
    .I(instruction_5_OBUF_6),
    .O(instruction[5])
  );
  OBUF   instruction_4_OBUF (
    .I(instruction_4_OBUF_7),
    .O(instruction[4])
  );
  OBUF   instruction_3_OBUF (
    .I(instruction_3_OBUF_8),
    .O(instruction[3])
  );
  OBUF   instruction_2_OBUF (
    .I(instruction_2_OBUF_9),
    .O(instruction[2])
  );
  OBUF   instruction_1_OBUF (
    .I(ALUCtr[2]),
    .O(instruction[1])
  );
  OBUF   instruction_0_OBUF (
    .I(instruction_0_OBUF_10),
    .O(instruction[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \InstrFetch/PC_Adder/Madd_result_cy<8>_rt  (
    .I0(\InstrFetch/PC1/output [8]),
    .O(\InstrFetch/PC_Adder/Madd_result_cy<8>_rt_70 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \InstrFetch/PC_Adder/Madd_result_cy<7>_rt  (
    .I0(\InstrFetch/PC1/output [7]),
    .O(\InstrFetch/PC_Adder/Madd_result_cy<7>_rt_71 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \InstrFetch/PC_Adder/Madd_result_cy<6>_rt  (
    .I0(\InstrFetch/PC1/output [6]),
    .O(\InstrFetch/PC_Adder/Madd_result_cy<6>_rt_72 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \InstrFetch/PC_Adder/Madd_result_cy<5>_rt  (
    .I0(\InstrFetch/PC1/output [5]),
    .O(\InstrFetch/PC_Adder/Madd_result_cy<5>_rt_73 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \InstrFetch/PC_Adder/Madd_result_cy<4>_rt  (
    .I0(\InstrFetch/PC1/output [4]),
    .O(\InstrFetch/PC_Adder/Madd_result_cy<4>_rt_74 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \InstrFetch/PC_Adder/Madd_result_cy<3>_rt  (
    .I0(\InstrFetch/PC1/output [3]),
    .O(\InstrFetch/PC_Adder/Madd_result_cy<3>_rt_75 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_0)
  );
  INV   \InstrFetch/PC_Adder/Madd_result_lut<2>_INV_0  (
    .I(\InstrFetch/PC1/output [2]),
    .O(\InstrFetch/PC_Adder/Madd_result_lut [2])
  );
  MUXF8   \InstrFetch_InstrMem/Mram_MemContent14_f8  (
    .I0(\InstrFetch_InstrMem/Mram_MemContent14_f71 ),
    .I1(\InstrFetch_InstrMem/Mram_MemContent14_f7_79 ),
    .S(\InstrFetch/PC1/output [9]),
    .O(instruction_7_OBUF_4)
  );
  MUXF8   \InstrFetch_InstrMem/Mram_MemContent12_f8  (
    .I0(\InstrFetch_InstrMem/Mram_MemContent12_f71 ),
    .I1(\InstrFetch_InstrMem/Mram_MemContent12_f7_85 ),
    .S(\InstrFetch/PC1/output [9]),
    .O(instruction_6_OBUF_5)
  );
  MUXF8   \InstrFetch_InstrMem/Mram_MemContent10_f8  (
    .I0(\InstrFetch_InstrMem/Mram_MemContent10_f71 ),
    .I1(\InstrFetch_InstrMem/Mram_MemContent10_f7_91 ),
    .S(\InstrFetch/PC1/output [9]),
    .O(instruction_5_OBUF_6)
  );
  MUXF8   \InstrFetch_InstrMem/Mram_MemContent8_f8  (
    .I0(\InstrFetch_InstrMem/Mram_MemContent8_f71 ),
    .I1(\InstrFetch_InstrMem/Mram_MemContent8_f7_97 ),
    .S(\InstrFetch/PC1/output [9]),
    .O(instruction_4_OBUF_7)
  );
  MUXF8   \InstrFetch_InstrMem/Mram_MemContent6_f8  (
    .I0(\InstrFetch_InstrMem/Mram_MemContent6_f71 ),
    .I1(\InstrFetch_InstrMem/Mram_MemContent6_f7_103 ),
    .S(\InstrFetch/PC1/output [9]),
    .O(instruction_3_OBUF_8)
  );
  MUXF8   \InstrFetch_InstrMem/Mram_MemContent4_f8  (
    .I0(\InstrFetch_InstrMem/Mram_MemContent4_f71 ),
    .I1(\InstrFetch_InstrMem/Mram_MemContent4_f7_109 ),
    .S(\InstrFetch/PC1/output [9]),
    .O(instruction_2_OBUF_9)
  );
  MUXF8   \InstrFetch_InstrMem/Mram_MemContent2_f8  (
    .I0(\InstrFetch_InstrMem/Mram_MemContent2_f71 ),
    .I1(\InstrFetch_InstrMem/Mram_MemContent2_f7_115 ),
    .S(\InstrFetch/PC1/output [9]),
    .O(ALUCtr[2])
  );
  MUXF8   \InstrFetch_InstrMem/Mram_MemContent_f8  (
    .I0(\InstrFetch_InstrMem/Mram_MemContent_f71 ),
    .I1(\InstrFetch_InstrMem/Mram_MemContent_f7_121 ),
    .S(\InstrFetch/PC1/output [9]),
    .O(instruction_0_OBUF_10)
  );
  MUXF7   \InstrFetch_InstrMem/Mram_MemContent14_f7_0  (
    .I0(\InstrFetch_InstrMem/Mram_MemContent143_77 ),
    .I1(\InstrFetch_InstrMem/Mram_MemContent142_78 ),
    .S(\InstrFetch/PC1/output [8]),
    .O(\InstrFetch_InstrMem/Mram_MemContent14_f71 )
  );
  MUXF7   \InstrFetch_InstrMem/Mram_MemContent14_f7  (
    .I0(\InstrFetch_InstrMem/Mram_MemContent141_80 ),
    .I1(\InstrFetch_InstrMem/Mram_MemContent14_81 ),
    .S(\InstrFetch/PC1/output [8]),
    .O(\InstrFetch_InstrMem/Mram_MemContent14_f7_79 )
  );
  MUXF7   \InstrFetch_InstrMem/Mram_MemContent12_f7  (
    .I0(\InstrFetch_InstrMem/Mram_MemContent121_86 ),
    .I1(\InstrFetch_InstrMem/Mram_MemContent12_87 ),
    .S(\InstrFetch/PC1/output [8]),
    .O(\InstrFetch_InstrMem/Mram_MemContent12_f7_85 )
  );
  MUXF7   \InstrFetch_InstrMem/Mram_MemContent12_f7_0  (
    .I0(\InstrFetch_InstrMem/Mram_MemContent123_83 ),
    .I1(\InstrFetch_InstrMem/Mram_MemContent122_84 ),
    .S(\InstrFetch/PC1/output [8]),
    .O(\InstrFetch_InstrMem/Mram_MemContent12_f71 )
  );
  MUXF7   \InstrFetch_InstrMem/Mram_MemContent10_f7  (
    .I0(\InstrFetch_InstrMem/Mram_MemContent101_92 ),
    .I1(\InstrFetch_InstrMem/Mram_MemContent10_93 ),
    .S(\InstrFetch/PC1/output [8]),
    .O(\InstrFetch_InstrMem/Mram_MemContent10_f7_91 )
  );
  MUXF7   \InstrFetch_InstrMem/Mram_MemContent8_f7  (
    .I0(\InstrFetch_InstrMem/Mram_MemContent81_98 ),
    .I1(\InstrFetch_InstrMem/Mram_MemContent8_99 ),
    .S(\InstrFetch/PC1/output [8]),
    .O(\InstrFetch_InstrMem/Mram_MemContent8_f7_97 )
  );
  MUXF7   \InstrFetch_InstrMem/Mram_MemContent10_f7_0  (
    .I0(\InstrFetch_InstrMem/Mram_MemContent103_89 ),
    .I1(\InstrFetch_InstrMem/Mram_MemContent102_90 ),
    .S(\InstrFetch/PC1/output [8]),
    .O(\InstrFetch_InstrMem/Mram_MemContent10_f71 )
  );
  MUXF7   \InstrFetch_InstrMem/Mram_MemContent8_f7_0  (
    .I0(\InstrFetch_InstrMem/Mram_MemContent83_95 ),
    .I1(\InstrFetch_InstrMem/Mram_MemContent82_96 ),
    .S(\InstrFetch/PC1/output [8]),
    .O(\InstrFetch_InstrMem/Mram_MemContent8_f71 )
  );
  MUXF7   \InstrFetch_InstrMem/Mram_MemContent6_f7  (
    .I0(\InstrFetch_InstrMem/Mram_MemContent61_104 ),
    .I1(\InstrFetch_InstrMem/Mram_MemContent6_105 ),
    .S(\InstrFetch/PC1/output [8]),
    .O(\InstrFetch_InstrMem/Mram_MemContent6_f7_103 )
  );
  MUXF7   \InstrFetch_InstrMem/Mram_MemContent6_f7_0  (
    .I0(\InstrFetch_InstrMem/Mram_MemContent63_101 ),
    .I1(\InstrFetch_InstrMem/Mram_MemContent62_102 ),
    .S(\InstrFetch/PC1/output [8]),
    .O(\InstrFetch_InstrMem/Mram_MemContent6_f71 )
  );
  MUXF7   \InstrFetch_InstrMem/Mram_MemContent4_f7  (
    .I0(\InstrFetch_InstrMem/Mram_MemContent41_110 ),
    .I1(\InstrFetch_InstrMem/Mram_MemContent4_111 ),
    .S(\InstrFetch/PC1/output [8]),
    .O(\InstrFetch_InstrMem/Mram_MemContent4_f7_109 )
  );
  MUXF7   \InstrFetch_InstrMem/Mram_MemContent4_f7_0  (
    .I0(\InstrFetch_InstrMem/Mram_MemContent43_107 ),
    .I1(\InstrFetch_InstrMem/Mram_MemContent42_108 ),
    .S(\InstrFetch/PC1/output [8]),
    .O(\InstrFetch_InstrMem/Mram_MemContent4_f71 )
  );
  MUXF7   \InstrFetch_InstrMem/Mram_MemContent2_f7  (
    .I0(\InstrFetch_InstrMem/Mram_MemContent22_116 ),
    .I1(\InstrFetch_InstrMem/Mram_MemContent21_117 ),
    .S(\InstrFetch/PC1/output [8]),
    .O(\InstrFetch_InstrMem/Mram_MemContent2_f7_115 )
  );
  MUXF7   \InstrFetch_InstrMem/Mram_MemContent2_f7_0  (
    .I0(\InstrFetch_InstrMem/Mram_MemContent24_113 ),
    .I1(\InstrFetch_InstrMem/Mram_MemContent23_114 ),
    .S(\InstrFetch/PC1/output [8]),
    .O(\InstrFetch_InstrMem/Mram_MemContent2_f71 )
  );
  MUXF7   \InstrFetch_InstrMem/Mram_MemContent_f7_0  (
    .I0(\InstrFetch_InstrMem/Mram_MemContent3_119 ),
    .I1(\InstrFetch_InstrMem/Mram_MemContent2_120 ),
    .S(\InstrFetch/PC1/output [8]),
    .O(\InstrFetch_InstrMem/Mram_MemContent_f71 )
  );
  MUXF7   \InstrFetch_InstrMem/Mram_MemContent_f7  (
    .I0(\InstrFetch_InstrMem/Mram_MemContent1_122 ),
    .I1(\InstrFetch_InstrMem/Mram_MemContent ),
    .S(\InstrFetch/PC1/output [8]),
    .O(\InstrFetch_InstrMem/Mram_MemContent_f7_121 )
  );
  LUT6 #(
    .INIT ( 64'h7D3B46E2E1D3AC46 ))
  \InstrFetch_InstrMem/Mram_MemContent143  (
    .I0(\InstrFetch/PC1/output [4]),
    .I1(\InstrFetch/PC1/output [7]),
    .I2(\InstrFetch/PC1/output [2]),
    .I3(\InstrFetch/PC1/output [3]),
    .I4(\InstrFetch/PC1/output [6]),
    .I5(\InstrFetch/PC1/output [5]),
    .O(\InstrFetch_InstrMem/Mram_MemContent143_77 )
  );
  LUT6 #(
    .INIT ( 64'hF8A2AC684E78BB8A ))
  \InstrFetch_InstrMem/Mram_MemContent142  (
    .I0(\InstrFetch/PC1/output [2]),
    .I1(\InstrFetch/PC1/output [6]),
    .I2(\InstrFetch/PC1/output [3]),
    .I3(\InstrFetch/PC1/output [7]),
    .I4(\InstrFetch/PC1/output [5]),
    .I5(\InstrFetch/PC1/output [4]),
    .O(\InstrFetch_InstrMem/Mram_MemContent142_78 )
  );
  LUT6 #(
    .INIT ( 64'h28538BA6F25908B1 ))
  \InstrFetch_InstrMem/Mram_MemContent141  (
    .I0(\InstrFetch/PC1/output [6]),
    .I1(\InstrFetch/PC1/output [4]),
    .I2(\InstrFetch/PC1/output [7]),
    .I3(\InstrFetch/PC1/output [3]),
    .I4(\InstrFetch/PC1/output [5]),
    .I5(\InstrFetch/PC1/output [2]),
    .O(\InstrFetch_InstrMem/Mram_MemContent141_80 )
  );
  LUT6 #(
    .INIT ( 64'h65D839E55372EF41 ))
  \InstrFetch_InstrMem/Mram_MemContent14  (
    .I0(\InstrFetch/PC1/output [6]),
    .I1(\InstrFetch/PC1/output [2]),
    .I2(\InstrFetch/PC1/output [4]),
    .I3(\InstrFetch/PC1/output [7]),
    .I4(\InstrFetch/PC1/output [3]),
    .I5(\InstrFetch/PC1/output [5]),
    .O(\InstrFetch_InstrMem/Mram_MemContent14_81 )
  );
  LUT6 #(
    .INIT ( 64'hD753B91D1D9D6311 ))
  \InstrFetch_InstrMem/Mram_MemContent123  (
    .I0(\InstrFetch/PC1/output [7]),
    .I1(\InstrFetch/PC1/output [5]),
    .I2(\InstrFetch/PC1/output [6]),
    .I3(\InstrFetch/PC1/output [2]),
    .I4(\InstrFetch/PC1/output [4]),
    .I5(\InstrFetch/PC1/output [3]),
    .O(\InstrFetch_InstrMem/Mram_MemContent123_83 )
  );
  LUT6 #(
    .INIT ( 64'h99A28A949557EEB2 ))
  \InstrFetch_InstrMem/Mram_MemContent122  (
    .I0(\InstrFetch/PC1/output [6]),
    .I1(\InstrFetch/PC1/output [4]),
    .I2(\InstrFetch/PC1/output [5]),
    .I3(\InstrFetch/PC1/output [2]),
    .I4(\InstrFetch/PC1/output [7]),
    .I5(\InstrFetch/PC1/output [3]),
    .O(\InstrFetch_InstrMem/Mram_MemContent122_84 )
  );
  LUT6 #(
    .INIT ( 64'h7ADE2D8829DF943F ))
  \InstrFetch_InstrMem/Mram_MemContent121  (
    .I0(\InstrFetch/PC1/output [7]),
    .I1(\InstrFetch/PC1/output [6]),
    .I2(\InstrFetch/PC1/output [4]),
    .I3(\InstrFetch/PC1/output [3]),
    .I4(\InstrFetch/PC1/output [5]),
    .I5(\InstrFetch/PC1/output [2]),
    .O(\InstrFetch_InstrMem/Mram_MemContent121_86 )
  );
  LUT6 #(
    .INIT ( 64'h6214F183404A396E ))
  \InstrFetch_InstrMem/Mram_MemContent12  (
    .I0(\InstrFetch/PC1/output [5]),
    .I1(\InstrFetch/PC1/output [6]),
    .I2(\InstrFetch/PC1/output [4]),
    .I3(\InstrFetch/PC1/output [7]),
    .I4(\InstrFetch/PC1/output [3]),
    .I5(\InstrFetch/PC1/output [2]),
    .O(\InstrFetch_InstrMem/Mram_MemContent12_87 )
  );
  LUT6 #(
    .INIT ( 64'h8B6B9B97B6FB3319 ))
  \InstrFetch_InstrMem/Mram_MemContent103  (
    .I0(\InstrFetch/PC1/output [5]),
    .I1(\InstrFetch/PC1/output [6]),
    .I2(\InstrFetch/PC1/output [2]),
    .I3(\InstrFetch/PC1/output [7]),
    .I4(\InstrFetch/PC1/output [3]),
    .I5(\InstrFetch/PC1/output [4]),
    .O(\InstrFetch_InstrMem/Mram_MemContent103_89 )
  );
  LUT6 #(
    .INIT ( 64'h6DA316E9A0EA3E60 ))
  \InstrFetch_InstrMem/Mram_MemContent102  (
    .I0(\InstrFetch/PC1/output [2]),
    .I1(\InstrFetch/PC1/output [6]),
    .I2(\InstrFetch/PC1/output [5]),
    .I3(\InstrFetch/PC1/output [4]),
    .I4(\InstrFetch/PC1/output [7]),
    .I5(\InstrFetch/PC1/output [3]),
    .O(\InstrFetch_InstrMem/Mram_MemContent102_90 )
  );
  LUT6 #(
    .INIT ( 64'h38A2B9FA8494528E ))
  \InstrFetch_InstrMem/Mram_MemContent101  (
    .I0(\InstrFetch/PC1/output [7]),
    .I1(\InstrFetch/PC1/output [6]),
    .I2(\InstrFetch/PC1/output [5]),
    .I3(\InstrFetch/PC1/output [2]),
    .I4(\InstrFetch/PC1/output [4]),
    .I5(\InstrFetch/PC1/output [3]),
    .O(\InstrFetch_InstrMem/Mram_MemContent101_92 )
  );
  LUT6 #(
    .INIT ( 64'h0685149FA95585A7 ))
  \InstrFetch_InstrMem/Mram_MemContent10  (
    .I0(\InstrFetch/PC1/output [7]),
    .I1(\InstrFetch/PC1/output [6]),
    .I2(\InstrFetch/PC1/output [4]),
    .I3(\InstrFetch/PC1/output [5]),
    .I4(\InstrFetch/PC1/output [3]),
    .I5(\InstrFetch/PC1/output [2]),
    .O(\InstrFetch_InstrMem/Mram_MemContent10_93 )
  );
  LUT6 #(
    .INIT ( 64'hE265B181796973F0 ))
  \InstrFetch_InstrMem/Mram_MemContent83  (
    .I0(\InstrFetch/PC1/output [5]),
    .I1(\InstrFetch/PC1/output [6]),
    .I2(\InstrFetch/PC1/output [4]),
    .I3(\InstrFetch/PC1/output [7]),
    .I4(\InstrFetch/PC1/output [2]),
    .I5(\InstrFetch/PC1/output [3]),
    .O(\InstrFetch_InstrMem/Mram_MemContent83_95 )
  );
  LUT6 #(
    .INIT ( 64'hA5EAECF965E63416 ))
  \InstrFetch_InstrMem/Mram_MemContent82  (
    .I0(\InstrFetch/PC1/output [4]),
    .I1(\InstrFetch/PC1/output [5]),
    .I2(\InstrFetch/PC1/output [6]),
    .I3(\InstrFetch/PC1/output [2]),
    .I4(\InstrFetch/PC1/output [3]),
    .I5(\InstrFetch/PC1/output [7]),
    .O(\InstrFetch_InstrMem/Mram_MemContent82_96 )
  );
  LUT6 #(
    .INIT ( 64'h761CF6642448D21C ))
  \InstrFetch_InstrMem/Mram_MemContent81  (
    .I0(\InstrFetch/PC1/output [7]),
    .I1(\InstrFetch/PC1/output [3]),
    .I2(\InstrFetch/PC1/output [4]),
    .I3(\InstrFetch/PC1/output [2]),
    .I4(\InstrFetch/PC1/output [6]),
    .I5(\InstrFetch/PC1/output [5]),
    .O(\InstrFetch_InstrMem/Mram_MemContent81_98 )
  );
  LUT6 #(
    .INIT ( 64'hEC55B8F225262975 ))
  \InstrFetch_InstrMem/Mram_MemContent8  (
    .I0(\InstrFetch/PC1/output [7]),
    .I1(\InstrFetch/PC1/output [6]),
    .I2(\InstrFetch/PC1/output [2]),
    .I3(\InstrFetch/PC1/output [4]),
    .I4(\InstrFetch/PC1/output [3]),
    .I5(\InstrFetch/PC1/output [5]),
    .O(\InstrFetch_InstrMem/Mram_MemContent8_99 )
  );
  LUT6 #(
    .INIT ( 64'h0502208EA5063B8C ))
  \InstrFetch_InstrMem/Mram_MemContent63  (
    .I0(\InstrFetch/PC1/output [4]),
    .I1(\InstrFetch/PC1/output [6]),
    .I2(\InstrFetch/PC1/output [7]),
    .I3(\InstrFetch/PC1/output [2]),
    .I4(\InstrFetch/PC1/output [3]),
    .I5(\InstrFetch/PC1/output [5]),
    .O(\InstrFetch_InstrMem/Mram_MemContent63_101 )
  );
  LUT6 #(
    .INIT ( 64'h3C6EBD4E5D93BA03 ))
  \InstrFetch_InstrMem/Mram_MemContent62  (
    .I0(\InstrFetch/PC1/output [4]),
    .I1(\InstrFetch/PC1/output [6]),
    .I2(\InstrFetch/PC1/output [7]),
    .I3(\InstrFetch/PC1/output [2]),
    .I4(\InstrFetch/PC1/output [3]),
    .I5(\InstrFetch/PC1/output [5]),
    .O(\InstrFetch_InstrMem/Mram_MemContent62_102 )
  );
  LUT6 #(
    .INIT ( 64'hE9B7ED8E82E83895 ))
  \InstrFetch_InstrMem/Mram_MemContent61  (
    .I0(\InstrFetch/PC1/output [6]),
    .I1(\InstrFetch/PC1/output [2]),
    .I2(\InstrFetch/PC1/output [4]),
    .I3(\InstrFetch/PC1/output [7]),
    .I4(\InstrFetch/PC1/output [5]),
    .I5(\InstrFetch/PC1/output [3]),
    .O(\InstrFetch_InstrMem/Mram_MemContent61_104 )
  );
  LUT6 #(
    .INIT ( 64'h7FEC98B415D5736D ))
  \InstrFetch_InstrMem/Mram_MemContent6  (
    .I0(\InstrFetch/PC1/output [6]),
    .I1(\InstrFetch/PC1/output [2]),
    .I2(\InstrFetch/PC1/output [7]),
    .I3(\InstrFetch/PC1/output [4]),
    .I4(\InstrFetch/PC1/output [5]),
    .I5(\InstrFetch/PC1/output [3]),
    .O(\InstrFetch_InstrMem/Mram_MemContent6_105 )
  );
  LUT6 #(
    .INIT ( 64'hB513D21E26C2EBE6 ))
  \InstrFetch_InstrMem/Mram_MemContent44  (
    .I0(\InstrFetch/PC1/output [7]),
    .I1(\InstrFetch/PC1/output [3]),
    .I2(\InstrFetch/PC1/output [4]),
    .I3(\InstrFetch/PC1/output [2]),
    .I4(\InstrFetch/PC1/output [6]),
    .I5(\InstrFetch/PC1/output [5]),
    .O(\InstrFetch_InstrMem/Mram_MemContent43_107 )
  );
  LUT6 #(
    .INIT ( 64'h59EC022068D48B20 ))
  \InstrFetch_InstrMem/Mram_MemContent43  (
    .I0(\InstrFetch/PC1/output [5]),
    .I1(\InstrFetch/PC1/output [4]),
    .I2(\InstrFetch/PC1/output [7]),
    .I3(\InstrFetch/PC1/output [3]),
    .I4(\InstrFetch/PC1/output [2]),
    .I5(\InstrFetch/PC1/output [6]),
    .O(\InstrFetch_InstrMem/Mram_MemContent42_108 )
  );
  LUT6 #(
    .INIT ( 64'h164C727FFFA8527D ))
  \InstrFetch_InstrMem/Mram_MemContent42  (
    .I0(\InstrFetch/PC1/output [3]),
    .I1(\InstrFetch/PC1/output [4]),
    .I2(\InstrFetch/PC1/output [5]),
    .I3(\InstrFetch/PC1/output [6]),
    .I4(\InstrFetch/PC1/output [7]),
    .I5(\InstrFetch/PC1/output [2]),
    .O(\InstrFetch_InstrMem/Mram_MemContent41_110 )
  );
  LUT6 #(
    .INIT ( 64'hDBA7A5CE4F673882 ))
  \InstrFetch_InstrMem/Mram_MemContent41  (
    .I0(\InstrFetch/PC1/output [4]),
    .I1(\InstrFetch/PC1/output [5]),
    .I2(\InstrFetch/PC1/output [7]),
    .I3(\InstrFetch/PC1/output [6]),
    .I4(\InstrFetch/PC1/output [3]),
    .I5(\InstrFetch/PC1/output [2]),
    .O(\InstrFetch_InstrMem/Mram_MemContent4_111 )
  );
  LUT6 #(
    .INIT ( 64'h35D593AFA5A19FD3 ))
  \InstrFetch_InstrMem/Mram_MemContent24  (
    .I0(\InstrFetch/PC1/output [7]),
    .I1(\InstrFetch/PC1/output [2]),
    .I2(\InstrFetch/PC1/output [6]),
    .I3(\InstrFetch/PC1/output [4]),
    .I4(\InstrFetch/PC1/output [5]),
    .I5(\InstrFetch/PC1/output [3]),
    .O(\InstrFetch_InstrMem/Mram_MemContent24_113 )
  );
  LUT6 #(
    .INIT ( 64'hC951A45B6AF24DEE ))
  \InstrFetch_InstrMem/Mram_MemContent23  (
    .I0(\InstrFetch/PC1/output [2]),
    .I1(\InstrFetch/PC1/output [5]),
    .I2(\InstrFetch/PC1/output [3]),
    .I3(\InstrFetch/PC1/output [6]),
    .I4(\InstrFetch/PC1/output [7]),
    .I5(\InstrFetch/PC1/output [4]),
    .O(\InstrFetch_InstrMem/Mram_MemContent23_114 )
  );
  LUT6 #(
    .INIT ( 64'h6A610D65F35426E2 ))
  \InstrFetch_InstrMem/Mram_MemContent22  (
    .I0(\InstrFetch/PC1/output [4]),
    .I1(\InstrFetch/PC1/output [7]),
    .I2(\InstrFetch/PC1/output [2]),
    .I3(\InstrFetch/PC1/output [6]),
    .I4(\InstrFetch/PC1/output [5]),
    .I5(\InstrFetch/PC1/output [3]),
    .O(\InstrFetch_InstrMem/Mram_MemContent22_116 )
  );
  LUT6 #(
    .INIT ( 64'hD9BE846A34660C21 ))
  \InstrFetch_InstrMem/Mram_MemContent21  (
    .I0(\InstrFetch/PC1/output [2]),
    .I1(\InstrFetch/PC1/output [5]),
    .I2(\InstrFetch/PC1/output [6]),
    .I3(\InstrFetch/PC1/output [7]),
    .I4(\InstrFetch/PC1/output [4]),
    .I5(\InstrFetch/PC1/output [3]),
    .O(\InstrFetch_InstrMem/Mram_MemContent21_117 )
  );
  LUT6 #(
    .INIT ( 64'hC7179C7067F77949 ))
  \InstrFetch_InstrMem/Mram_MemContent4  (
    .I0(\InstrFetch/PC1/output [6]),
    .I1(\InstrFetch/PC1/output [5]),
    .I2(\InstrFetch/PC1/output [2]),
    .I3(\InstrFetch/PC1/output [7]),
    .I4(\InstrFetch/PC1/output [3]),
    .I5(\InstrFetch/PC1/output [4]),
    .O(\InstrFetch_InstrMem/Mram_MemContent3_119 )
  );
  LUT6 #(
    .INIT ( 64'h6DCC884F3AC85BED ))
  \InstrFetch_InstrMem/Mram_MemContent3  (
    .I0(\InstrFetch/PC1/output [7]),
    .I1(\InstrFetch/PC1/output [2]),
    .I2(\InstrFetch/PC1/output [5]),
    .I3(\InstrFetch/PC1/output [4]),
    .I4(\InstrFetch/PC1/output [3]),
    .I5(\InstrFetch/PC1/output [6]),
    .O(\InstrFetch_InstrMem/Mram_MemContent2_120 )
  );
  LUT6 #(
    .INIT ( 64'h581941D08E09AEC5 ))
  \InstrFetch_InstrMem/Mram_MemContent2  (
    .I0(\InstrFetch/PC1/output [5]),
    .I1(\InstrFetch/PC1/output [4]),
    .I2(\InstrFetch/PC1/output [7]),
    .I3(\InstrFetch/PC1/output [2]),
    .I4(\InstrFetch/PC1/output [3]),
    .I5(\InstrFetch/PC1/output [6]),
    .O(\InstrFetch_InstrMem/Mram_MemContent1_122 )
  );
  LUT6 #(
    .INIT ( 64'h3F73B6D62368218A ))
  \InstrFetch_InstrMem/Mram_MemContent1  (
    .I0(\InstrFetch/PC1/output [7]),
    .I1(\InstrFetch/PC1/output [4]),
    .I2(\InstrFetch/PC1/output [2]),
    .I3(\InstrFetch/PC1/output [3]),
    .I4(\InstrFetch/PC1/output [6]),
    .I5(\InstrFetch/PC1/output [5]),
    .O(\InstrFetch_InstrMem/Mram_MemContent )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

