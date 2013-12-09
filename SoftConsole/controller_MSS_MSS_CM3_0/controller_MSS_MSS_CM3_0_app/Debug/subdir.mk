################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../controller.c \
../imu.c \
../main.c 

OBJS += \
./controller.o \
./imu.o \
./main.o 

C_DEPS += \
./controller.d \
./imu.d \
./main.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU C Compiler'
	arm-none-eabi-gcc -mthumb -mcpu=cortex-m3 -IC:\Users\ronakrm\Documents\Downloaded\IntegratedSegway-master\SoftConsole\controller_MSS_MSS_CM3_0\controller_MSS_MSS_CM3_0_hw_platform -IC:\Users\ronakrm\Documents\Downloaded\IntegratedSegway-master\SoftConsole\controller_MSS_MSS_CM3_0\controller_MSS_MSS_CM3_0_hw_platform\CMSIS -IC:\Users\ronakrm\Documents\Downloaded\IntegratedSegway-master\SoftConsole\controller_MSS_MSS_CM3_0\controller_MSS_MSS_CM3_0_hw_platform\CMSIS\startup_gcc -IC:\Users\ronakrm\Documents\Downloaded\IntegratedSegway-master\SoftConsole\controller_MSS_MSS_CM3_0\controller_MSS_MSS_CM3_0_hw_platform\drivers -IC:\Users\ronakrm\Documents\Downloaded\IntegratedSegway-master\SoftConsole\controller_MSS_MSS_CM3_0\controller_MSS_MSS_CM3_0_hw_platform\drivers\mss_gpio -IC:\Users\ronakrm\Documents\Downloaded\IntegratedSegway-master\SoftConsole\controller_MSS_MSS_CM3_0\controller_MSS_MSS_CM3_0_hw_platform\drivers\mss_nvm -IC:\Users\ronakrm\Documents\Downloaded\IntegratedSegway-master\SoftConsole\controller_MSS_MSS_CM3_0\controller_MSS_MSS_CM3_0_hw_platform\drivers\mss_pdma -IC:\Users\ronakrm\Documents\Downloaded\IntegratedSegway-master\SoftConsole\controller_MSS_MSS_CM3_0\controller_MSS_MSS_CM3_0_hw_platform\drivers\mss_rtc -IC:\Users\ronakrm\Documents\Downloaded\IntegratedSegway-master\SoftConsole\controller_MSS_MSS_CM3_0\controller_MSS_MSS_CM3_0_hw_platform\drivers\mss_timer -IC:\Users\ronakrm\Documents\Downloaded\IntegratedSegway-master\SoftConsole\controller_MSS_MSS_CM3_0\controller_MSS_MSS_CM3_0_hw_platform\hal -IC:\Users\ronakrm\Documents\Downloaded\IntegratedSegway-master\SoftConsole\controller_MSS_MSS_CM3_0\controller_MSS_MSS_CM3_0_hw_platform\hal\CortexM3 -IC:\Users\ronakrm\Documents\Downloaded\IntegratedSegway-master\SoftConsole\controller_MSS_MSS_CM3_0\controller_MSS_MSS_CM3_0_hw_platform\hal\CortexM3\GNU -O0 -ffunction-sections -fdata-sections -g3 -Wall -c -fmessage-length=0 -v -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

