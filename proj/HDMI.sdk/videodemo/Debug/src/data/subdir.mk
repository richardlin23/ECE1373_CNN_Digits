################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/data/data.c \
../src/data/dataTransfer.c \
../src/data/disNum.c 

OBJS += \
./src/data/data.o \
./src/data/dataTransfer.o \
./src/data/disNum.o 

C_DEPS += \
./src/data/data.d \
./src/data/dataTransfer.d \
./src/data/disNum.d 


# Each subdirectory must supply rules for building sources it contributes
src/data/%.o: ../src/data/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../videodemo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v10.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -mxl-float-convert -mxl-float-sqrt -Wl,--no-relax -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


