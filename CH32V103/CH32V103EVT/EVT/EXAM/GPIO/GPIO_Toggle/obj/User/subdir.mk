################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/ch32v10x_it.c \
../User/main.c \
../User/system_ch32v10x.c 

OBJS += \
./User/ch32v10x_it.o \
./User/main.o \
./User/system_ch32v10x.o 

C_DEPS += \
./User/ch32v10x_it.d \
./User/main.d \
./User/system_ch32v10x.d 


# Each subdirectory must supply rules for building sources it contributes
User/%.o: ../User/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized  -g -I"E:\Git-category\GIT-WCH\WCH_CH32F103\CH32V103\CH32V103EVT\EVT\EXAM\SRC\Debug" -I"E:\Git-category\GIT-WCH\WCH_CH32F103\CH32V103\CH32V103EVT\EVT\EXAM\SRC\Core" -I"E:\Git-category\GIT-WCH\WCH_CH32F103\CH32V103\CH32V103EVT\EVT\EXAM\GPIO\GPIO_Toggle\User" -I"E:\Git-category\GIT-WCH\WCH_CH32F103\CH32V103\CH32V103EVT\EVT\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

