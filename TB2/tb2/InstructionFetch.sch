<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2(31:0)" />
        <signal name="XLXN_8(31:0)" />
        <signal name="XLXN_1(31:0)" />
        <signal name="XLXN_13(31:0)" />
        <signal name="XLXN_3(31:0)" />
        <signal name="XLXN_4(31:0)" />
        <signal name="XLXN_6(31:0)" />
        <signal name="XLXN_17(31:0)" />
        <signal name="XLXN_19(25:0)" />
        <signal name="XLXN_20(31:0)" />
        <blockdef name="Program_Counter">
            <timestamp>2013-3-13T1:31:25</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="InstrMem32bit">
            <timestamp>2013-3-13T1:30:46</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Adder">
            <timestamp>2013-3-13T1:30:52</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="BinaryMUX">
            <timestamp>2013-3-13T1:30:58</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="Shift_Left">
            <timestamp>2013-3-13T1:30:39</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <block symbolname="InstrMem32bit" name="XLXI_2">
            <blockpin signalname="XLXN_1(31:0)" name="address(31:0)" />
            <blockpin signalname="XLXN_19(25:0)" name="Instr(31:0)" />
        </block>
        <block symbolname="Program_Counter" name="XLXI_1">
            <blockpin name="reset" />
            <blockpin name="clk" />
            <blockpin name="input(31:0)" />
            <blockpin signalname="XLXN_1(31:0)" name="output(31:0)" />
        </block>
        <block symbolname="Adder" name="XLXI_3">
            <blockpin signalname="XLXN_3(31:0)" name="num1(31:0)" />
            <blockpin signalname="XLXN_1(31:0)" name="num2(31:0)" />
            <blockpin signalname="XLXN_4(31:0)" name="result(31:0)" />
        </block>
        <block symbolname="Adder" name="XLXI_4">
            <blockpin signalname="XLXN_4(31:0)" name="num1(31:0)" />
            <blockpin name="num2(31:0)" />
            <blockpin signalname="XLXN_6(31:0)" name="result(31:0)" />
        </block>
        <block symbolname="BinaryMUX" name="XLXI_5">
            <blockpin name="sel" />
            <blockpin signalname="XLXN_4(31:0)" name="inputA(31:0)" />
            <blockpin signalname="XLXN_6(31:0)" name="inputB(31:0)" />
            <blockpin signalname="XLXN_17(31:0)" name="output(31:0)" />
        </block>
        <block symbolname="BinaryMUX" name="XLXI_16">
            <blockpin name="sel" />
            <blockpin name="inputA(31:0)" />
            <blockpin signalname="XLXN_17(31:0)" name="inputB(31:0)" />
            <blockpin name="output(31:0)" />
        </block>
        <block symbolname="Shift_Left" name="XLXI_17">
            <blockpin signalname="XLXN_20(31:0)" name="input(31:0)" />
            <blockpin name="output(31:0)" />
        </block>
        <block symbolname="constant" name="XLXI_18">
            <attr value="00000004" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_3(31:0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="880" y="1456" name="XLXI_2" orien="R0">
        </instance>
        <instance x="224" y="1584" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_1(31:0)">
            <wire x2="720" y1="1424" y2="1424" x1="608" />
            <wire x2="880" y1="1424" y2="1424" x1="720" />
            <wire x2="736" y1="880" y2="880" x1="720" />
            <wire x2="720" y1="880" y2="1424" x1="720" />
        </branch>
        <instance x="736" y="912" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_3(31:0)">
            <wire x2="592" y1="816" y2="816" x1="480" />
            <wire x2="736" y1="816" y2="816" x1="592" />
        </branch>
        <instance x="1728" y="912" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_4(31:0)">
            <wire x2="1584" y1="816" y2="816" x1="1120" />
            <wire x2="1728" y1="816" y2="816" x1="1584" />
            <wire x2="1584" y1="720" y2="816" x1="1584" />
            <wire x2="2320" y1="720" y2="720" x1="1584" />
            <wire x2="2320" y1="720" y2="816" x1="2320" />
            <wire x2="2368" y1="816" y2="816" x1="2320" />
        </branch>
        <instance x="2368" y="912" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_6(31:0)">
            <wire x2="2240" y1="816" y2="816" x1="2112" />
            <wire x2="2240" y1="816" y2="880" x1="2240" />
            <wire x2="2368" y1="880" y2="880" x1="2240" />
        </branch>
        <instance x="2944" y="784" name="XLXI_16" orien="R0">
        </instance>
        <branch name="XLXN_17(31:0)">
            <wire x2="2944" y1="752" y2="752" x1="2752" />
        </branch>
        <instance x="1504" y="512" name="XLXI_17" orien="R0">
        </instance>
        <instance x="336" y="784" name="XLXI_18" orien="R0">
        </instance>
        <branch name="XLXN_19(25:0)">
            <wire x2="1376" y1="1424" y2="1424" x1="1264" />
            <wire x2="1392" y1="1424" y2="1424" x1="1376" />
            <wire x2="1632" y1="1424" y2="1424" x1="1392" />
        </branch>
        <bustap x2="1376" y1="1424" y2="1328" x1="1376" />
        <branch name="XLXN_20(31:0)">
            <wire x2="1376" y1="480" y2="480" x1="1280" />
            <wire x2="1392" y1="480" y2="480" x1="1376" />
            <wire x2="1504" y1="480" y2="480" x1="1392" />
        </branch>
        <bustap x2="1392" y1="480" y2="576" x1="1392" />
    </sheet>
</drawing>