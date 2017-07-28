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
** VHDL仿真平台：ink_jet_decoder_tb.vhd  **
添加输入时钟引脚，使得仿真能够进行。
### 仿真效果图
![仿真效果图](https://github.com/Twsa/ISE_Tutorial/tree/master/MyVHDLTest/graphic/ink_jet_graphic.png)

