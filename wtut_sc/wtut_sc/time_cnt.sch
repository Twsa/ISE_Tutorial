<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="q(19:0)" />
        <signal name="load" />
        <signal name="up" />
        <signal name="ce" />
        <signal name="clk" />
        <signal name="XLXN_5" />
        <signal name="XLXN_15" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="sec_msb(3:0)" />
        <signal name="sec_lsb(3:0)" />
        <signal name="tenths(3:0)" />
        <signal name="hundredths(3:0)" />
        <signal name="minutes(3:0)" />
        <signal name="clr" />
        <signal name="q(17)" />
        <signal name="q(18)" />
        <signal name="q(19)" />
        <signal name="tc_out0" />
        <signal name="tc_out2" />
        <signal name="tc_out3" />
        <signal name="tc_out4" />
        <signal name="tc_out1" />
        <signal name="q(15)" />
        <signal name="q(14)" />
        <signal name="q(13)" />
        <signal name="q(12)" />
        <signal name="q(11)" />
        <signal name="q(10)" />
        <signal name="q(9)" />
        <signal name="q(8)" />
        <signal name="q(7)" />
        <signal name="q(6)" />
        <signal name="q(5)" />
        <signal name="tenths(0)" />
        <signal name="q(3)" />
        <signal name="q(2)" />
        <signal name="q(1)" />
        <signal name="q(0)" />
        <signal name="hundredths(0)" />
        <signal name="hundredths(1)" />
        <signal name="hundredths(2)" />
        <signal name="hundredths(3)" />
        <signal name="tenths(1)" />
        <signal name="tenths(2)" />
        <signal name="tenths(3)" />
        <signal name="sec_lsb(0)" />
        <signal name="sec_lsb(1)" />
        <signal name="sec_lsb(2)" />
        <signal name="sec_lsb(3)" />
        <signal name="sec_msb(0)" />
        <signal name="sec_msb(1)" />
        <signal name="sec_msb(2)" />
        <signal name="sec_msb(3)" />
        <signal name="minutes(0)" />
        <signal name="minutes(1)" />
        <signal name="minutes(2)" />
        <signal name="minutes(3)" />
        <port polarity="Input" name="q(19:0)" />
        <port polarity="Input" name="load" />
        <port polarity="Input" name="up" />
        <port polarity="Input" name="ce" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="sec_msb(3:0)" />
        <port polarity="Output" name="sec_lsb(3:0)" />
        <port polarity="Output" name="tenths(3:0)" />
        <port polarity="Output" name="hundredths(3:0)" />
        <port polarity="Output" name="minutes(3:0)" />
        <port polarity="Input" name="clr" />
        <blockdef name="cd4rled">
            <timestamp>2017-7-17T6:4:34</timestamp>
            <rect width="256" x="64" y="-576" height="512" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="192" y1="-64" y2="0" x1="192" />
            <line x2="0" y1="0" y2="0" x1="188" />
        </blockdef>
        <blockdef name="ch4rled">
            <timestamp>2017-7-17T6:4:34</timestamp>
            <rect width="256" x="64" y="-576" height="512" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="192" y1="-64" y2="0" x1="192" />
            <line x2="0" y1="0" y2="0" x1="188" />
        </blockdef>
        <blockdef name="and5">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <arc ex="144" ey="-240" sx="144" sy="-144" r="48" cx="144" cy="-192" />
            <line x2="64" y1="-144" y2="-144" x1="144" />
            <line x2="144" y1="-240" y2="-240" x1="64" />
            <line x2="64" y1="-64" y2="-320" x1="64" />
            <line x2="192" y1="-192" y2="-192" x1="256" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <blockdef name="and2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <block symbolname="cd4rled" name="XLXI_2">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_18" name="CE" />
            <blockpin signalname="XLXN_19" name="CEO" />
            <blockpin signalname="tenths(0)" name="D0" />
            <blockpin signalname="q(5)" name="D1" />
            <blockpin signalname="q(6)" name="D2" />
            <blockpin signalname="q(7)" name="D3" />
            <blockpin signalname="load" name="L" />
            <blockpin signalname="tenths(0)" name="Q0" />
            <blockpin signalname="tenths(1)" name="Q1" />
            <blockpin signalname="tenths(2)" name="Q2" />
            <blockpin signalname="tenths(3)" name="Q3" />
            <blockpin signalname="tc_out1" name="TC" />
            <blockpin signalname="up" name="UP" />
            <blockpin signalname="clr" name="R" />
        </block>
        <block symbolname="cd4rled" name="XLXI_3">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_19" name="CE" />
            <blockpin signalname="XLXN_20" name="CEO" />
            <blockpin signalname="q(8)" name="D0" />
            <blockpin signalname="q(9)" name="D1" />
            <blockpin signalname="q(10)" name="D2" />
            <blockpin signalname="q(11)" name="D3" />
            <blockpin signalname="load" name="L" />
            <blockpin signalname="sec_lsb(0)" name="Q0" />
            <blockpin signalname="sec_lsb(1)" name="Q1" />
            <blockpin signalname="sec_lsb(2)" name="Q2" />
            <blockpin signalname="sec_lsb(3)" name="Q3" />
            <blockpin signalname="tc_out2" name="TC" />
            <blockpin signalname="up" name="UP" />
            <blockpin signalname="clr" name="R" />
        </block>
        <block symbolname="cd4rled" name="XLXI_5">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_21" name="CE" />
            <blockpin name="CEO" />
            <blockpin signalname="clr" name="D0" />
            <blockpin signalname="q(17)" name="D1" />
            <blockpin signalname="q(18)" name="D2" />
            <blockpin signalname="q(19)" name="D3" />
            <blockpin signalname="load" name="L" />
            <blockpin signalname="minutes(0)" name="Q0" />
            <blockpin signalname="minutes(1)" name="Q1" />
            <blockpin signalname="minutes(2)" name="Q2" />
            <blockpin signalname="minutes(3)" name="Q3" />
            <blockpin signalname="tc_out4" name="TC" />
            <blockpin signalname="up" name="UP" />
            <blockpin signalname="clr" name="R" />
        </block>
        <block symbolname="ch4rled" name="XLXI_7">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_20" name="CE" />
            <blockpin signalname="XLXN_21" name="CEO" />
            <blockpin signalname="q(12)" name="D0" />
            <blockpin signalname="q(13)" name="D1" />
            <blockpin signalname="q(14)" name="D2" />
            <blockpin signalname="q(15)" name="D3" />
            <blockpin signalname="load" name="L" />
            <blockpin signalname="sec_msb(0)" name="Q0" />
            <blockpin signalname="sec_msb(1)" name="Q1" />
            <blockpin signalname="sec_msb(2)" name="Q2" />
            <blockpin signalname="sec_msb(3)" name="Q3" />
            <blockpin signalname="tc_out3" name="TC" />
            <blockpin signalname="up" name="UP" />
            <blockpin signalname="clr" name="R" />
        </block>
        <block symbolname="and5" name="XLXI_8">
            <blockpin signalname="tc_out4" name="I0" />
            <blockpin signalname="tc_out3" name="I1" />
            <blockpin signalname="tc_out2" name="I2" />
            <blockpin signalname="tc_out1" name="I3" />
            <blockpin signalname="tc_out0" name="I4" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="cd4rled" name="XLXI_1">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_15" name="CE" />
            <blockpin signalname="XLXN_18" name="CEO" />
            <blockpin signalname="q(0)" name="D0" />
            <blockpin signalname="q(1)" name="D1" />
            <blockpin signalname="q(2)" name="D2" />
            <blockpin signalname="q(3)" name="D3" />
            <blockpin signalname="load" name="L" />
            <blockpin name="Q0" />
            <blockpin name="Q1" />
            <blockpin signalname="hundredths(2)" name="Q2" />
            <blockpin name="Q3" />
            <blockpin signalname="tc_out0" name="TC" />
            <blockpin signalname="up" name="UP" />
            <blockpin signalname="clr" name="R" />
        </block>
        <block symbolname="and2b1" name="XLXI_11">
            <blockpin signalname="XLXN_5" name="I0" />
            <blockpin signalname="ce" name="I1" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <branch name="q(19:0)">
            <wire x2="480" y1="48" y2="48" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="48" name="q(19:0)" orien="R180" />
        <branch name="load">
            <wire x2="480" y1="368" y2="368" x1="320" />
            <wire x2="480" y1="304" y2="368" x1="480" />
            <wire x2="1152" y1="304" y2="304" x1="480" />
            <wire x2="1152" y1="304" y2="368" x1="1152" />
            <wire x2="1536" y1="368" y2="368" x1="1152" />
            <wire x2="1536" y1="368" y2="1040" x1="1536" />
            <wire x2="1536" y1="1040" y2="1744" x1="1536" />
            <wire x2="1536" y1="1744" y2="2416" x1="1536" />
            <wire x2="1536" y1="2416" y2="3152" x1="1536" />
            <wire x2="1776" y1="3152" y2="3152" x1="1536" />
            <wire x2="1776" y1="2416" y2="2416" x1="1536" />
            <wire x2="1792" y1="1744" y2="1744" x1="1536" />
            <wire x2="1792" y1="1040" y2="1040" x1="1536" />
            <wire x2="1824" y1="336" y2="336" x1="1536" />
            <wire x2="1536" y1="336" y2="368" x1="1536" />
        </branch>
        <iomarker fontsize="28" x="320" y="368" name="load" orien="R180" />
        <branch name="up">
            <wire x2="1584" y1="688" y2="688" x1="320" />
            <wire x2="1584" y1="688" y2="1104" x1="1584" />
            <wire x2="1792" y1="1104" y2="1104" x1="1584" />
            <wire x2="1584" y1="1104" y2="1808" x1="1584" />
            <wire x2="1792" y1="1808" y2="1808" x1="1584" />
            <wire x2="1584" y1="1808" y2="2480" x1="1584" />
            <wire x2="1776" y1="2480" y2="2480" x1="1584" />
            <wire x2="1584" y1="2480" y2="3216" x1="1584" />
            <wire x2="1776" y1="3216" y2="3216" x1="1584" />
            <wire x2="1824" y1="400" y2="400" x1="1584" />
            <wire x2="1584" y1="400" y2="688" x1="1584" />
        </branch>
        <iomarker fontsize="28" x="320" y="688" name="up" orien="R180" />
        <iomarker fontsize="28" x="320" y="1008" name="ce" orien="R180" />
        <iomarker fontsize="28" x="320" y="1328" name="clk" orien="R180" />
        <branch name="clr">
            <wire x2="1728" y1="1648" y2="1648" x1="320" />
            <wire x2="1728" y1="1648" y2="2032" x1="1728" />
            <wire x2="1728" y1="2032" y2="2704" x1="1728" />
            <wire x2="1728" y1="2704" y2="3440" x1="1728" />
            <wire x2="1776" y1="3440" y2="3440" x1="1728" />
            <wire x2="1776" y1="2704" y2="2704" x1="1728" />
            <wire x2="1792" y1="2032" y2="2032" x1="1728" />
            <wire x2="1824" y1="624" y2="624" x1="1728" />
            <wire x2="1728" y1="624" y2="1328" x1="1728" />
            <wire x2="1792" y1="1328" y2="1328" x1="1728" />
            <wire x2="1728" y1="1328" y2="1648" x1="1728" />
        </branch>
        <iomarker fontsize="28" x="320" y="1648" name="clr" orien="R180" />
        <instance x="1792" y="2032" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1792" y="1328" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1776" y="2704" name="XLXI_7" orien="R0">
        </instance>
        <instance x="1776" y="3440" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1824" y="624" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1248" y="560" name="XLXI_11" orien="R0" />
        <branch name="XLXN_5">
            <wire x2="1248" y1="496" y2="496" x1="1088" />
        </branch>
        <instance x="832" y="688" name="XLXI_8" orien="R0" />
        <branch name="XLXN_15">
            <wire x2="1824" y1="464" y2="464" x1="1504" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="2304" y1="672" y2="672" x1="1632" />
            <wire x2="1632" y1="672" y2="1168" x1="1632" />
            <wire x2="1792" y1="1168" y2="1168" x1="1632" />
            <wire x2="2304" y1="336" y2="336" x1="2208" />
            <wire x2="2304" y1="336" y2="672" x1="2304" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="2320" y1="1376" y2="1376" x1="1632" />
            <wire x2="1632" y1="1376" y2="1872" x1="1632" />
            <wire x2="1792" y1="1872" y2="1872" x1="1632" />
            <wire x2="2320" y1="1040" y2="1040" x1="2176" />
            <wire x2="2320" y1="1040" y2="1376" x1="2320" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="2336" y1="2064" y2="2064" x1="1632" />
            <wire x2="1632" y1="2064" y2="2544" x1="1632" />
            <wire x2="1776" y1="2544" y2="2544" x1="1632" />
            <wire x2="2336" y1="1744" y2="1744" x1="2176" />
            <wire x2="2336" y1="1744" y2="2064" x1="2336" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="1632" y1="2768" y2="3280" x1="1632" />
            <wire x2="1776" y1="3280" y2="3280" x1="1632" />
            <wire x2="2320" y1="2768" y2="2768" x1="1632" />
            <wire x2="2320" y1="2416" y2="2416" x1="2160" />
            <wire x2="2320" y1="2416" y2="2768" x1="2320" />
        </branch>
        <branch name="clk">
            <wire x2="1680" y1="1328" y2="1328" x1="320" />
            <wire x2="1680" y1="1328" y2="1936" x1="1680" />
            <wire x2="1680" y1="1936" y2="2608" x1="1680" />
            <wire x2="1680" y1="2608" y2="3344" x1="1680" />
            <wire x2="1776" y1="3344" y2="3344" x1="1680" />
            <wire x2="1776" y1="2608" y2="2608" x1="1680" />
            <wire x2="1792" y1="1936" y2="1936" x1="1680" />
            <wire x2="1824" y1="528" y2="528" x1="1680" />
            <wire x2="1680" y1="528" y2="1232" x1="1680" />
            <wire x2="1792" y1="1232" y2="1232" x1="1680" />
            <wire x2="1680" y1="1232" y2="1328" x1="1680" />
        </branch>
        <branch name="ce">
            <wire x2="1200" y1="1008" y2="1008" x1="320" />
            <wire x2="1200" y1="432" y2="1008" x1="1200" />
            <wire x2="1248" y1="432" y2="432" x1="1200" />
        </branch>
        <branch name="sec_msb(3:0)">
            <wire x2="2496" y1="2144" y2="2160" x1="2496" />
            <wire x2="2496" y1="2160" y2="2224" x1="2496" />
            <wire x2="2496" y1="2224" y2="2288" x1="2496" />
            <wire x2="2496" y1="2288" y2="2352" x1="2496" />
            <wire x2="2496" y1="2352" y2="3040" x1="2496" />
            <wire x2="4992" y1="3040" y2="3040" x1="2496" />
        </branch>
        <branch name="sec_lsb(3:0)">
            <wire x2="2672" y1="1472" y2="1488" x1="2672" />
            <wire x2="2672" y1="1488" y2="1552" x1="2672" />
            <wire x2="2672" y1="1552" y2="1616" x1="2672" />
            <wire x2="2672" y1="1616" y2="1680" x1="2672" />
            <wire x2="2672" y1="1680" y2="2720" x1="2672" />
            <wire x2="4992" y1="2720" y2="2720" x1="2672" />
        </branch>
        <branch name="tenths(3:0)">
            <wire x2="2880" y1="768" y2="784" x1="2880" />
            <wire x2="2880" y1="784" y2="848" x1="2880" />
            <wire x2="2880" y1="848" y2="912" x1="2880" />
            <wire x2="2880" y1="912" y2="976" x1="2880" />
            <wire x2="2880" y1="976" y2="2400" x1="2880" />
            <wire x2="4992" y1="2400" y2="2400" x1="2880" />
        </branch>
        <branch name="hundredths(3:0)">
            <wire x2="3184" y1="80" y2="144" x1="3184" />
            <wire x2="3184" y1="144" y2="208" x1="3184" />
            <wire x2="3184" y1="208" y2="272" x1="3184" />
            <wire x2="3184" y1="272" y2="2080" x1="3184" />
            <wire x2="4992" y1="2080" y2="2080" x1="3184" />
        </branch>
        <branch name="minutes(3:0)">
            <wire x2="2320" y1="2896" y2="2960" x1="2320" />
            <wire x2="2320" y1="2960" y2="3024" x1="2320" />
            <wire x2="2320" y1="3024" y2="3088" x1="2320" />
            <wire x2="2320" y1="3088" y2="3360" x1="2320" />
            <wire x2="4832" y1="3360" y2="3360" x1="2320" />
            <wire x2="4992" y1="3360" y2="3360" x1="4832" />
        </branch>
        <iomarker fontsize="28" x="4992" y="3360" name="minutes(3:0)" orien="R0" />
        <iomarker fontsize="28" x="4992" y="3040" name="sec_msb(3:0)" orien="R0" />
        <iomarker fontsize="28" x="4992" y="2720" name="sec_lsb(3:0)" orien="R0" />
        <iomarker fontsize="28" x="4992" y="2400" name="tenths(3:0)" orien="R0" />
        <iomarker fontsize="28" x="4992" y="2080" name="hundredths(3:0)" orien="R0" />
        <branch name="tc_out0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="400" type="branch" />
            <wire x2="2336" y1="400" y2="400" x1="2208" />
        </branch>
        <branch name="tc_out2">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2368" y="1808" type="branch" />
            <wire x2="2368" y1="1808" y2="1808" x1="2176" />
        </branch>
        <branch name="tc_out3">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="2480" type="branch" />
            <wire x2="2352" y1="2480" y2="2480" x1="2160" />
        </branch>
        <branch name="tc_out4">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="3216" type="branch" />
            <wire x2="2352" y1="3216" y2="3216" x1="2160" />
        </branch>
        <branch name="tc_out2">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="768" y="496" type="branch" />
            <wire x2="832" y1="496" y2="496" x1="768" />
        </branch>
        <branch name="tc_out3">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="768" y="560" type="branch" />
            <wire x2="832" y1="560" y2="560" x1="768" />
        </branch>
        <branch name="tc_out4">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="768" y="624" type="branch" />
            <wire x2="832" y1="624" y2="624" x1="768" />
        </branch>
        <branch name="tc_out0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="768" y="368" type="branch" />
            <wire x2="832" y1="368" y2="368" x1="768" />
        </branch>
        <branch name="tc_out1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="768" y="432" type="branch" />
            <wire x2="832" y1="432" y2="432" x1="768" />
        </branch>
        <branch name="tc_out1">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="1104" type="branch" />
            <wire x2="2352" y1="1104" y2="1104" x1="2176" />
        </branch>
        <branch name="tenths(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="784" type="branch" />
            <wire x2="1792" y1="784" y2="784" x1="1760" />
        </branch>
        <branch name="q(5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="848" type="branch" />
            <wire x2="1792" y1="848" y2="848" x1="1760" />
        </branch>
        <branch name="q(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="912" type="branch" />
            <wire x2="1792" y1="912" y2="912" x1="1760" />
        </branch>
        <branch name="q(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="976" type="branch" />
            <wire x2="1792" y1="976" y2="976" x1="1760" />
        </branch>
        <branch name="q(8)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="1488" type="branch" />
            <wire x2="1792" y1="1488" y2="1488" x1="1760" />
        </branch>
        <branch name="q(9)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="1552" type="branch" />
            <wire x2="1792" y1="1552" y2="1552" x1="1760" />
        </branch>
        <branch name="q(10)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="1616" type="branch" />
            <wire x2="1792" y1="1616" y2="1616" x1="1760" />
        </branch>
        <branch name="q(11)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="1680" type="branch" />
            <wire x2="1792" y1="1680" y2="1680" x1="1760" />
        </branch>
        <branch name="q(12)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="2160" type="branch" />
            <wire x2="1776" y1="2160" y2="2160" x1="1744" />
        </branch>
        <branch name="q(13)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="2224" type="branch" />
            <wire x2="1776" y1="2224" y2="2224" x1="1744" />
        </branch>
        <branch name="q(14)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="2288" type="branch" />
            <wire x2="1776" y1="2288" y2="2288" x1="1744" />
        </branch>
        <branch name="q(15)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="2352" type="branch" />
            <wire x2="1776" y1="2352" y2="2352" x1="1744" />
        </branch>
        <branch name="clr">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="2896" type="branch" />
            <wire x2="1776" y1="2896" y2="2896" x1="1744" />
        </branch>
        <branch name="q(17)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="2960" type="branch" />
            <wire x2="1776" y1="2960" y2="2960" x1="1744" />
        </branch>
        <branch name="q(18)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="3024" type="branch" />
            <wire x2="1776" y1="3024" y2="3024" x1="1744" />
        </branch>
        <branch name="q(19)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="3088" type="branch" />
            <wire x2="1776" y1="3088" y2="3088" x1="1744" />
        </branch>
        <branch name="q(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="80" type="branch" />
            <wire x2="1824" y1="80" y2="80" x1="1792" />
        </branch>
        <branch name="q(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="144" type="branch" />
            <wire x2="1824" y1="144" y2="144" x1="1792" />
        </branch>
        <branch name="q(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="208" type="branch" />
            <wire x2="1824" y1="208" y2="208" x1="1792" />
        </branch>
        <branch name="q(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="272" type="branch" />
            <wire x2="1824" y1="272" y2="272" x1="1792" />
        </branch>
        <bustap x2="3088" y1="80" y2="80" x1="3184" />
        <branch name="hundredths(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="80" type="branch" />
            <wire x2="2656" y1="80" y2="80" x1="2224" />
            <wire x2="3088" y1="80" y2="80" x1="2656" />
        </branch>
        <bustap x2="3088" y1="144" y2="144" x1="3184" />
        <branch name="hundredths(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="144" type="branch" />
            <wire x2="2656" y1="144" y2="144" x1="2224" />
            <wire x2="3088" y1="144" y2="144" x1="2656" />
        </branch>
        <bustap x2="3088" y1="208" y2="208" x1="3184" />
        <branch name="hundredths(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2648" y="208" type="branch" />
            <wire x2="2656" y1="208" y2="208" x1="2208" />
            <wire x2="3088" y1="208" y2="208" x1="2656" />
        </branch>
        <bustap x2="3088" y1="272" y2="272" x1="3184" />
        <branch name="hundredths(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="272" type="branch" />
            <wire x2="2656" y1="272" y2="272" x1="2224" />
            <wire x2="3088" y1="272" y2="272" x1="2656" />
        </branch>
        <bustap x2="2784" y1="784" y2="784" x1="2880" />
        <branch name="tenths(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="784" type="branch" />
            <wire x2="2480" y1="784" y2="784" x1="2176" />
            <wire x2="2784" y1="784" y2="784" x1="2480" />
        </branch>
        <bustap x2="2784" y1="848" y2="848" x1="2880" />
        <branch name="tenths(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="848" type="branch" />
            <wire x2="2480" y1="848" y2="848" x1="2176" />
            <wire x2="2784" y1="848" y2="848" x1="2480" />
        </branch>
        <bustap x2="2784" y1="912" y2="912" x1="2880" />
        <branch name="tenths(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="912" type="branch" />
            <wire x2="2480" y1="912" y2="912" x1="2176" />
            <wire x2="2784" y1="912" y2="912" x1="2480" />
        </branch>
        <bustap x2="2784" y1="976" y2="976" x1="2880" />
        <branch name="tenths(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="976" type="branch" />
            <wire x2="2480" y1="976" y2="976" x1="2176" />
            <wire x2="2784" y1="976" y2="976" x1="2480" />
        </branch>
        <bustap x2="2576" y1="1488" y2="1488" x1="2672" />
        <branch name="sec_lsb(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2376" y="1488" type="branch" />
            <wire x2="2384" y1="1488" y2="1488" x1="2176" />
            <wire x2="2576" y1="1488" y2="1488" x1="2384" />
        </branch>
        <bustap x2="2576" y1="1552" y2="1552" x1="2672" />
        <branch name="sec_lsb(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2376" y="1552" type="branch" />
            <wire x2="2384" y1="1552" y2="1552" x1="2176" />
            <wire x2="2576" y1="1552" y2="1552" x1="2384" />
        </branch>
        <bustap x2="2576" y1="1616" y2="1616" x1="2672" />
        <branch name="sec_lsb(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2376" y="1616" type="branch" />
            <wire x2="2384" y1="1616" y2="1616" x1="2176" />
            <wire x2="2576" y1="1616" y2="1616" x1="2384" />
        </branch>
        <bustap x2="2576" y1="1680" y2="1680" x1="2672" />
        <branch name="sec_lsb(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2376" y="1680" type="branch" />
            <wire x2="2384" y1="1680" y2="1680" x1="2176" />
            <wire x2="2576" y1="1680" y2="1680" x1="2384" />
        </branch>
        <bustap x2="2400" y1="2160" y2="2160" x1="2496" />
        <branch name="sec_msb(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2280" y="2160" type="branch" />
            <wire x2="2288" y1="2160" y2="2160" x1="2160" />
            <wire x2="2400" y1="2160" y2="2160" x1="2288" />
        </branch>
        <bustap x2="2400" y1="2224" y2="2224" x1="2496" />
        <branch name="sec_msb(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2280" y="2224" type="branch" />
            <wire x2="2288" y1="2224" y2="2224" x1="2160" />
            <wire x2="2400" y1="2224" y2="2224" x1="2288" />
        </branch>
        <bustap x2="2400" y1="2288" y2="2288" x1="2496" />
        <branch name="sec_msb(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2280" y="2288" type="branch" />
            <wire x2="2288" y1="2288" y2="2288" x1="2160" />
            <wire x2="2400" y1="2288" y2="2288" x1="2288" />
        </branch>
        <bustap x2="2400" y1="2352" y2="2352" x1="2496" />
        <branch name="sec_msb(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2280" y="2352" type="branch" />
            <wire x2="2288" y1="2352" y2="2352" x1="2160" />
            <wire x2="2400" y1="2352" y2="2352" x1="2288" />
        </branch>
        <bustap x2="2224" y1="2896" y2="2896" x1="2320" />
        <branch name="minutes(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="2896" type="branch" />
            <wire x2="2192" y1="2896" y2="2896" x1="2160" />
            <wire x2="2224" y1="2896" y2="2896" x1="2192" />
        </branch>
        <bustap x2="2224" y1="2960" y2="2960" x1="2320" />
        <branch name="minutes(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="2960" type="branch" />
            <wire x2="2192" y1="2960" y2="2960" x1="2160" />
            <wire x2="2224" y1="2960" y2="2960" x1="2192" />
        </branch>
        <bustap x2="2224" y1="3024" y2="3024" x1="2320" />
        <branch name="minutes(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="3024" type="branch" />
            <wire x2="2192" y1="3024" y2="3024" x1="2160" />
            <wire x2="2224" y1="3024" y2="3024" x1="2192" />
        </branch>
        <bustap x2="2224" y1="3088" y2="3088" x1="2320" />
        <branch name="minutes(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="3088" type="branch" />
            <wire x2="2192" y1="3088" y2="3088" x1="2160" />
            <wire x2="2224" y1="3088" y2="3088" x1="2192" />
        </branch>
    </sheet>
</drawing>