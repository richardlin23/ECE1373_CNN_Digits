#include "disNum.h"
#include "data.h"
#include "xil_cache.h"
#include "../video_demo.h"

void Data0Diaplay(u8 *frame, u32 width, u32 height, u32 stride)
{
	//volatile unsigned int * ddrMemory = (unsigned int*) 0X90000000;
	u32 xcoi, ycoi;
	u32 iPixelAddr;
	u8 wRed, wBlue, wGreen;
	//u32 i =1;
		for(xcoi = 0; xcoi < (width*3); xcoi+=3)
		{
			iPixelAddr = xcoi;
			for(ycoi = 0; ycoi < height; ycoi++)
			{
				wBlue = 0;
				wRed  = 0;
				wGreen = 0;
				if ((xcoi<108*3)&&(ycoi<177))
				{
					if(zeroDis[ycoi][xcoi/3] < 200)
					{
						wBlue = 255;
						wRed  = 255;
						wGreen = 255;
					}
					else
					{
						wBlue = 0;
						wRed  = 0;
						wGreen = 0;
					}
		//			ddrMemory[i] = i;
		//			i++;
				}

				frame[iPixelAddr] = wRed;
				frame[iPixelAddr + 1] = wBlue;
				frame[iPixelAddr + 2] = wGreen;
				/*
				 * This pattern is printed one vertical line at a time, so the address must be incremented
				 * by the stride instead of just 1.
				 */
				iPixelAddr += stride;
			}
		}
		/*
		 * Flush the framebuffer memory range to ensure changes are written to the
		 * actual memory, and therefore accessible by the VDMA.
		 */
		Xil_DCacheFlushRange((unsigned int) frame, DEMO_MAX_FRAME);
}

void Data1Diaplay(u8 *frame, u32 width, u32 height, u32 stride)
{
	u32 xcoi, ycoi;
	u32 iPixelAddr;
	u8 wRed, wBlue, wGreen;
		for(xcoi = 0; xcoi < (width*3); xcoi+=3)
		{
			iPixelAddr = xcoi;
			for(ycoi = 0; ycoi < height; ycoi++)
			{
				wBlue = 0;
				wRed  = 0;
				wGreen = 0;
				if ((xcoi<85*3)&&(ycoi<181))
				{
					if(oneDis[ycoi][xcoi/3] < 200)
					{
						wBlue = 255;
						wRed  = 255;
						wGreen = 255;
					}
					else
					{
						wBlue = 0;
						wRed  = 0;
						wGreen = 0;
					}
				}

				frame[iPixelAddr] = wRed;
				frame[iPixelAddr + 1] = wBlue;
				frame[iPixelAddr + 2] = wGreen;
				/*
				 * This pattern is printed one vertical line at a time, so the address must be incremented
				 * by the stride instead of just 1.
				 */
				iPixelAddr += stride;
			}
		}
		/*
		 * Flush the framebuffer memory range to ensure changes are written to the
		 * actual memory, and therefore accessible by the VDMA.
		 */
		Xil_DCacheFlushRange((unsigned int) frame, DEMO_MAX_FRAME);
}

void Data2Diaplay(u8 *frame, u32 width, u32 height, u32 stride)
{
	u32 xcoi, ycoi;
	u32 iPixelAddr;
	u8 wRed, wBlue, wGreen;
		for(xcoi = 0; xcoi < (width*3); xcoi+=3)
		{
			iPixelAddr = xcoi;
			for(ycoi = 0; ycoi < height; ycoi++)
			{
				wBlue = 0;
				wRed  = 0;
				wGreen = 0;
				if ((xcoi<99*3)&&(ycoi<179))
				{
					if(twoDis[ycoi][xcoi/3] < 200)
					{
						wBlue = 255;
						wRed  = 255;
						wGreen = 255;
					}
					else
					{
						wBlue = 0;
						wRed  = 0;
						wGreen = 0;
					}
				}

				frame[iPixelAddr] = wRed;
				frame[iPixelAddr + 1] = wBlue;
				frame[iPixelAddr + 2] = wGreen;
				/*
				 * This pattern is printed one vertical line at a time, so the address must be incremented
				 * by the stride instead of just 1.
				 */
				iPixelAddr += stride;
			}
		}
		/*
		 * Flush the framebuffer memory range to ensure changes are written to the
		 * actual memory, and therefore accessible by the VDMA.
		 */
		Xil_DCacheFlushRange((unsigned int) frame, DEMO_MAX_FRAME);
}

void Data3Diaplay(u8 *frame, u32 width, u32 height, u32 stride)
{
	u32 xcoi, ycoi;
	u32 iPixelAddr;
	u8 wRed, wBlue, wGreen;
		for(xcoi = 0; xcoi < (width*3); xcoi+=3)
		{
			iPixelAddr = xcoi;
			for(ycoi = 0; ycoi < height; ycoi++)
			{
				wBlue = 0;
				wRed  = 0;
				wGreen = 0;
				if ((xcoi<93*3)&&(ycoi<171))
				{
					if(threeDis[ycoi][xcoi/3] < 200)
					{
						wBlue = 255;
						wRed  = 255;
						wGreen = 255;
					}
					else
					{
						wBlue = 0;
						wRed  = 0;
						wGreen = 0;
					}
				}

				frame[iPixelAddr] = wRed;
				frame[iPixelAddr + 1] = wBlue;
				frame[iPixelAddr + 2] = wGreen;
				/*
				 * This pattern is printed one vertical line at a time, so the address must be incremented
				 * by the stride instead of just 1.
				 */
				iPixelAddr += stride;
			}
		}
		/*
		 * Flush the framebuffer memory range to ensure changes are written to the
		 * actual memory, and therefore accessible by the VDMA.
		 */
		Xil_DCacheFlushRange((unsigned int) frame, DEMO_MAX_FRAME);
}

void Data4Diaplay(u8 *frame, u32 width, u32 height, u32 stride)
{
	u32 xcoi, ycoi;
	u32 iPixelAddr;
	u8 wRed, wBlue, wGreen;
		for(xcoi = 0; xcoi < (width*3); xcoi+=3)
		{
			iPixelAddr = xcoi;
			for(ycoi = 0; ycoi < height; ycoi++)
			{
				wBlue = 0;
				wRed  = 0;
				wGreen = 0;
				if ((xcoi<50*3)&&(ycoi<93))
				{
					if(fourDis[ycoi][xcoi/3] < 200)
					{
						wBlue = 255;
						wRed  = 255;
						wGreen = 255;
					}
					else
					{
						wBlue = 0;
						wRed  = 0;
						wGreen = 0;
					}
				}

				frame[iPixelAddr] = wRed;
				frame[iPixelAddr + 1] = wBlue;
				frame[iPixelAddr + 2] = wGreen;
				/*
				 * This pattern is printed one vertical line at a time, so the address must be incremented
				 * by the stride instead of just 1.
				 */
				iPixelAddr += stride;
			}
		}
		/*
		 * Flush the framebuffer memory range to ensure changes are written to the
		 * actual memory, and therefore accessible by the VDMA.
		 */
		Xil_DCacheFlushRange((unsigned int) frame, DEMO_MAX_FRAME);
}

void Data5Diaplay(u8 *frame, u32 width, u32 height, u32 stride)
{
	u32 xcoi, ycoi;
	u32 iPixelAddr;
	u8 wRed, wBlue, wGreen;
		for(xcoi = 0; xcoi < (width*3); xcoi+=3)
		{
			iPixelAddr = xcoi;
			for(ycoi = 0; ycoi < height; ycoi++)
			{
				wBlue = 0;
				wRed  = 0;
				wGreen = 0;
				if ((xcoi<50*3)&&(ycoi<91))
				{
					if(fiveDis[ycoi][xcoi/3] < 200)
					{
						wBlue = 255;
						wRed  = 255;
						wGreen = 255;
					}
					else
					{
						wBlue = 0;
						wRed  = 0;
						wGreen = 0;
					}
				}

				frame[iPixelAddr] = wRed;
				frame[iPixelAddr + 1] = wBlue;
				frame[iPixelAddr + 2] = wGreen;
				/*
				 * This pattern is printed one vertical line at a time, so the address must be incremented
				 * by the stride instead of just 1.
				 */
				iPixelAddr += stride;
			}
		}
		/*
		 * Flush the framebuffer memory range to ensure changes are written to the
		 * actual memory, and therefore accessible by the VDMA.
		 */
		Xil_DCacheFlushRange((unsigned int) frame, DEMO_MAX_FRAME);
}

void Data6Diaplay(u8 *frame, u32 width, u32 height, u32 stride)
{
	u32 xcoi, ycoi;
	u32 iPixelAddr;
	u8 wRed, wBlue, wGreen;
		for(xcoi = 0; xcoi < (width*3); xcoi+=3)
		{
			iPixelAddr = xcoi;
			for(ycoi = 0; ycoi < height; ycoi++)
			{
				wBlue = 0;
				wRed  = 0;
				wGreen = 0;
				if ((xcoi<43*3)&&(ycoi<85))
				{
					if(sixDis[ycoi][xcoi/3] < 200)
					{
						wBlue = 255;
						wRed  = 255;
						wGreen = 255;
					}
					else
					{
						wBlue = 0;
						wRed  = 0;
						wGreen = 0;
					}
				}

				frame[iPixelAddr] = wRed;
				frame[iPixelAddr + 1] = wBlue;
				frame[iPixelAddr + 2] = wGreen;
				/*
				 * This pattern is printed one vertical line at a time, so the address must be incremented
				 * by the stride instead of just 1.
				 */
				iPixelAddr += stride;
			}
		}
		/*
		 * Flush the framebuffer memory range to ensure changes are written to the
		 * actual memory, and therefore accessible by the VDMA.
		 */
		Xil_DCacheFlushRange((unsigned int) frame, DEMO_MAX_FRAME);
}

void Data7Diaplay(u8 *frame, u32 width, u32 height, u32 stride)
{
	u32 xcoi, ycoi;
	u32 iPixelAddr;
	u8 wRed, wBlue, wGreen;
		for(xcoi = 0; xcoi < (width*3); xcoi+=3)
		{
			iPixelAddr = xcoi;
			for(ycoi = 0; ycoi < height; ycoi++)
			{
				wBlue = 0;
				wRed  = 0;
				wGreen = 0;
				if ((xcoi<43*3)&&(ycoi<81))
				{
					if(sevenDis[ycoi][xcoi/3] < 200)
					{
						wBlue = 255;
						wRed  = 255;
						wGreen = 255;
					}
					else
					{
						wBlue = 0;
						wRed  = 0;
						wGreen = 0;
					}
				}

				frame[iPixelAddr] = wRed;
				frame[iPixelAddr + 1] = wBlue;
				frame[iPixelAddr + 2] = wGreen;
				/*
				 * This pattern is printed one vertical line at a time, so the address must be incremented
				 * by the stride instead of just 1.
				 */
				iPixelAddr += stride;
			}
		}
		/*
		 * Flush the framebuffer memory range to ensure changes are written to the
		 * actual memory, and therefore accessible by the VDMA.
		 */
		Xil_DCacheFlushRange((unsigned int) frame, DEMO_MAX_FRAME);
}

void Data8Diaplay(u8 *frame, u32 width, u32 height, u32 stride)
{
	u32 xcoi, ycoi;
	u32 iPixelAddr;
	u8 wRed, wBlue, wGreen;
		for(xcoi = 0; xcoi < (width*3); xcoi+=3)
		{
			iPixelAddr = xcoi;
			for(ycoi = 0; ycoi < height; ycoi++)
			{
				wBlue = 0;
				wRed  = 0;
				wGreen = 0;
				if ((xcoi<45*3)&&(ycoi<86))
				{
					if(eightDis[ycoi][xcoi/3] < 200)
					{
						wBlue = 255;
						wRed  = 255;
						wGreen = 255;
					}
					else
					{
						wBlue = 0;
						wRed  = 0;
						wGreen = 0;
					}
				}

				frame[iPixelAddr] = wRed;
				frame[iPixelAddr + 1] = wBlue;
				frame[iPixelAddr + 2] = wGreen;
				/*
				 * This pattern is printed one vertical line at a time, so the address must be incremented
				 * by the stride instead of just 1.
				 */
				iPixelAddr += stride;
			}
		}
		/*
		 * Flush the framebuffer memory range to ensure changes are written to the
		 * actual memory, and therefore accessible by the VDMA.
		 */
		Xil_DCacheFlushRange((unsigned int) frame, DEMO_MAX_FRAME);
}

void Data9Diaplay(u8 *frame, u32 width, u32 height, u32 stride)
{
	u32 xcoi, ycoi;
	u32 iPixelAddr;
	u8 wRed, wBlue, wGreen;
		for(xcoi = 0; xcoi < (width*3); xcoi+=3)
		{
			iPixelAddr = xcoi;
			for(ycoi = 0; ycoi < height; ycoi++)
			{
				wBlue = 0;
				wRed  = 0;
				wGreen = 0;
				if ((xcoi<48*3)&&(ycoi<85))
				{
					if(nineDis[ycoi][xcoi/3] < 200)
					{
						wBlue = 255;
						wRed  = 255;
						wGreen = 255;
					}
					else
					{
						wBlue = 0;
						wRed  = 0;
						wGreen = 0;
					}
				}

				frame[iPixelAddr] = wRed;
				frame[iPixelAddr + 1] = wBlue;
				frame[iPixelAddr + 2] = wGreen;
				/*
				 * This pattern is printed one vertical line at a time, so the address must be incremented
				 * by the stride instead of just 1.
				 */
				iPixelAddr += stride;
			}
		}
		/*
		 * Flush the framebuffer memory range to ensure changes are written to the
		 * actual memory, and therefore accessible by the VDMA.
		 */
		Xil_DCacheFlushRange((unsigned int) frame, DEMO_MAX_FRAME);
}


