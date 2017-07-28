# ISE_Tutorial
## Chapter 2: HDL-Based Design
## Chapter 3: Schematic-Based Design
## Chapter 4: Behavioral Simulation
## Chapter 5: Design Implementation

## 编写VHDL编码器模型并进行仿真
### VHDL模型：ink_jet_decoder.vhd  
* color2 color1 color0   spythetic_color
*   0      0       1        black
*   0      1       0        cyan
*   0      1       1        megenta
*   0      0       0        yellow
*   1      0       1        light_cyan
*   1      1       1        light_megenta
### VHDL仿真平台：ink_jet_decoder_tb.vhd
添加输入时钟引脚，使得仿真能够进行。
### 仿真效果图
![仿真效果图](https://github.com/Twsa/ISE_Tutorial/blob/master/MyVHDLTest/graphic/ink_jet_graphic.png)

## 编写VHDL解码器模型并进行仿真
### alarm_no_priority.vhd  
* color2 color1 color0   spythetic_color
* 编码格式
* 1区：000  2区：001  3区：010  4区：011
* 5区：100  6区：101  7区：110  8区: 111   
* Note 左边为最高位，同一时刻输入信号只有一个1
### alarm_no_priority_tb.vhd
`
       -- insert simulation
	   --2区 set
       wait for clk_period*2;
		 zone <= "01000000";

`
### 仿真效果图
![仿真效果图](https://github.com/Twsa/ISE_Tutorial/blob/master/MyVHDLTest/graphic/alarm_no_priority.png);