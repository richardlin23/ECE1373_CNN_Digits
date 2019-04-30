/************************************************************************/
/*																		*/
/*	video_demo.c	--	Nexys Video HDMI demonstration 						*/
/*																		*/
/************************************************************************/
/*	Author: Sam Bobrowicz												*/
/*	Copyright 2015, Digilent Inc.										*/
/************************************************************************/
/*  Module Description: 												*/
/*																		*/
/*		This file contains code for running a demonstration of the		*/
/*		Video input and output capabilities on the Nexys Video. It is a good	*/
/*		example of how to properly use the display_ctrl and				*/
/*		video_capture drivers.											*/
/*																		*/
/*																		*/
/************************************************************************/
/*  Revision History:													*/
/* 																		*/
/*		11/25/2015(SamB): Created										*/
/*		03/31/2017(ArtVVB): Updated sleep functions for 2016.4			*/
/*																		*/
/************************************************************************/

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include <time.h>
#include "video_demo.h"
#include "video_capture/video_capture.h"
#include "display_ctrl/display_ctrl.h"
#include "intc/intc.h"
#include <stdio.h>
#include "xuartlite_l.h"
//#include "xuartps.h"
#include "math.h"
#include <ctype.h>
#include <stdlib.h>
#include "xil_types.h"
#include "xil_cache.h"
#include "xparameters.h"
#include "sleep.h"
#include "hls_core/hw_hls_core.h"


/*
 * XPAR redefines
 */
#define DYNCLK_BASEADDR XPAR_AXI_DYNCLK_0_BASEADDR
#define VGA_VDMA_ID XPAR_AXIVDMA_0_DEVICE_ID
#define DISP_VTC_ID XPAR_VTC_0_DEVICE_ID
#define VID_VTC_ID XPAR_VTC_1_DEVICE_ID
#define VID_GPIO_ID XPAR_AXI_GPIO_VIDEO_DEVICE_ID
#define VID_VTC_IRPT_ID XPAR_INTC_0_VTC_1_VEC_ID
#define VID_GPIO_IRPT_ID XPAR_INTC_0_GPIO_0_VEC_ID
#define SCU_TIMER_ID XPAR_AXI_TIMER_0_DEVICE_ID
#define UART_BASEADDR XPAR_UARTLITE_0_BASEADDR


/* ------------------------------------------------------------ */
/*				Global Variables								*/
/* ------------------------------------------------------------ */

/*
 * Display and Video Driver structs
 */
DisplayCtrl dispCtrl;
XAxiVdma vdma;
VideoCapture videoCapt;
INTC intc;
char fRefresh; //flag used to trigger a refresh of the Menu on video detect
/*
 *
 *
 *
 * Framebuffers for video data
 *
 *
 *
 */
u8 frameBuf[DISPLAY_NUM_FRAMES][DEMO_MAX_FRAME];
u8 *pFrames[DISPLAY_NUM_FRAMES]; //array of pointers to the frame buffers

/*
 * Interrupt vector table
 */
const ivt_t ivt[] = {
	videoGpioIvt(VID_GPIO_IRPT_ID, &videoCapt),
	videoVtcIvt(VID_VTC_IRPT_ID, &(videoCapt.vtc))
};

/* ------------------------------------------------------------ */
/*				Procedure Definitions							*/
/* ------------------------------------------------------------ */


/* ------------------------------------------------------------ */
/*				Procedure Definitions							*/
/* ------------------------------------------------------------ */
volatile unsigned int * switchesPtr = (unsigned int*) 0X40020000;
volatile unsigned int * ledPtr = (unsigned int*) 0X40010000;
float * ddrMemory = ( float*) 0X90000000;
int main(void)
{
	Xil_ICacheEnable();
	Xil_DCacheEnable();
	MachinelearningInitialize();
	MachinelearningRun();
	return 0;
}

void resultDiaplay(u8 *frame, u32 width, u32 height, u32 stride, int result)
{
	int buffer = 255;
	u8 frame_buffer = *frame;
	if (buffer!= result)
	{
		buffer = result;
		switch (buffer)
		{
			case 0: Data0Diaplay( (u8*)frame,  width,  height,  stride); break;
			case 1: Data1Diaplay( (u8*)frame,  width,  height,  stride); break;
			case 2: Data2Diaplay( (u8*)frame,  width,  height,  stride); break;
			case 3: Data3Diaplay( (u8*)frame,  width,  height,  stride); break;
			case 4: Data4Diaplay( (u8*)frame,  width,  height,  stride); break;
			case 5: Data5Diaplay( (u8*)frame,  width,  height,  stride); break;
			case 6: Data6Diaplay( (u8*)frame,  width,  height,  stride); break;
			case 7: Data7Diaplay( (u8*)frame,  width,  height,  stride); break;
			case 8: Data8Diaplay( (u8*)frame,  width,  height,  stride); break;
			case 9: Data9Diaplay( (u8*)frame,  width,  height,  stride); break;
			default :  break;
		}
	}
}

void MachinelearningInitialize()
{
	int Status;
	XAxiVdma_Config *vdmaConfig;
	int i;

	/*
	 * Initialize an array of pointers to the 3 frame buffers
	 */
	for (i = 0; i < DISPLAY_NUM_FRAMES; i++)
	{
		pFrames[i] = frameBuf[i];
	}

	/*
	 * Initialize VDMA driver
	 */
	vdmaConfig = XAxiVdma_LookupConfig(VGA_VDMA_ID);
	if (!vdmaConfig)
	{
		xil_printf("No video DMA found for ID %d\r\n", VGA_VDMA_ID);
		return;
	}
	Status = XAxiVdma_CfgInitialize(&vdma, vdmaConfig, vdmaConfig->BaseAddress);
	if (Status != XST_SUCCESS)
	{
		xil_printf("VDMA Configuration Initialization failed %d\r\n", Status);
		return;
	}

	/*
	 * Initialize the Display controller and start it
	 */

	Status = DisplayInitialize(&dispCtrl, &vdma, DISP_VTC_ID, DYNCLK_BASEADDR, pFrames, DEMO_STRIDE);
	if (Status != XST_SUCCESS)
	{
		xil_printf("Display Ctrl initialization failed during demo initialization%d\r\n", Status);
		return;
	}
	Status = DisplayStart(&dispCtrl);
	if (Status != XST_SUCCESS)
	{
		xil_printf("Couldn't start display during demo initialization%d\r\n", Status);
		return;
	}

	/*
	 * Initialize the Interrupt controller and start it.
	 */
	Status = fnInitInterruptController(&intc);
	if(Status != XST_SUCCESS) {
		xil_printf("Error initializing interrupts");
		return;
	}
	fnEnableInterrupts(&intc, &ivt[0], sizeof(ivt)/sizeof(ivt[0]));

	/*
	 * Initialize the Video Capture device
	 */
	Status = VideoInitialize(&videoCapt, &intc, &vdma, VID_GPIO_ID, VID_VTC_ID, VID_VTC_IRPT_ID, pFrames, DEMO_STRIDE, DEMO_START_ON_DET);
	if (Status != XST_SUCCESS)
	{
		xil_printf("Video Ctrl initialization failed during demo initialization%d\r\n", Status);
		return;
	}

	/*
	 * Set the Video Detect callback to trigger the menu to reset, displaying the new detected resolution
	 */
	VideoSetCallback(&videoCapt, DemoISR, &fRefresh);

	//DemoPrintTest(dispCtrl.framePtr[dispCtrl.curFrame], dispCtrl.vMode.width, dispCtrl.vMode.height, dispCtrl.stride, DEMO_PATTERN_1);

	return;
}

void MachinelearningRun()
{
	int nextFrame = 0;
	char userInput = 0;
	u32 locked;
	XGpio *GpioPtr = &videoCapt.gpio;

	/* Flush UART FIFO */
	while (!XUartLite_IsReceiveEmpty(UART_BASEADDR))
	{
		XUartLite_ReadReg(UART_BASEADDR, XUL_RX_FIFO_OFFSET);
	}
	while (userInput != 'q')
	{
		fRefresh = 0;
		MachinelearningPrintMenu();

		/* Wait for data on UART */
		while (XUartLite_IsReceiveEmpty(UART_BASEADDR) && !fRefresh)
		{}

		/* Store the first character in the UART receive FIFO and echo it */
		if (!XUartLite_IsReceiveEmpty(UART_BASEADDR))
		{
			userInput = XUartLite_ReadReg(UART_BASEADDR, XUL_RX_FIFO_OFFSET);
			xil_printf("%c", userInput);
		}
		else  //Refresh triggered by video detect interrupt
		{
			userInput = 'r';
		}
		switch (userInput)
		{
		case '1':
			MachinelearningChangeRes();
			break;
		case '2':
			nextFrame = videoCapt.curFrame + 1;
			if (nextFrame >= DISPLAY_NUM_FRAMES)
			{
				nextFrame = 0;
			}
			VideoStop(&videoCapt);
			printf("start compressing imagine \n");
			BW_Convert(pFrames[videoCapt.curFrame], pFrames[nextFrame], videoCapt.timing.HActiveVideo, videoCapt.timing.VActiveVideo, DEMO_STRIDE);
			//VideoStart(&videoCapt);
			DisplayChangeFrame(&dispCtrl, nextFrame);
			break;
		case '3':

		    /// main application for CNN===========================//

			//step 0: set up the global DDR pointer

			printf("start machine learning \n");
			//step 1: write data to DDR -- later on replace with hardware HDMI camera
			//printf("start writing to ddr \n");
			write_to_ddr(ddrMemory);  //write weights, bias and input image to ddr
		    Xil_ICacheEnable();
		    Xil_DCacheEnable();  //trigger write to ddr

		    //step 2: wake up hls core to process data and calculate output
		    hw_hls_core_processing ();  //run the HLS core to process data

		    //step 3: softmax to normalize output
		    //printf("start softmax \n");
		    int recognized_num = softmax(ddrMemory, 25165824);  //run softmax to find recognized number
		    printf("recognized number is %d\n", recognized_num);
		    resultDiaplay(dispCtrl.framePtr[dispCtrl.curFrame], dispCtrl.vMode.width, dispCtrl.vMode.height, dispCtrl.stride, recognized_num);

		    //step 4: HDMI output to display number to monitor

		    ///========================LED light up for testing=====================//
			volatile unsigned int * switchesPtr = (unsigned int*) 0X40020000;
			volatile unsigned int * ledPtr = (unsigned int*) 0X40010000;
			* ledPtr = * switchesPtr;
			VideoStop(&videoCapt);
			DisplayChangeFrame(&dispCtrl, nextFrame);
		case '4':
			VideoStart(&videoCapt);
			nextFrame = videoCapt.curFrame + 1;
			if (nextFrame >= DISPLAY_NUM_FRAMES)
			{
				nextFrame = 0;
			}
			VideoChangeFrame(&videoCapt, nextFrame);
			break;
		case 'q':
			break;
		case 'r':
			locked = XGpio_DiscreteRead(GpioPtr, 2);
			xil_printf("%d", locked);
			break;
		default :
			xil_printf("\n\rInvalid Selection");
			usleep(50000);
		}
	}

	return;
}

void MachinelearningPrintMenu()
{
	//xil_printf("\x1B[H"); //Set cursor to top left of terminal
	//xil_printf("\x1B[2J"); //Clear terminal
	xil_printf("**************************************************\n\r");
	xil_printf("*             Machine Learning Demo              *\n\r");
	xil_printf("**************************************************\n\r");
//	xil_printf("*Display Resolution: %28s*\n\r", dispCtrl.vMode.label);
//	printf("*Display Pixel Clock Freq. (MHz): %15.3f*\n\r", dispCtrl.pxlFreq);
//	xil_printf("*Display Frame Index: %27d*\n\r", dispCtrl.curFrame);
//	if (videoCapt.state == VIDEO_DISCONNECTED) xil_printf("*Video Capture Resolution: %22s*\n\r", "!HDMI UNPLUGGED!");
//	else xil_printf("*Video Capture Resolution: %17dx%-4d*\n\r", videoCapt.timing.HActiveVideo, videoCapt.timing.VActiveVideo);
//	xil_printf("*Video Frame Index: %29d*\n\r", videoCapt.curFrame);
	//xil_printf("**************************************************\n\r");
	xil_printf("\n\r");
	xil_printf("1 - Change Display Resolution\n\r");
	xil_printf("2 - Capture the Data\n\r");
	xil_printf("3 - Process Machine Learning\n\r");
	xil_printf("4 - Start Video Stream\n\r");
	xil_printf("q - Quit\n\r");
	xil_printf("\n\r");
	xil_printf("\n\r");
	xil_printf("Enter a selection:");
}

void MachinelearningChangeRes()
{
	int fResSet = 0;
	int status;
	char userInput = 0;

	/* Flush UART FIFO */
	while (!XUartLite_IsReceiveEmpty(UART_BASEADDR))
		{
			XUartLite_ReadReg(UART_BASEADDR, XUL_RX_FIFO_OFFSET);
		}

	while (!fResSet)
	{
		MachinelearningCRMenu();

		/* Wait for data on UART */
		while (XUartLite_IsReceiveEmpty(UART_BASEADDR) && !fRefresh)
		{}

		/* Store the first character in the UART recieve FIFO and echo it */

		userInput = XUartLite_ReadReg(UART_BASEADDR, XUL_RX_FIFO_OFFSET);
		xil_printf("%c", userInput);
		status = XST_SUCCESS;
		switch (userInput)
		{
		case '1':
			status = DisplayStop(&dispCtrl);
			DisplaySetMode(&dispCtrl, &VMODE_640x480);
			DisplayStart(&dispCtrl);
			fResSet = 1;
			break;
		case '2':
			status = DisplayStop(&dispCtrl);
			DisplaySetMode(&dispCtrl, &VMODE_800x600);
			DisplayStart(&dispCtrl);
			fResSet = 1;
			break;
		case '3':
			status = DisplayStop(&dispCtrl);
			DisplaySetMode(&dispCtrl, &VMODE_1280x720);
			DisplayStart(&dispCtrl);
			fResSet = 1;
			break;
		case '4':
			status = DisplayStop(&dispCtrl);
			DisplaySetMode(&dispCtrl, &VMODE_1280x1024);
			DisplayStart(&dispCtrl);
			fResSet = 1;
			break;
		case '5':
			status = DisplayStop(&dispCtrl);
			DisplaySetMode(&dispCtrl, &VMODE_1920x1080);
			DisplayStart(&dispCtrl);
			fResSet = 1;
			break;
		case 'q':
			fResSet = 1;
			break;
		default :
			xil_printf("\n\rInvalid Selection");
			usleep(50000);
		}
		if (status == XST_DMA_ERROR)
		{
			xil_printf("\n\rWARNING: AXI VDMA Error detected and cleared\n\r");
		}
	}
}

void MachinelearningCRMenu()
{
	xil_printf("\x1B[H"); //Set cursor to top left of terminal
	xil_printf("\x1B[2J"); //Clear terminal
	xil_printf("**************************************************\n\r");
	xil_printf("*             Nexys Video HDMI Demo              *\n\r");
	xil_printf("**************************************************\n\r");
	xil_printf("*Current Resolution: %28s*\n\r", dispCtrl.vMode.label);
	printf("*Pixel Clock Freq. (MHz): %23.3f*\n\r", dispCtrl.pxlFreq);
	xil_printf("**************************************************\n\r");
	xil_printf("\n\r");
	xil_printf("1 - %s\n\r", VMODE_640x480.label);
	xil_printf("2 - %s\n\r", VMODE_800x600.label);
	xil_printf("3 - %s\n\r", VMODE_1280x720.label);
	xil_printf("4 - %s\n\r", VMODE_1280x1024.label);
	xil_printf("5 - %s\n\r", VMODE_1920x1080.label);
	xil_printf("q - Quit (don't change resolution)\n\r");
	xil_printf("\n\r");
	xil_printf("Select a new resolution:");
}

void BW_Convert(u8 *srcFrame, u8 *destFrame, u32 width, u32 height, u32 stride)
{
	u32 xcoi, ycoi;

	u32 lineStart = 0;
	float buffer_BW;
	volatile float * buffer_compress = ( float*) 0X99000000;
	//printf("Generate the input starting \n");
	//printf("%d, %d \n", height, width);
	for(ycoi = 0; ycoi < height; ycoi++)
	{
		for(xcoi = 0; xcoi < (width * 3); xcoi+=3)
		{

			buffer_BW = srcFrame[xcoi + lineStart] + srcFrame[xcoi + lineStart + 1] + srcFrame[xcoi + lineStart + 2];
			buffer_BW = buffer_BW / 3;
			if (buffer_BW <=60)
			{
				buffer_BW = 0;
			}
			else if (buffer_BW >=140)
		{
				buffer_BW = 255;
		}
			buffer_compress[ycoi*width+xcoi/3] = buffer_BW;
		}
		lineStart += stride;
	}
	//printf("Generate the input done 1 \n");
	ycoi = 0;
	xcoi = 0;
	u32 lineStart1 = 0;
	for(ycoi = 0; ycoi < height; ycoi++)
	{
		for(xcoi = 0; xcoi < (width * 3); xcoi+=3)
		{
			destFrame[xcoi + lineStart1]     = (u8)buffer_compress[ycoi*width+xcoi/3] ;         //Red
			destFrame[xcoi + lineStart1 + 1] = (u8)buffer_compress[ycoi*width+xcoi/3] ; //Blue
			destFrame[xcoi + lineStart1 + 2] = (u8)buffer_compress[ycoi*width+xcoi/3] ; //Green
		}
		lineStart1 += stride;
	}
	// printf("Generate the input done 2 \n");

	/*
	 * Flush the framebuffer memory range to ensure changes are written to the
	 * actual memory, and therefore accessible by the VDMA.
	 *
	 */

	double out_compress[28][28];
	int x_index = width/28;
	int y_index = height/28;
    for (int o_y = 0; o_y < 28; o_y++)
    {
      for (int o_x = 0; o_x < 28; o_x++)
      {
    	  out_compress[o_y][o_x] = 0;
         for (int i_y = 0; i_y < y_index; i_y++)
         {
            // Input X Dimension
            for (int i_x = 0; i_x < x_index; i_x++)
            {
            	out_compress[o_y][o_x] += buffer_compress[(o_y*y_index+i_y)*width+o_x*x_index+i_x];
            	//out_compress[o_y][o_x] += buffer_compress[i_y][i_x + 1];
            	//out_compress[o_y][o_x] += buffer_compress[i_y][i_x + 2];
            }
          }

         out_compress[o_y][o_x] = out_compress[o_y][o_x]/(x_index*y_index);
			if (out_compress[o_y][o_x] <=90)
			{
				out_compress[o_y][o_x] = 0;
			}
			else if (out_compress[o_y][o_x] >=150)
		{
				out_compress[o_y][o_x] = 255;
		}
         input_image2[o_y*28+o_x] = 1.0 - ((float) out_compress[o_y][o_x])/255;
      }
    }
    printf("Compress the input done \n");


/*
for (int i=0; i<28;i++)
{
	for (int j=0; j<28;j++)
	{
		out_compress[i][j] = 255 * ( - input_image1[28*i + j] + 1);
	}
}
*/
    for (int i=0; i<28;i++)
    {
    	for (int j=0; j<28;j++)
    	{
    	//	printf("%f  ", out_compress[i][j]);
    	}
    	// printf("\n  ");
    }
    lineStart=0;
	for(ycoi = 0; ycoi < 280; ycoi++)
	{
		for(xcoi = 0; xcoi < (280 * 3); xcoi+=3)
		{

			destFrame[xcoi + lineStart] = out_compress[ycoi/10][xcoi/30];         //Red
			destFrame[xcoi + lineStart + 1] = out_compress[ycoi/10][xcoi/30]; //Blue
			destFrame[xcoi + lineStart + 2] = out_compress[ycoi/10][xcoi/30]; //Green
		}
		lineStart += stride;
	}

	 Xil_DCacheFlushRange((unsigned int) destFrame, DEMO_MAX_FRAME);
}

/*
 * Bilinear interpolation algorithm. Assumes both frames have the same stride.
 */
void DemoISR(void *callBackRef, void *pVideo)
{
	char *data = (char *) callBackRef;
	*data = 1; //set fRefresh to 1
}


