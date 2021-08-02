################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
E:/Git-category/GIT-WCH/WCH_CH32F103/CH32V103/CH32V103EVT/EVT/EXAM/SRC/Startup/startup_ch32v10x.S 

OBJS += \
./Startup/startup_ch32v10x.o 

S_UPPER_DEPS += \
./Startup/startup_ch32v10x.d 


# Each subdirectory must supply rules for building sources it contributes
Startup/startup_ch32v10x.o: E:/Git-category/GIT-WCH/WCH_CH32F103/CH32V103/CH32V103EVT/EVT/EXAM/SRC/Startup/startup_ch32v10x.S
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized  -g -x assembler -I"E:\Git-category\GIT-WCH\WCH_CH32F103\CH32V103\CH32V103EVT\EVT\EXAM\SRC\Startup" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

