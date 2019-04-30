// FC layer SAXI control =========================================
// CTRL_BUS
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of input_offset
//        bit 31~0 - input_offset[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of output_offset
//        bit 31~0 - output_offset[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of batch_size
//        bit 31~0 - batch_size[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of num_inputs
//        bit 31~0 - num_inputs[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of num_outputs
//        bit 31~0 - num_outputs[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of enable_relu
//        bit 31~0 - enable_relu[31:0] (Read/Write)
// 0x3c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define FC_CTRL_BUS_ADDR_AP_CTRL            0x00
#define FC_CTRL_BUS_ADDR_GIE                0x04
#define FC_CTRL_BUS_ADDR_IER                0x08
#define FC_CTRL_BUS_ADDR_ISR                0x0c
#define FC_CTRL_BUS_ADDR_INPUT_OFFSET_DATA  0x10
#define FC_CTRL_BUS_BITS_INPUT_OFFSET_DATA  32
#define FC_CTRL_BUS_ADDR_OUTPUT_OFFSET_DATA 0x18
#define FC_CTRL_BUS_BITS_OUTPUT_OFFSET_DATA 32
#define FC_CTRL_BUS_ADDR_BATCH_SIZE_DATA    0x20
#define FC_CTRL_BUS_BITS_BATCH_SIZE_DATA    32
#define FC_CTRL_BUS_ADDR_NUM_INPUTS_DATA    0x28
#define FC_CTRL_BUS_BITS_NUM_INPUTS_DATA    32
#define FC_CTRL_BUS_ADDR_NUM_OUTPUTS_DATA   0x30
#define FC_CTRL_BUS_BITS_NUM_OUTPUTS_DATA   32
#define FC_CTRL_BUS_ADDR_ENABLE_RELU_DATA   0x38
#define FC_CTRL_BUS_BITS_ENABLE_RELU_DATA   32
// ================================================================

// MAXPOOL layer SAXI control =====================================
// CTRL_BUS
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of input_offset
//        bit 31~0 - input_offset[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of output_offset
//        bit 31~0 - output_offset[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of b
//        bit 31~0 - b[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of od
//        bit 31~0 - od[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of ox
//        bit 31~0 - ox[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of oy
//        bit 31~0 - oy[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of id
//        bit 31~0 - id[31:0] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of ix
//        bit 31~0 - ix[31:0] (Read/Write)
// 0x4c : reserved
// 0x50 : Data signal of iy
//        bit 31~0 - iy[31:0] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of s
//        bit 31~0 - s[31:0] (Read/Write)
// 0x5c : reserved
// 0x60 : Data signal of k
//        bit 31~0 - k[31:0] (Read/Write)
// 0x64 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define MAXPOOL_LAYER_CTRL_BUS_ADDR_AP_CTRL            0x00
#define MAXPOOL_LAYER_CTRL_BUS_ADDR_GIE                0x04
#define MAXPOOL_LAYER_CTRL_BUS_ADDR_IER                0x08
#define MAXPOOL_LAYER_CTRL_BUS_ADDR_ISR                0x0c
#define MAXPOOL_LAYER_CTRL_BUS_ADDR_INPUT_OFFSET_DATA  0x10
#define MAXPOOL_LAYER_CTRL_BUS_BITS_INPUT_OFFSET_DATA  32
#define MAXPOOL_LAYER_CTRL_BUS_ADDR_OUTPUT_OFFSET_DATA 0x18
#define MAXPOOL_LAYER_CTRL_BUS_BITS_OUTPUT_OFFSET_DATA 32
#define MAXPOOL_LAYER_CTRL_BUS_ADDR_B_DATA             0x20
#define MAXPOOL_LAYER_CTRL_BUS_BITS_B_DATA             32
#define MAXPOOL_LAYER_CTRL_BUS_ADDR_OD_DATA            0x28
#define MAXPOOL_LAYER_CTRL_BUS_BITS_OD_DATA            32
#define MAXPOOL_LAYER_CTRL_BUS_ADDR_OX_DATA            0x30
#define MAXPOOL_LAYER_CTRL_BUS_BITS_OX_DATA            32
#define MAXPOOL_LAYER_CTRL_BUS_ADDR_OY_DATA            0x38
#define MAXPOOL_LAYER_CTRL_BUS_BITS_OY_DATA            32
#define MAXPOOL_LAYER_CTRL_BUS_ADDR_ID_DATA            0x40
#define MAXPOOL_LAYER_CTRL_BUS_BITS_ID_DATA            32
#define MAXPOOL_LAYER_CTRL_BUS_ADDR_IX_DATA            0x48
#define MAXPOOL_LAYER_CTRL_BUS_BITS_IX_DATA            32
#define MAXPOOL_LAYER_CTRL_BUS_ADDR_IY_DATA            0x50
#define MAXPOOL_LAYER_CTRL_BUS_BITS_IY_DATA            32
#define MAXPOOL_LAYER_CTRL_BUS_ADDR_S_DATA             0x58
#define MAXPOOL_LAYER_CTRL_BUS_BITS_S_DATA             32
#define MAXPOOL_LAYER_CTRL_BUS_ADDR_K_DATA             0x60
#define MAXPOOL_LAYER_CTRL_BUS_BITS_K_DATA             32
//================================================================

// CONV layer SAXI control ======================================
// CTRL_BUS
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of input_offset
//        bit 31~0 - input_offset[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of output_offset
//        bit 31~0 - output_offset[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of b
//        bit 31~0 - b[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of od
//        bit 31~0 - od[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of ox
//        bit 31~0 - ox[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of oy
//        bit 31~0 - oy[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of id
//        bit 31~0 - id[31:0] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of ix
//        bit 31~0 - ix[31:0] (Read/Write)
// 0x4c : reserved
// 0x50 : Data signal of iy
//        bit 31~0 - iy[31:0] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of s
//        bit 31~0 - s[31:0] (Read/Write)
// 0x5c : reserved
// 0x60 : Data signal of k
//        bit 31~0 - k[31:0] (Read/Write)
// 0x64 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONV_LAYER_CTRL_BUS_ADDR_AP_CTRL            0x00
#define CONV_LAYER_CTRL_BUS_ADDR_GIE                0x04
#define CONV_LAYER_CTRL_BUS_ADDR_IER                0x08
#define CONV_LAYER_CTRL_BUS_ADDR_ISR                0x0c
#define CONV_LAYER_CTRL_BUS_ADDR_INPUT_OFFSET_DATA  0x10
#define CONV_LAYER_CTRL_BUS_BITS_INPUT_OFFSET_DATA  32
#define CONV_LAYER_CTRL_BUS_ADDR_OUTPUT_OFFSET_DATA 0x18
#define CONV_LAYER_CTRL_BUS_BITS_OUTPUT_OFFSET_DATA 32
#define CONV_LAYER_CTRL_BUS_ADDR_B_DATA             0x20
#define CONV_LAYER_CTRL_BUS_BITS_B_DATA             32
#define CONV_LAYER_CTRL_BUS_ADDR_OD_DATA            0x28
#define CONV_LAYER_CTRL_BUS_BITS_OD_DATA            32
#define CONV_LAYER_CTRL_BUS_ADDR_OX_DATA            0x30
#define CONV_LAYER_CTRL_BUS_BITS_OX_DATA            32
#define CONV_LAYER_CTRL_BUS_ADDR_OY_DATA            0x38
#define CONV_LAYER_CTRL_BUS_BITS_OY_DATA            32
#define CONV_LAYER_CTRL_BUS_ADDR_ID_DATA            0x40
#define CONV_LAYER_CTRL_BUS_BITS_ID_DATA            32
#define CONV_LAYER_CTRL_BUS_ADDR_IX_DATA            0x48
#define CONV_LAYER_CTRL_BUS_BITS_IX_DATA            32
#define CONV_LAYER_CTRL_BUS_ADDR_IY_DATA            0x50
#define CONV_LAYER_CTRL_BUS_BITS_IY_DATA            32
#define CONV_LAYER_CTRL_BUS_ADDR_S_DATA             0x58
#define CONV_LAYER_CTRL_BUS_BITS_S_DATA             32
#define CONV_LAYER_CTRL_BUS_ADDR_K_DATA             0x60
#define CONV_LAYER_CTRL_BUS_BITS_K_DATA             32
//==========================================================

#define HW_CONV_CTRL_ADDR     0x44A40000
#define HW_FC_CTRL_ADDR       0x44A50000
#define HW_MAXPOOL_CTRL_ADDR  0x44A60000


//DDR input offset
#define CONV1_INPUT_OFFSET 0
#define POOL1_INPUT_OFFSET 4194304
#define CONV2_INPUT_OFFSET 8388608
#define POOL2_INPUT_OFFSET 12582912
#define FC1_INPUT_OFFSET   16777216
#define FC2_INPUT_OFFSET   20971520

// common hls function
int   read_reg(volatile void* map_base, int offset);
void  write_reg(volatile void* map_base, int offset, int value);

float read_data(volatile void* map_base, int offset);
void  write_data(volatile void* map_base, int offset, float value);

void  setup_fc_layer( volatile void* map_base, int target, int input_offset, int output_offset, int num_inputs, int num_outputs, int enable_relu );
void  setup_conv_layer( volatile void* map_base, int target, int input_offset, int output_offset, int id, int ix, int iy, int od, int ox, int oy, int s, int k );
void  setup_maxpool_layer( volatile void* map_base, int target, int input_offset, int output_offset, int id, int ix, int iy, int od, int ox, int oy, int s, int k  );

void  start_layer(volatile void* map_base, int target, int ap_start_addr);
int   poll_layer(volatile void* map_base, int target, int ap_status_addr);

void hw_fc_layer(int input_offset,         // offset of inputs
				int output_offset,        // offset of outputs
				const int num_inputs,     // number of input (dimensions)
				const int num_outputs,    // number of output (dimensions)
				const int enable_relu);    // flag to enable/disable ReLU

void hw_maxpool_layer(int input_offset,         // offset of inputs
				int output_offset,        // offset of outputs
				const int id,
				const int ix,
				const int iy,
				const int od,
				const int ox,
				const int oy,
				const int s,
				const int k);    // flag to enable/disable ReLU


void hw_conv_layer(int input_offset,         // offset of inputs
				int output_offset,        // offset of outputs
				const int id,
				const int ix,
				const int iy,
				const int od,
				const int ox,
				const int oy,
				const int s,
				const int k);

void hw_hls_core_processing ();

int softmax(float *input_orig, int output_offset_ip2);
void write_to_ddr(float *ddrMemory);
