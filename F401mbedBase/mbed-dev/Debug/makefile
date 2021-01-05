################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include targets/TARGET_STM/TARGET_STM32F4/device/subdir.mk
-include targets/TARGET_STM/TARGET_STM32F4/TARGET_STM32F401xE/device/TOOLCHAIN_GCC_ARM/subdir.mk
-include targets/TARGET_STM/TARGET_STM32F4/TARGET_STM32F401xE/TARGET_NUCLEO_F401RE/subdir.mk
-include targets/TARGET_STM/TARGET_STM32F4/subdir.mk
-include targets/TARGET_STM/subdir.mk
-include platform/subdir.mk
-include hal/subdir.mk
-include drivers/subdir.mk
-include cmsis/TARGET_CORTEX_M/subdir.mk
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
mbed-dev-debug.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
mbed-dev-debug.list \


# All Target
all:
	+@make --no-print-directory pre-build && make --no-print-directory main-build && make --no-print-directory post-build

# Main-build Target
main-build: mbed-dev-debug.elf secondary-outputs

# Tool invocations
mbed-dev-debug.elf: $(OBJS) $(USER_OBJS) C:/ST/STM32CubeIDE/workspace_1.1.0/mbed-dev/Debug/linker-script-debug.ld
	arm-none-eabi-g++ -o "mbed-dev-debug.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"C:/ST/STM32CubeIDE/workspace_1.1.0/mbed-dev/Debug/linker-script-debug.ld" --specs=nosys.specs -Wl,-Map="mbed-dev.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -Wl,--start-group -lc -lm -lstdc++ -lsupc++ -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

mbed-dev-debug.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "mbed-dev-debug.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

pre-build:
	echo "export PREPROC_CMD = /arm-none-eabi-cpp -E -P" > C:/ST/STM32CubeIDE/workspace_1.1.0/mbed-dev/makefile.defs
	-@echo ' '

post-build:
	arm-none-eabi-objcopy -O binary "mbed-dev-debug.elf" "mbed-dev.bin"
	arm-none-eabi-size -B "mbed-dev-debug.elf"
	make ldclean
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

.PHONY: all clean dependents
.SECONDARY: main-build pre-build post-build

-include ../makefile.targets
