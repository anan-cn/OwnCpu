--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.4
--  \   \         Application : sch2hdl
--  /   /         Filename : RegisterFile.vhf
-- /___/   /\     Timestamp : 02/23/2013 20:18:01
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family artix7 -flat -suppress -vhdl C:/Users/raivis/Desktop/task1/task1/RegisterFile.vhf -w C:/Users/raivis/Desktop/task1/task1/RegisterFile.sch
--Design Name: RegisterFile
--Device: artix7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity RegisterFile is
   port ( CLK      : in    std_logic; 
          Rd       : in    std_logic_vector (4 downto 0); 
          RDData   : in    std_logic_vector (31 downto 0); 
          RegWrite : in    std_logic; 
          Reset    : in    std_logic; 
          RS       : in    std_logic_vector (4 downto 0); 
          RT       : in    std_logic_vector (4 downto 0); 
          RS_OUT   : out   std_logic_vector (31 downto 0); 
          RT_OUT   : out   std_logic_vector (31 downto 0));
end RegisterFile;

architecture BEHAVIORAL of RegisterFile is
   signal E        : std_logic_vector (31 downto 0);
   signal XLXN_839 : std_logic_vector (31 downto 0);
   signal XLXN_853 : std_logic_vector (31 downto 0);
   signal XLXN_854 : std_logic_vector (31 downto 0);
   signal XLXN_856 : std_logic_vector (31 downto 0);
   signal XLXN_858 : std_logic_vector (31 downto 0);
   signal XLXN_859 : std_logic_vector (31 downto 0);
   signal XLXN_860 : std_logic_vector (31 downto 0);
   signal XLXN_862 : std_logic_vector (31 downto 0);
   signal XLXN_865 : std_logic_vector (31 downto 0);
   signal XLXN_869 : std_logic_vector (31 downto 0);
   signal XLXN_870 : std_logic_vector (31 downto 0);
   signal XLXN_872 : std_logic_vector (31 downto 0);
   signal XLXN_911 : std_logic_vector (31 downto 0);
   signal XLXN_914 : std_logic_vector (31 downto 0);
   signal XLXN_915 : std_logic_vector (31 downto 0);
   signal XLXN_916 : std_logic_vector (31 downto 0);
   signal XLXN_917 : std_logic_vector (31 downto 0);
   signal XLXN_931 : std_logic_vector (31 downto 0);
   signal XLXN_932 : std_logic_vector (31 downto 0);
   signal XLXN_933 : std_logic_vector (31 downto 0);
   signal XLXN_934 : std_logic_vector (31 downto 0);
   signal XLXN_938 : std_logic_vector (31 downto 0);
   signal XLXN_939 : std_logic_vector (31 downto 0);
   signal XLXN_940 : std_logic_vector (31 downto 0);
   signal XLXN_941 : std_logic_vector (31 downto 0);
   signal XLXN_946 : std_logic_vector (31 downto 0);
   signal XLXN_947 : std_logic_vector (31 downto 0);
   signal XLXN_948 : std_logic_vector (31 downto 0);
   signal XLXN_949 : std_logic_vector (31 downto 0);
   signal XLXN_950 : std_logic_vector (31 downto 0);
   signal XLXN_951 : std_logic_vector (31 downto 0);
   signal XLXN_952 : std_logic_vector (31 downto 0);
   component decoder
      port ( enable              : in    std_logic; 
             decoderOutput       : out   std_logic_vector (31 downto 0); 
             destinationRegister : in    std_logic_vector (4 downto 0));
   end component;
   
   component SIMPREG
      port ( ENABLE : in    std_logic; 
             CLK    : in    std_logic; 
             RESET  : in    std_logic; 
             RdData : in    std_logic_vector (31 downto 0); 
             DOUT   : out   std_logic_vector (31 downto 0));
   end component;
   
   component muxQ321
      port ( s   : in    std_logic_vector (4 downto 0); 
             d0  : in    std_logic_vector (31 downto 0); 
             d1  : in    std_logic_vector (31 downto 0); 
             d2  : in    std_logic_vector (31 downto 0); 
             d3  : in    std_logic_vector (31 downto 0); 
             d4  : in    std_logic_vector (31 downto 0); 
             d5  : in    std_logic_vector (31 downto 0); 
             d6  : in    std_logic_vector (31 downto 0); 
             d7  : in    std_logic_vector (31 downto 0); 
             d8  : in    std_logic_vector (31 downto 0); 
             d9  : in    std_logic_vector (31 downto 0); 
             d10 : in    std_logic_vector (31 downto 0); 
             d11 : in    std_logic_vector (31 downto 0); 
             d12 : in    std_logic_vector (31 downto 0); 
             d13 : in    std_logic_vector (31 downto 0); 
             d14 : in    std_logic_vector (31 downto 0); 
             d15 : in    std_logic_vector (31 downto 0); 
             d16 : in    std_logic_vector (31 downto 0); 
             d17 : in    std_logic_vector (31 downto 0); 
             d18 : in    std_logic_vector (31 downto 0); 
             d19 : in    std_logic_vector (31 downto 0); 
             d20 : in    std_logic_vector (31 downto 0); 
             d21 : in    std_logic_vector (31 downto 0); 
             d22 : in    std_logic_vector (31 downto 0); 
             d23 : in    std_logic_vector (31 downto 0); 
             d24 : in    std_logic_vector (31 downto 0); 
             d25 : in    std_logic_vector (31 downto 0); 
             d26 : in    std_logic_vector (31 downto 0); 
             d27 : in    std_logic_vector (31 downto 0); 
             d28 : in    std_logic_vector (31 downto 0); 
             d29 : in    std_logic_vector (31 downto 0); 
             d30 : in    std_logic_vector (31 downto 0); 
             d31 : in    std_logic_vector (31 downto 0); 
             y   : out   std_logic_vector (31 downto 0));
   end component;
   
begin
   XLXI_2 : decoder
      port map (destinationRegister(4 downto 0)=>Rd(4 downto 0),
                enable=>RegWrite,
                decoderOutput(31 downto 0)=>E(31 downto 0));
   
   XLXI_3 : SIMPREG
      port map (CLK=>CLK,
                ENABLE=>E(7),
                RdData(31 downto 0)=>RDData(31 downto 0),
                RESET=>Reset,
                DOUT(31 downto 0)=>XLXN_839(31 downto 0));
   
   XLXI_4 : SIMPREG
      port map (CLK=>CLK,
                ENABLE=>E(6),
                RdData(31 downto 0)=>RDData(31 downto 0),
                RESET=>Reset,
                DOUT(31 downto 0)=>XLXN_952(31 downto 0));
   
   XLXI_5 : SIMPREG
      port map (CLK=>CLK,
                ENABLE=>E(5),
                RdData(31 downto 0)=>RDData(31 downto 0),
                RESET=>Reset,
                DOUT(31 downto 0)=>XLXN_951(31 downto 0));
   
   XLXI_6 : SIMPREG
      port map (CLK=>CLK,
                ENABLE=>E(4),
                RdData(31 downto 0)=>RDData(31 downto 0),
                RESET=>Reset,
                DOUT(31 downto 0)=>XLXN_950(31 downto 0));
   
   XLXI_11 : SIMPREG
      port map (CLK=>CLK,
                ENABLE=>E(3),
                RdData(31 downto 0)=>RDData(31 downto 0),
                RESET=>Reset,
                DOUT(31 downto 0)=>XLXN_917(31 downto 0));
   
   XLXI_12 : SIMPREG
      port map (CLK=>CLK,
                ENABLE=>E(2),
                RdData(31 downto 0)=>RDData(31 downto 0),
                RESET=>Reset,
                DOUT(31 downto 0)=>XLXN_916(31 downto 0));
   
   XLXI_13 : SIMPREG
      port map (CLK=>CLK,
                ENABLE=>E(1),
                RdData(31 downto 0)=>RDData(31 downto 0),
                RESET=>Reset,
                DOUT(31 downto 0)=>XLXN_915(31 downto 0));
   
   XLXI_14 : SIMPREG
      port map (CLK=>CLK,
                ENABLE=>E(0),
                RdData(31 downto 0)=>RDData(31 downto 0),
                RESET=>Reset,
                DOUT(31 downto 0)=>XLXN_914(31 downto 0));
   
   XLXI_15 : SIMPREG
      port map (CLK=>CLK,
                ENABLE=>E(8),
                RdData(31 downto 0)=>RDData(31 downto 0),
                RESET=>Reset,
                DOUT(31 downto 0)=>XLXN_853(31 downto 0));
   
   XLXI_16 : SIMPREG
      port map (CLK=>CLK,
                ENABLE=>E(9),
                RdData(31 downto 0)=>RDData(31 downto 0),
                RESET=>Reset,
                DOUT(31 downto 0)=>XLXN_854(31 downto 0));
   
   XLXI_17 : SIMPREG
      port map (CLK=>CLK,
                ENABLE=>E(10),
                RdData(31 downto 0)=>RDData(31 downto 0),
                RESET=>Reset,
                DOUT(31 downto 0)=>XLXN_911(31 downto 0));
   
   XLXI_18 : SIMPREG
      port map (CLK=>CLK,
                ENABLE=>E(11),
                RdData(31 downto 0)=>RDData(31 downto 0),
                RESET=>Reset,
                DOUT(31 downto 0)=>XLXN_856(31 downto 0));
   
   XLXI_19 : SIMPREG
      port map (CLK=>CLK,
                ENABLE=>E(12),
                RdData(31 downto 0)=>RDData(31 downto 0),
                RESET=>Reset,
                DOUT(31 downto 0)=>XLXN_858(31 downto 0));
   
   XLXI_20 : SIMPREG
      port map (CLK=>CLK,
                ENABLE=>E(13),
                RdData(31 downto 0)=>RDData(31 downto 0),
                RESET=>Reset,
                DOUT(31 downto 0)=>XLXN_859(31 downto 0));
   
   XLXI_21 : SIMPREG
      port map (CLK=>CLK,
                ENABLE=>E(14),
                RdData(31 downto 0)=>RDData(31 downto 0),
                RESET=>Reset,
                DOUT(31 downto 0)=>XLXN_860(31 downto 0));
   
   XLXI_22 : SIMPREG
      port map (CLK=>CLK,
                ENABLE=>E(15),
                RdData(31 downto 0)=>RDData(31 downto 0),
                RESET=>Reset,
                DOUT(31 downto 0)=>XLXN_862(31 downto 0));
   
   XLXI_63 : SIMPREG
      port map (CLK=>CLK,
                ENABLE=>E(23),
                RdData(31 downto 0)=>RDData(31 downto 0),
                RESET=>Reset,
                DOUT(31 downto 0)=>XLXN_931(31 downto 0));
   
   XLXI_64 : SIMPREG
      port map (CLK=>CLK,
                ENABLE=>E(22),
                RdData(31 downto 0)=>RDData(31 downto 0),
                RESET=>Reset,
                DOUT(31 downto 0)=>XLXN_932(31 downto 0));
   
   XLXI_65 : SIMPREG
      port map (CLK=>CLK,
                ENABLE=>E(21),
                RdData(31 downto 0)=>RDData(31 downto 0),
                RESET=>Reset,
                DOUT(31 downto 0)=>XLXN_933(31 downto 0));
   
   XLXI_66 : SIMPREG
      port map (CLK=>CLK,
                ENABLE=>E(20),
                RdData(31 downto 0)=>RDData(31 downto 0),
                RESET=>Reset,
                DOUT(31 downto 0)=>XLXN_934(31 downto 0));
   
   XLXI_67 : SIMPREG
      port map (CLK=>CLK,
                ENABLE=>E(19),
                RdData(31 downto 0)=>RDData(31 downto 0),
                RESET=>Reset,
                DOUT(31 downto 0)=>XLXN_872(31 downto 0));
   
   XLXI_68 : SIMPREG
      port map (CLK=>CLK,
                ENABLE=>E(18),
                RdData(31 downto 0)=>RDData(31 downto 0),
                RESET=>Reset,
                DOUT(31 downto 0)=>XLXN_870(31 downto 0));
   
   XLXI_69 : SIMPREG
      port map (CLK=>CLK,
                ENABLE=>E(17),
                RdData(31 downto 0)=>RDData(31 downto 0),
                RESET=>Reset,
                DOUT(31 downto 0)=>XLXN_869(31 downto 0));
   
   XLXI_70 : SIMPREG
      port map (CLK=>CLK,
                ENABLE=>E(16),
                RdData(31 downto 0)=>RDData(31 downto 0),
                RESET=>Reset,
                DOUT(31 downto 0)=>XLXN_865(31 downto 0));
   
   XLXI_71 : SIMPREG
      port map (CLK=>CLK,
                ENABLE=>E(24),
                RdData(31 downto 0)=>RDData(31 downto 0),
                RESET=>Reset,
                DOUT(31 downto 0)=>XLXN_949(31 downto 0));
   
   XLXI_72 : SIMPREG
      port map (CLK=>CLK,
                ENABLE=>E(25),
                RdData(31 downto 0)=>RDData(31 downto 0),
                RESET=>Reset,
                DOUT(31 downto 0)=>XLXN_948(31 downto 0));
   
   XLXI_73 : SIMPREG
      port map (CLK=>CLK,
                ENABLE=>E(26),
                RdData(31 downto 0)=>RDData(31 downto 0),
                RESET=>Reset,
                DOUT(31 downto 0)=>XLXN_947(31 downto 0));
   
   XLXI_74 : SIMPREG
      port map (CLK=>CLK,
                ENABLE=>E(27),
                RdData(31 downto 0)=>RDData(31 downto 0),
                RESET=>Reset,
                DOUT(31 downto 0)=>XLXN_946(31 downto 0));
   
   XLXI_75 : SIMPREG
      port map (CLK=>CLK,
                ENABLE=>E(28),
                RdData(31 downto 0)=>RDData(31 downto 0),
                RESET=>Reset,
                DOUT(31 downto 0)=>XLXN_941(31 downto 0));
   
   XLXI_76 : SIMPREG
      port map (CLK=>CLK,
                ENABLE=>E(29),
                RdData(31 downto 0)=>RDData(31 downto 0),
                RESET=>Reset,
                DOUT(31 downto 0)=>XLXN_940(31 downto 0));
   
   XLXI_77 : SIMPREG
      port map (CLK=>CLK,
                ENABLE=>E(30),
                RdData(31 downto 0)=>RDData(31 downto 0),
                RESET=>Reset,
                DOUT(31 downto 0)=>XLXN_939(31 downto 0));
   
   XLXI_78 : SIMPREG
      port map (CLK=>CLK,
                ENABLE=>E(31),
                RdData(31 downto 0)=>RDData(31 downto 0),
                RESET=>Reset,
                DOUT(31 downto 0)=>XLXN_938(31 downto 0));
   
   XLXI_145 : muxQ321
      port map (d0(31 downto 0)=>XLXN_914(31 downto 0),
                d1(31 downto 0)=>XLXN_915(31 downto 0),
                d2(31 downto 0)=>XLXN_916(31 downto 0),
                d3(31 downto 0)=>XLXN_917(31 downto 0),
                d4(31 downto 0)=>XLXN_950(31 downto 0),
                d5(31 downto 0)=>XLXN_951(31 downto 0),
                d6(31 downto 0)=>XLXN_952(31 downto 0),
                d7(31 downto 0)=>XLXN_839(31 downto 0),
                d8(31 downto 0)=>XLXN_853(31 downto 0),
                d9(31 downto 0)=>XLXN_854(31 downto 0),
                d10(31 downto 0)=>XLXN_911(31 downto 0),
                d11(31 downto 0)=>XLXN_856(31 downto 0),
                d12(31 downto 0)=>XLXN_858(31 downto 0),
                d13(31 downto 0)=>XLXN_859(31 downto 0),
                d14(31 downto 0)=>XLXN_860(31 downto 0),
                d15(31 downto 0)=>XLXN_862(31 downto 0),
                d16(31 downto 0)=>XLXN_865(31 downto 0),
                d17(31 downto 0)=>XLXN_869(31 downto 0),
                d18(31 downto 0)=>XLXN_870(31 downto 0),
                d19(31 downto 0)=>XLXN_872(31 downto 0),
                d20(31 downto 0)=>XLXN_934(31 downto 0),
                d21(31 downto 0)=>XLXN_933(31 downto 0),
                d22(31 downto 0)=>XLXN_932(31 downto 0),
                d23(31 downto 0)=>XLXN_931(31 downto 0),
                d24(31 downto 0)=>XLXN_949(31 downto 0),
                d25(31 downto 0)=>XLXN_948(31 downto 0),
                d26(31 downto 0)=>XLXN_947(31 downto 0),
                d27(31 downto 0)=>XLXN_946(31 downto 0),
                d28(31 downto 0)=>XLXN_941(31 downto 0),
                d29(31 downto 0)=>XLXN_940(31 downto 0),
                d30(31 downto 0)=>XLXN_939(31 downto 0),
                d31(31 downto 0)=>XLXN_938(31 downto 0),
                s(4 downto 0)=>RS(4 downto 0),
                y(31 downto 0)=>RS_OUT(31 downto 0));
   
   XLXI_146 : muxQ321
      port map (d0(31 downto 0)=>XLXN_914(31 downto 0),
                d1(31 downto 0)=>XLXN_915(31 downto 0),
                d2(31 downto 0)=>XLXN_916(31 downto 0),
                d3(31 downto 0)=>XLXN_917(31 downto 0),
                d4(31 downto 0)=>XLXN_950(31 downto 0),
                d5(31 downto 0)=>XLXN_951(31 downto 0),
                d6(31 downto 0)=>XLXN_952(31 downto 0),
                d7(31 downto 0)=>XLXN_839(31 downto 0),
                d8(31 downto 0)=>XLXN_853(31 downto 0),
                d9(31 downto 0)=>XLXN_854(31 downto 0),
                d10(31 downto 0)=>XLXN_911(31 downto 0),
                d11(31 downto 0)=>XLXN_856(31 downto 0),
                d12(31 downto 0)=>XLXN_858(31 downto 0),
                d13(31 downto 0)=>XLXN_859(31 downto 0),
                d14(31 downto 0)=>XLXN_860(31 downto 0),
                d15(31 downto 0)=>XLXN_862(31 downto 0),
                d16(31 downto 0)=>XLXN_865(31 downto 0),
                d17(31 downto 0)=>XLXN_869(31 downto 0),
                d18(31 downto 0)=>XLXN_870(31 downto 0),
                d19(31 downto 0)=>XLXN_872(31 downto 0),
                d20(31 downto 0)=>XLXN_934(31 downto 0),
                d21(31 downto 0)=>XLXN_933(31 downto 0),
                d22(31 downto 0)=>XLXN_932(31 downto 0),
                d23(31 downto 0)=>XLXN_931(31 downto 0),
                d24(31 downto 0)=>XLXN_949(31 downto 0),
                d25(31 downto 0)=>XLXN_948(31 downto 0),
                d26(31 downto 0)=>XLXN_947(31 downto 0),
                d27(31 downto 0)=>XLXN_946(31 downto 0),
                d28(31 downto 0)=>XLXN_941(31 downto 0),
                d29(31 downto 0)=>XLXN_940(31 downto 0),
                d30(31 downto 0)=>XLXN_939(31 downto 0),
                d31(31 downto 0)=>XLXN_938(31 downto 0),
                s(4 downto 0)=>RT(4 downto 0),
                y(31 downto 0)=>RT_OUT(31 downto 0));
   
end BEHAVIORAL;


