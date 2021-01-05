################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Core/Startup/startup_stm32f401retx.s 

OBJS += \
./Core/Startup/startup_stm32f401retx.o 


# Each subdirectory must supply rules for building sources it contributes
Core/Startup/%.o: ../Core/Startup/%.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -I../usr/src/mbed-sdk -I../cmsis -I../cmsis/TARGET_CORTEX_M -I../drivers -I../hal -I../hal/storage_abstraction -I../platform -I../targets/TARGET_STM -I../targets/TARGET_STM/TARGET_STM32F4 -I../targets/TARGET_STM/TARGET_STM32F4/TARGET_STM32F401xE -I../targets/TARGET_STM/TARGET_STM32F4/TARGET_STM32F401xE/TARGET_NUCLEO_F401RE -I../targets/TARGET_STM/TARGET_STM32F4/TARGET_STM32F401xE/device -I../targets/TARGET_STM/TARGET_STM32F4/device -I"C:/STM32/STM32CubeIDE/workspace_1.3.0/F401mbedBase/mbed-dev" -x assembler-with-cpp --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

