################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include mbed-dev/targets/TARGET_STM/TARGET_STM32F4/device/subdir.mk
-include mbed-dev/targets/TARGET_STM/TARGET_STM32F4/TARGET_STM32F401xE/device/subdir.mk
-include mbed-dev/targets/TARGET_STM/TARGET_STM32F4/TARGET_STM32F401xE/TARGET_NUCLEO_F401RE/subdir.mk
-include mbed-dev/targets/TARGET_STM/TARGET_STM32F4/subdir.mk
-include mbed-dev/targets/TARGET_STM/subdir.mk
-include mbed-dev/platform/subdir.mk
-include mbed-dev/hal/subdir.mk
-include mbed-dev/drivers/subdir.mk
-include mbed-dev/cmsis/TARGET_CORTEX_M/subdir.mk
-include mbed-dev/Debug/targets/TARGET_STM/TARGET_STM32F4/device/subdir.mk
-include mbed-dev/Debug/targets/TARGET_STM/TARGET_STM32F4/TARGET_STM32F401xE/device/TOOLCHAIN_GCC_ARM/subdir.mk
-include mbed-dev/Debug/targets/TARGET_STM/TARGET_STM32F4/TARGET_STM32F401xE/TARGET_NUCLEO_F401RE/subdir.mk
-include mbed-dev/Debug/targets/TARGET_STM/TARGET_STM32F4/subdir.mk
-include mbed-dev/Debug/targets/TARGET_STM/subdir.mk
-include mbed-dev/Debug/platform/subdir.mk
-include mbed-dev/Debug/hal/subdir.mk
-include mbed-dev/Debug/drivers/subdir.mk
-include mbed-dev/Debug/cmsis/TARGET_CORTEX_M/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
F401mbedBase.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
F401mbedBase.list \

OBJCOPY_BIN += \
F401mbedBase.bin \


# All Target
all: F401mbedBase.elf secondary-outputs

# Tool invocations
F401mbedBase.elf: $(OBJS) $(USER_OBJS) C:\STM32\STM32CubeIDE\workspace_1.3.0\F401mbedBase\STM32F401RETX_FLASH.ld
	arm-none-eabi-g++ -o "F401mbedBase.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"C:\STM32\STM32CubeIDE\workspace_1.3.0\F401mbedBase\STM32F401RETX_FLASH.ld" --specs=nosys.specs -Wl,-Map="F401mbedBase.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -lstdc++ -lsupc++ -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

F401mbedBase.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "F401mbedBase.list"
	@echo 'Finished building: $@'
	@echo ' '

F401mbedBase.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "F401mbedBase.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
