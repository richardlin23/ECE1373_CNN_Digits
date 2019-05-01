ECE1373 Project - Classic CNN for Handwritten Digits
Richard Lin, Jianxiong Xu, Yifeng Zhang, Genwen Zhao
May 2, 2019

Nexys_Video_HDMI 
|--- hw_handoff/					- HDMI Wrapper handoff hardware description file (HDF)
|--- mlc/							- Contains Custom IP (HLS CNN Cores)
|     |--- {conv/fc/maxpool}_test/ 	- Source files and a script to generate each layer
|     |--- hls_proj/				- Synthesis/implementation solution1 for each layer
|--- proj/							- Main project folder for complete system
|     |--- HDMI.sdk/				- Exported HW Platform and Xilinx SDK Location
|     |--- HDMI.xpr					- Vivado Project File
|--- repo/							- Contains Vivado IPs from the Digilent HDMI Demo
|--- src/							- Constraints and Block Diagram related files
|--- Block Diagram.pdf				- High resolution Vivado block diagram
|--- Final Report.pdf				- Final Report Document
|--- Final Presentation.pdf			- Presentation Slides
|--- README.md						- This readme file