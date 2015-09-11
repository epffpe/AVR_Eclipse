################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Fuentes/prueba1.c 

S_UPPER_SRCS += \
../Fuentes/extasm.S 

OBJS += \
./Fuentes/extasm.o \
./Fuentes/prueba1.o 

C_DEPS += \
./Fuentes/prueba1.d 

S_UPPER_DEPS += \
./Fuentes/extasm.d 


# Each subdirectory must supply rules for building sources it contributes
Fuentes/%.o: ../Fuentes/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Assembler'
	avr-gcc -x assembler-with-cpp -g2 -gstabs -mmcu=atmega48 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Fuentes/%.o: ../Fuentes/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -mmcu=atmega48 -DF_CPU=4000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


