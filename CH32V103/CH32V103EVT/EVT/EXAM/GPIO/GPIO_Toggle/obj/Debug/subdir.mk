################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/Git-category/GIT-WCH/WCH_CH32F103/CH32V103/CH32V103EVT/EVT/EXAM/SRC/Debug/debug.c 

OBJS += \
./Debug/debug.o 

C_DEPS += \
./Debug/debug.d 


# Each subdirectory must supply rules for building sources it contributes
Debug/debug.o: E:/Git-category/GIT-WCH/WCH_CH32F103/CH32V103/CH32V103EVT/EVT/EXAM/SRC/Debug/debug.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized  -g -I"E:\Git-category\GIT-WCH\WCH_CH32F103\CH32V103\CH32V103EVT\EVT\EXAM\SRC\Debug" -I"E:\Git-category\GIT-WCH\WCH_CH32F103\CH32V103\CH32V103EVT\EVT\EXAM\SRC\Core" -I"E:\Git-category\GIT-WCH\WCH_CH32F103\CH32V103\CH32V103EVT\EVT\EXAM\GPIO\GPIO_Toggle\User" -I"E:\Git-category\GIT-WCH\WCH_CH32F103\CH32V103\CH32V103EVT\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

