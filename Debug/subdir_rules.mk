################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
PLL.obj: ../PLL.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"E:/ti/ccsv5/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 --memory_model=huge -g --include_path="E:/ti/ccsv5/tools/compiler/c5500_4.4.1/include" --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=32 --fp_reassoc=off --asm_source=mnemonic --preproc_with_compile --preproc_dependency="PLL.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

aic3204.obj: ../aic3204.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"E:/ti/ccsv5/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 --memory_model=huge -g --include_path="E:/ti/ccsv5/tools/compiler/c5500_4.4.1/include" --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=32 --fp_reassoc=off --asm_source=mnemonic --preproc_with_compile --preproc_dependency="aic3204.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

aic3204_init.obj: ../aic3204_init.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"E:/ti/ccsv5/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 --memory_model=huge -g --include_path="E:/ti/ccsv5/tools/compiler/c5500_4.4.1/include" --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=32 --fp_reassoc=off --asm_source=mnemonic --preproc_with_compile --preproc_dependency="aic3204_init.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

main.obj: ../main.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"E:/ti/ccsv5/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 --memory_model=huge -g --include_path="E:/ti/ccsv5/tools/compiler/c5500_4.4.1/include" --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=32 --fp_reassoc=off --asm_source=mnemonic --preproc_with_compile --preproc_dependency="main.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

stereo.obj: ../stereo.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"E:/ti/ccsv5/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 --memory_model=huge -g --include_path="E:/ti/ccsv5/tools/compiler/c5500_4.4.1/include" --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=32 --fp_reassoc=off --asm_source=mnemonic --preproc_with_compile --preproc_dependency="stereo.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

usbstk5505.obj: ../usbstk5505.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"E:/ti/ccsv5/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 --memory_model=huge -g --include_path="E:/ti/ccsv5/tools/compiler/c5500_4.4.1/include" --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=32 --fp_reassoc=off --asm_source=mnemonic --preproc_with_compile --preproc_dependency="usbstk5505.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

usbstk5505_gpio.obj: ../usbstk5505_gpio.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"E:/ti/ccsv5/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 --memory_model=huge -g --include_path="E:/ti/ccsv5/tools/compiler/c5500_4.4.1/include" --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=32 --fp_reassoc=off --asm_source=mnemonic --preproc_with_compile --preproc_dependency="usbstk5505_gpio.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

usbstk5505_i2c.obj: ../usbstk5505_i2c.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"E:/ti/ccsv5/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 --memory_model=huge -g --include_path="E:/ti/ccsv5/tools/compiler/c5500_4.4.1/include" --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=32 --fp_reassoc=off --asm_source=mnemonic --preproc_with_compile --preproc_dependency="usbstk5505_i2c.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

usbstk5505_led.obj: ../usbstk5505_led.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"E:/ti/ccsv5/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 --memory_model=huge -g --include_path="E:/ti/ccsv5/tools/compiler/c5500_4.4.1/include" --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=32 --fp_reassoc=off --asm_source=mnemonic --preproc_with_compile --preproc_dependency="usbstk5505_led.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


