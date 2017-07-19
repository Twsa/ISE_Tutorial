<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk_26214k" />
        <signal name="clk_100" />
        <signal name="rst_int" />
        <signal name="load" />
        <signal name="mode_control" />
        <signal name="sf_d(7:0)">
            <attr value="Y15,AB16,Y12,AA12,AB12,AB17,AB18,Y13" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="lcd_rw">
            <attr value="W13" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="lcd_rs">
            <attr value="Y14" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="lcd_e">
            <attr value="AB4" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="lcd_rs,lcd_rw,lcd_e" />
        <signal name="count5(3:0)" />
        <signal name="count4(3:0)" />
        <signal name="count3(3:0)" />
        <signal name="count2(3:0)" />
        <signal name="count1(3:0)" />
        <signal name="address(7:0)" />
        <signal name="reset" />
        <signal name="clk">
            <attr value="E12" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="lap_load" />
        <signal name="mode" />
        <signal name="strtstop" />
        <signal name="XLXN_6">
        </signal>
        <signal name="XLXN_7">
        </signal>
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="address(5:0)" />
        <signal name="XLXN_13(19:0)" />
        <signal name="locked" />
        <signal name="clk_en_int" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <port polarity="Output" name="sf_d(7:0)" />
        <port polarity="Output" name="lcd_rw" />
        <port polarity="Output" name="lcd_rs" />
        <port polarity="Output" name="lcd_e" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="lap_load" />
        <port polarity="Input" name="mode" />
        <port polarity="Input" name="strtstop" />
        <blockdef name="title">
            <timestamp>2004-5-20T21:6:5</timestamp>
            <line x2="-796" y1="-288" y2="-256" x1="-764" />
            <line x2="-764" y1="-256" y2="-288" x1="-732" />
            <line x2="-732" y1="-256" y2="-256" x1="-776" />
            <line x2="-776" y1="-264" y2="-256" x1="-788" />
            <line x2="-796" y1="-256" y2="-256" x1="-840" />
            <line x2="-836" y1="-256" y2="-288" x1="-804" />
            <line x2="-832" y1="-256" y2="-288" x1="-800" />
            <line x2="-828" y1="-256" y2="-288" x1="-796" />
            <line x2="-800" y1="-288" y2="-320" x1="-832" />
            <line x2="-796" y1="-288" y2="-320" x1="-828" />
            <line x2="-796" y1="-352" y2="-384" x1="-828" />
            <line x2="-796" y1="-384" y2="-384" x1="-840" />
            <line x2="-764" y1="-384" y2="-352" x1="-796" />
            <line x2="-832" y1="-320" y2="-352" x1="-800" />
            <line x2="-828" y1="-320" y2="-352" x1="-796" />
            <line x2="-836" y1="-320" y2="-352" x1="-804" />
            <line x2="-800" y1="-352" y2="-384" x1="-832" />
            <line x2="-804" y1="-352" y2="-384" x1="-836" />
            <line x2="-840" y1="-352" y2="-384" x1="-872" />
            <line x2="-836" y1="-352" y2="-384" x1="-868" />
            <line x2="-764" y1="-384" y2="-352" x1="-732" />
            <line x2="-732" y1="-384" y2="-384" x1="-776" />
            <line x2="-776" y1="-376" y2="-384" x1="-788" />
            <line x2="-736" y1="-356" y2="-384" x1="-764" />
            <line x2="-740" y1="-360" y2="-384" x1="-768" />
            <line x2="-740" y1="-356" y2="-384" x1="-768" />
            <line x2="-744" y1="-360" y2="-384" x1="-772" />
            <line x2="-748" y1="-360" y2="-384" x1="-772" />
            <line x2="-752" y1="-360" y2="-384" x1="-772" />
            <line x2="-808" y1="-352" y2="-384" x1="-840" />
            <line x2="-812" y1="-352" y2="-384" x1="-844" />
            <line x2="-816" y1="-352" y2="-384" x1="-848" />
            <line x2="-820" y1="-352" y2="-384" x1="-852" />
            <line x2="-848" y1="-256" y2="-288" x1="-816" />
            <line x2="-852" y1="-256" y2="-288" x1="-820" />
            <line x2="-828" y1="-352" y2="-352" x1="-872" />
            <line x2="-868" y1="-320" y2="-352" x1="-836" />
            <line x2="-864" y1="-320" y2="-352" x1="-832" />
            <line x2="-860" y1="-320" y2="-352" x1="-828" />
            <line x2="-856" y1="-320" y2="-352" x1="-824" />
            <line x2="-840" y1="-288" y2="-320" x1="-872" />
            <line x2="-828" y1="-288" y2="-288" x1="-872" />
            <line x2="-828" y1="-352" y2="-384" x1="-860" />
            <line x2="-832" y1="-352" y2="-384" x1="-864" />
            <line x2="-824" y1="-352" y2="-384" x1="-856" />
            <line x2="-824" y1="-288" y2="-320" x1="-856" />
            <line x2="-820" y1="-288" y2="-320" x1="-852" />
            <line x2="-816" y1="-288" y2="-320" x1="-848" />
            <line x2="-812" y1="-288" y2="-320" x1="-844" />
            <line x2="-808" y1="-288" y2="-320" x1="-840" />
            <line x2="-804" y1="-288" y2="-320" x1="-836" />
            <line x2="-836" y1="-288" y2="-320" x1="-868" />
            <line x2="-832" y1="-288" y2="-320" x1="-864" />
            <line x2="-828" y1="-288" y2="-320" x1="-860" />
            <line x2="-872" y1="-320" y2="-352" x1="-840" />
            <line x2="-852" y1="-320" y2="-352" x1="-820" />
            <line x2="-848" y1="-320" y2="-352" x1="-816" />
            <line x2="-844" y1="-320" y2="-352" x1="-812" />
            <line x2="-840" y1="-320" y2="-352" x1="-808" />
            <line x2="-840" y1="-256" y2="-288" x1="-808" />
            <line x2="-844" y1="-256" y2="-288" x1="-812" />
            <line x2="-868" y1="-256" y2="-288" x1="-836" />
            <line x2="-872" y1="-256" y2="-288" x1="-840" />
            <line x2="-856" y1="-256" y2="-288" x1="-824" />
            <line x2="-860" y1="-256" y2="-288" x1="-828" />
            <line x2="-864" y1="-256" y2="-288" x1="-832" />
            <line x2="-756" y1="-364" y2="-384" x1="-772" />
            <line x2="-756" y1="-364" y2="-384" x1="-776" />
            <line x2="-760" y1="-368" y2="-384" x1="-776" />
            <line x2="-764" y1="-368" y2="-384" x1="-780" />
            <line x2="-768" y1="-372" y2="-384" x1="-780" />
            <line x2="-772" y1="-372" y2="-384" x1="-784" />
            <line x2="-772" y1="-376" y2="-384" x1="-784" />
            <line x2="-612" y1="-272" y2="-368" x1="-612" />
            <line x2="-616" y1="-272" y2="-368" x1="-616" />
            <line x2="-620" y1="-272" y2="-368" x1="-620" />
            <line x2="-612" y1="-276" y2="-276" x1="-564" />
            <line x2="-456" y1="-272" y2="-368" x1="-456" />
            <line x2="-460" y1="-272" y2="-368" x1="-460" />
            <line x2="-640" y1="-272" y2="-368" x1="-640" />
            <line x2="-444" y1="-272" y2="-368" x1="-392" />
            <line x2="-444" y1="-368" y2="-272" x1="-392" />
            <line x2="-712" y1="-272" y2="-368" x1="-660" />
            <line x2="-716" y1="-368" y2="-272" x1="-660" />
            <line x2="-544" y1="-272" y2="-368" x1="-544" />
            <line x2="-644" y1="-272" y2="-368" x1="-644" />
            <line x2="-636" y1="-272" y2="-368" x1="-636" />
            <line x2="-708" y1="-272" y2="-368" x1="-656" />
            <line x2="-520" y1="-272" y2="-368" x1="-468" />
            <line x2="-716" y1="-272" y2="-368" x1="-660" />
            <line x2="-720" y1="-272" y2="-368" x1="-664" />
            <line x2="-524" y1="-272" y2="-368" x1="-524" />
            <line x2="-528" y1="-272" y2="-368" x1="-528" />
            <line x2="-632" y1="-272" y2="-368" x1="-632" />
            <line x2="-524" y1="-272" y2="-368" x1="-468" />
            <line x2="-540" y1="-272" y2="-368" x1="-540" />
            <line x2="-516" y1="-272" y2="-368" x1="-464" />
            <line x2="-516" y1="-272" y2="-368" x1="-460" />
            <line x2="-548" y1="-272" y2="-368" x1="-548" />
            <line x2="-440" y1="-272" y2="-368" x1="-388" />
            <line x2="-612" y1="-272" y2="-272" x1="-564" />
            <line x2="-720" y1="-368" y2="-272" x1="-664" />
            <line x2="-784" y1="-256" y2="-264" x1="-772" />
            <line x2="-772" y1="-268" y2="-256" x1="-784" />
            <line x2="-780" y1="-256" y2="-268" x1="-768" />
            <line x2="-764" y1="-272" y2="-256" x1="-780" />
            <line x2="-776" y1="-256" y2="-272" x1="-760" />
            <line x2="-756" y1="-276" y2="-256" x1="-776" />
            <line x2="-772" y1="-256" y2="-276" x1="-756" />
            <line x2="-752" y1="-280" y2="-256" x1="-772" />
            <line x2="-772" y1="-256" y2="-280" x1="-748" />
            <line x2="-744" y1="-280" y2="-256" x1="-772" />
            <line x2="-768" y1="-256" y2="-280" x1="-740" />
            <line x2="-740" y1="-284" y2="-256" x1="-768" />
            <line x2="-764" y1="-256" y2="-284" x1="-736" />
            <line x2="-436" y1="-272" y2="-368" x1="-388" />
            <line x2="-436" y1="-272" y2="-368" x1="-384" />
            <line x2="-440" y1="-368" y2="-272" x1="-388" />
            <line x2="-1140" y1="-176" y2="-176" x1="-112" />
            <line x2="-1136" y1="-416" y2="-212" style="linewidth:W" x1="-1136" />
            <line x2="-80" y1="-416" y2="-220" style="linewidth:W" x1="-80" />
            <line x2="-80" y1="-416" y2="-416" style="linewidth:W" x1="-1136" />
            <line x2="-80" y1="-128" y2="-128" x1="-1136" />
            <line x2="-80" y1="-220" y2="-220" x1="-1132" />
            <line x2="-352" y1="-80" y2="-80" style="linewidth:W" x1="-80" />
            <line x2="-352" y1="-80" y2="-80" style="linewidth:W" x1="-1136" />
            <line x2="-1136" y1="-224" y2="-80" style="linewidth:W" x1="-1136" />
            <line x2="-152" y1="-80" y2="-80" style="linewidth:W" x1="-144" />
            <line x2="-80" y1="-224" y2="-80" style="linewidth:W" x1="-80" />
            <line x2="-80" y1="-176" y2="-176" x1="-112" />
            <line x2="-144" y1="-128" y2="-128" x1="-176" />
            <line x2="-296" y1="-128" y2="-80" x1="-296" />
        </blockdef>
        <blockdef name="lcd_control">
            <timestamp>2008-5-23T18:10:24</timestamp>
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="352" y="-492" height="24" />
            <line x2="416" y1="-480" y2="-480" x1="352" />
            <rect width="64" x="352" y="-44" height="24" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
            <rect width="288" x="64" y="-512" height="576" />
            <rect width="64" x="0" y="20" height="24" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
        </blockdef>
        <blockdef name="cb8ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="clk_div_262k">
            <timestamp>2005-1-13T22:8:34</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="time_cnt">
            <timestamp>2009-7-6T19:13:46</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
        </blockdef>
        <blockdef name="dcm1">
            <timestamp>2009-7-6T19:19:51</timestamp>
            <rect width="336" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="debounce">
            <timestamp>2009-7-6T19:22:39</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="statmach">
            <timestamp>2009-7-6T19:22:45</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-272" y2="-272" x1="320" />
            <line x2="384" y1="-192" y2="-192" x1="320" />
            <line x2="384" y1="-112" y2="-112" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="timer_preset">
            <timestamp>2009-7-6T19:16:34</timestamp>
            <rect width="224" x="32" y="32" height="512" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="256" y1="80" y2="80" style="linewidth:W" x1="288" />
        </blockdef>
        <block symbolname="title" name="XLXI_158">
            <attr value="Stop Watch Tutorial" name="TitleFieldText" />
            <attr value="Mr.Tutorial" name="NameFieldText" />
        </block>
        <block symbolname="lcd_control" name="lcd_cntrl_inst">
            <blockpin signalname="rst_int" name="rst" />
            <blockpin signalname="clk_26214k" name="clk" />
            <blockpin signalname="XLXN_23" name="lap" />
            <blockpin signalname="lcd_rs,lcd_rw,lcd_e" name="control(2:0)" />
            <blockpin signalname="sf_d(7:0)" name="sf_d(7:0)" />
            <blockpin signalname="count1(3:0)" name="hundredths(3:0)" />
            <blockpin signalname="count2(3:0)" name="tenths(3:0)" />
            <blockpin signalname="count3(3:0)" name="ones(3:0)" />
            <blockpin signalname="count4(3:0)" name="tens(3:0)" />
            <blockpin signalname="count5(3:0)" name="minutes(3:0)" />
            <blockpin signalname="XLXN_22" name="mode" />
        </block>
        <block symbolname="cb8ce" name="timer_load_address">
            <blockpin signalname="clk_100" name="C" />
            <blockpin signalname="load" name="CE" />
            <blockpin signalname="mode_control" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="address(7:0)" name="Q(7:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="time_cnt" name="timer_cnt">
            <blockpin signalname="clk_en_int" name="ce" />
            <blockpin signalname="clk_100" name="clk" />
            <blockpin signalname="rst_int" name="clr" />
            <blockpin signalname="count1(3:0)" name="hundredths(3:0)" />
            <blockpin signalname="load" name="load" />
            <blockpin signalname="count5(3:0)" name="minutes(3:0)" />
            <blockpin signalname="XLXN_13(19:0)" name="q(19:0)" />
            <blockpin signalname="count3(3:0)" name="sec_lsb(3:0)" />
            <blockpin signalname="count4(3:0)" name="sec_msb(3:0)" />
            <blockpin signalname="count2(3:0)" name="tenths(3:0)" />
            <blockpin signalname="mode_control" name="up" />
        </block>
        <block symbolname="dcm1" name="dcm_inst">
            <blockpin signalname="reset" name="RST_IN" />
            <blockpin signalname="clk" name="CLKIN_IN" />
            <blockpin signalname="locked" name="LOCKED_OUT" />
            <blockpin signalname="clk_26214k" name="CLKFX_OUT" />
            <blockpin name="CLKIN_IBUFG_OUT" />
            <blockpin name="CLK0_OUT" />
        </block>
        <block symbolname="debounce" name="lap_load_debounce">
            <blockpin signalname="lap_load" name="sig_in" />
            <blockpin signalname="clk_26214k" name="clk" />
            <blockpin signalname="XLXN_11" name="sig_out" />
        </block>
        <block symbolname="debounce" name="mode_debounce">
            <blockpin signalname="mode" name="sig_in" />
            <blockpin signalname="clk_26214k" name="clk" />
            <blockpin signalname="XLXN_10" name="sig_out" />
        </block>
        <block symbolname="debounce" name="strtstop_debounce">
            <blockpin signalname="strtstop" name="sig_in" />
            <blockpin signalname="clk_26214k" name="clk" />
            <blockpin signalname="XLXN_9" name="sig_out" />
        </block>
        <block symbolname="statmach" name="timer_state">
            <blockpin signalname="clk_100" name="clk" />
            <blockpin signalname="locked" name="dcm_lock" />
            <blockpin signalname="XLXN_11" name="lap_load" />
            <blockpin signalname="XLXN_10" name="mode_in" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_9" name="strtstop" />
            <blockpin signalname="clk_en_int" name="clken" />
            <blockpin signalname="XLXN_23" name="lap_trigger" />
            <blockpin signalname="load" name="load" />
            <blockpin signalname="XLXN_22" name="mode" />
            <blockpin signalname="rst_int" name="rst" />
        </block>
        <block symbolname="timer_preset" name="t_preset">
            <blockpin signalname="address(5:0)" name="a(5:0)" />
            <blockpin signalname="XLXN_13(19:0)" name="spo(19:0)" />
        </block>
        <block symbolname="clk_div_262k" name="XLXI_159">
            <blockpin signalname="clk_26214k" name="clk_in" />
            <blockpin signalname="clk_100" name="div_262144" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1152" y="2784" name="XLXI_158" orien="R0">
        </instance>
        <branch name="clk_26214k">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1152" y="304" type="branch" />
            <wire x2="1152" y1="304" y2="304" x1="1104" />
            <wire x2="1472" y1="304" y2="304" x1="1152" />
        </branch>
        <instance x="2464" y="1600" name="lcd_cntrl_inst" orien="R0">
        </instance>
        <branch name="sf_d(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;displayformat:NAMEEQUALSVALUE" attrname="LOC" x="3168" y="1568" type="branch" />
            <wire x2="3168" y1="1568" y2="1568" x1="2880" />
            <wire x2="3184" y1="1568" y2="1568" x1="3168" />
        </branch>
        <branch name="lcd_rw">
            <wire x2="3184" y1="1392" y2="1392" x1="2960" />
        </branch>
        <branch name="lcd_rs">
            <wire x2="3184" y1="1328" y2="1328" x1="2960" />
        </branch>
        <branch name="lcd_e">
            <wire x2="3184" y1="1264" y2="1264" x1="2960" />
        </branch>
        <branch name="lcd_rs,lcd_rw,lcd_e">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="3072" y="1120" type="branch" />
            <wire x2="3072" y1="1120" y2="1120" x1="2880" />
        </branch>
        <branch name="rst_int">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2288" y="1120" type="branch" />
            <wire x2="2464" y1="1120" y2="1120" x1="2288" />
        </branch>
        <branch name="clk_26214k">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2320" y="1184" type="branch" />
            <wire x2="2464" y1="1184" y2="1184" x1="2320" />
        </branch>
        <branch name="count5(3:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2208" y="1632" type="branch" />
            <wire x2="2208" y1="1632" y2="1632" x1="1952" />
            <wire x2="2464" y1="1632" y2="1632" x1="2208" />
        </branch>
        <branch name="count4(3:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2208" y="1568" type="branch" />
            <wire x2="2208" y1="1568" y2="1568" x1="1952" />
            <wire x2="2464" y1="1568" y2="1568" x1="2208" />
        </branch>
        <branch name="count3(3:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2208" y="1504" type="branch" />
            <wire x2="2208" y1="1504" y2="1504" x1="1952" />
            <wire x2="2464" y1="1504" y2="1504" x1="2208" />
        </branch>
        <branch name="count2(3:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2208" y="1440" type="branch" />
            <wire x2="2208" y1="1440" y2="1440" x1="1952" />
            <wire x2="2464" y1="1440" y2="1440" x1="2208" />
        </branch>
        <branch name="count1(3:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2208" y="1376" type="branch" />
            <wire x2="2208" y1="1376" y2="1376" x1="1952" />
            <wire x2="2464" y1="1376" y2="1376" x1="2208" />
        </branch>
        <iomarker fontsize="28" x="3184" y="1264" name="lcd_e" orien="R0" />
        <iomarker fontsize="28" x="3184" y="1392" name="lcd_rw" orien="R0" />
        <iomarker fontsize="28" x="3184" y="1328" name="lcd_rs" orien="R0" />
        <iomarker fontsize="28" x="3184" y="1568" name="sf_d(7:0)" orien="R0" />
        <instance x="256" y="2144" name="timer_load_address" orien="R0" />
        <branch name="address(7:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="672" y="1888" type="branch" />
            <wire x2="672" y1="1888" y2="1888" x1="640" />
            <wire x2="736" y1="1888" y2="1888" x1="672" />
        </branch>
        <branch name="load">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="160" y="1952" type="branch" />
            <wire x2="256" y1="1952" y2="1952" x1="160" />
        </branch>
        <branch name="clk_100">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="160" y="2016" type="branch" />
            <wire x2="256" y1="2016" y2="2016" x1="160" />
        </branch>
        <branch name="mode_control">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="176" y="2112" type="branch" />
            <wire x2="256" y1="2112" y2="2112" x1="176" />
        </branch>
        <instance x="1568" y="1728" name="timer_cnt" orien="R0">
        </instance>
        <instance x="640" y="464" name="dcm_inst" orien="R0">
        </instance>
        <instance x="416" y="992" name="lap_load_debounce" orien="R0">
        </instance>
        <instance x="416" y="1424" name="strtstop_debounce" orien="R0">
        </instance>
        <instance x="416" y="1216" name="mode_debounce" orien="R0">
        </instance>
        <instance x="1120" y="1120" name="timer_state" orien="R0">
        </instance>
        <instance x="1088" y="1824" name="t_preset" orien="R0">
        </instance>
        <branch name="reset">
            <wire x2="640" y1="240" y2="240" x1="480" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER;displayformat:NAMEEQUALSVALUE" attrname="LOC" x="565" y="432" type="branch" />
            <wire x2="565" y1="432" y2="432" x1="496" />
            <wire x2="640" y1="432" y2="432" x1="565" />
        </branch>
        <branch name="lap_load">
            <wire x2="416" y1="896" y2="896" x1="272" />
        </branch>
        <branch name="mode">
            <wire x2="416" y1="1120" y2="1120" x1="272" />
        </branch>
        <branch name="strtstop">
            <wire x2="416" y1="1328" y2="1328" x1="272" />
        </branch>
        <branch name="clk_26214k">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="320" y="1184" type="branch" />
            <wire x2="384" y1="1184" y2="1184" x1="320" />
            <wire x2="416" y1="1184" y2="1184" x1="384" />
            <wire x2="384" y1="1184" y2="1392" x1="384" />
            <wire x2="416" y1="1392" y2="1392" x1="384" />
            <wire x2="416" y1="960" y2="960" x1="384" />
            <wire x2="384" y1="960" y2="1184" x1="384" />
        </branch>
        <iomarker fontsize="28" x="480" y="240" name="reset" orien="R180" />
        <iomarker fontsize="28" x="496" y="432" name="clk" orien="R180" />
        <iomarker fontsize="28" x="272" y="896" name="lap_load" orien="R180" />
        <iomarker fontsize="28" x="272" y="1120" name="mode" orien="R180" />
        <iomarker fontsize="28" x="272" y="1328" name="strtstop" orien="R180" />
        <branch name="XLXN_9">
            <wire x2="960" y1="1328" y2="1328" x1="800" />
            <wire x2="960" y1="1088" y2="1328" x1="960" />
            <wire x2="1120" y1="1088" y2="1088" x1="960" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="944" y1="1120" y2="1120" x1="800" />
            <wire x2="944" y1="960" y2="1120" x1="944" />
            <wire x2="1120" y1="960" y2="960" x1="944" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1120" y1="896" y2="896" x1="800" />
        </branch>
        <branch name="address(5:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="960" y="1904" type="branch" />
            <wire x2="1088" y1="1904" y2="1904" x1="960" />
        </branch>
        <branch name="XLXN_13(19:0)">
            <wire x2="1472" y1="1904" y2="1904" x1="1376" />
            <wire x2="1472" y1="1376" y2="1904" x1="1472" />
            <wire x2="1568" y1="1376" y2="1376" x1="1472" />
        </branch>
        <branch name="locked">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1200" y="240" type="branch" />
            <wire x2="1200" y1="240" y2="240" x1="1104" />
        </branch>
        <branch name="clk_100">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1888" y="304" type="branch" />
            <wire x2="1888" y1="304" y2="304" x1="1856" />
            <wire x2="2000" y1="304" y2="304" x1="1888" />
        </branch>
        <instance x="1472" y="336" name="XLXI_159" orien="R0">
        </instance>
        <branch name="clk_100">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1056" y="768" type="branch" />
            <wire x2="1120" y1="768" y2="768" x1="1056" />
        </branch>
        <branch name="locked">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1056" y="832" type="branch" />
            <wire x2="1120" y1="832" y2="832" x1="1056" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1072" y="1024" type="branch" />
            <wire x2="1120" y1="1024" y2="1024" x1="1072" />
        </branch>
        <branch name="clk_en_int">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1616" y="768" type="branch" />
            <wire x2="1616" y1="768" y2="768" x1="1504" />
        </branch>
        <branch name="load">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1616" y="928" type="branch" />
            <wire x2="1616" y1="928" y2="928" x1="1504" />
        </branch>
        <branch name="rst_int">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1600" y="1088" type="branch" />
            <wire x2="1600" y1="1088" y2="1088" x1="1504" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="1984" y1="1008" y2="1008" x1="1504" />
            <wire x2="1984" y1="1008" y2="1312" x1="1984" />
            <wire x2="2464" y1="1312" y2="1312" x1="1984" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="2000" y1="848" y2="848" x1="1504" />
            <wire x2="2000" y1="848" y2="1248" x1="2000" />
            <wire x2="2464" y1="1248" y2="1248" x1="2000" />
        </branch>
        <branch name="load">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1424" y="1440" type="branch" />
            <wire x2="1568" y1="1440" y2="1440" x1="1424" />
        </branch>
        <branch name="mode_control">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1424" y="1504" type="branch" />
            <wire x2="1568" y1="1504" y2="1504" x1="1424" />
        </branch>
        <branch name="clk_en_int">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1424" y="1568" type="branch" />
            <wire x2="1568" y1="1568" y2="1568" x1="1424" />
        </branch>
        <branch name="clk_100">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1424" y="1632" type="branch" />
            <wire x2="1568" y1="1632" y2="1632" x1="1424" />
        </branch>
        <branch name="rst_int">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1424" y="1696" type="branch" />
            <wire x2="1568" y1="1696" y2="1696" x1="1424" />
        </branch>
    </sheet>
</drawing>