##
## Auto Generated makefile by CDK
## Do not modify this file, and any manual changes will be erased!!!   
##
## BuildSet
ProjectName            :=apt32f102
ConfigurationName      :=BuildSet
WorkspacePath          :=E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/atomck8xx/
ProjectPath            :=E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/
IntermediateDirectory  :=Obj
OutDir                 :=$(IntermediateDirectory)
User                   :=wangchyu
Date                   :=21/07/2021
CDKPath                :=D:/C-Sky/CDK/
LinkerName             :=csky-elfabiv2-gcc
LinkerNameoption       :=
SIZE                   :=csky-elfabiv2-size
READELF                :=csky-elfabiv2-readelf
CHECKSUM               :=crc32
SharedObjectLinkerName :=
ObjectSuffix           :=.o
DependSuffix           :=.d
PreprocessSuffix       :=.i
DisassemSuffix         :=.asm
IHexSuffix             :=.ihex
BinSuffix              :=.bin
ExeSuffix              :=.elf
LibSuffix              :=.a
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
ElfInfoSwitch          :=-hlS
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
UnPreprocessorSwitch   :=-U
SourceSwitch           :=-c 
ObjdumpSwitch          :=-S
ObjcopySwitch          :=-O ihex
ObjcopyBinSwitch       :=-O binary
OutputFile             :=makitaApt
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="apt32f102.txt"
MakeDirCommand         :=mkdir
LinkOptions            := -mcpu=ck801  -nostartfiles -Wl,--gc-sections -T"$(ProjectPath)/ckcpu.ld"
LinkOtherFlagsOption   :=
IncludePackagePath     :=
IncludeCPath           :=$(IncludeSwitch)"$(CDKPath)CSKY/csi/csi_core/csi_cdk/" $(IncludeSwitch)"$(CDKPath)CSKY/csi/csi_core/include/" $(IncludeSwitch)"$(CDKPath)CSKY/csi/csi_driver/include/" $(IncludeSwitch)"$(ProjectPath)" $(IncludeSwitch)"$(ProjectPath)atom/kernel" $(IncludeSwitch)"$(ProjectPath)atom/ports/ck801" $(IncludeSwitch)"$(ProjectPath)atom/tests" $(IncludeSwitch)"$(ProjectPath)include" $(IncludeSwitch)"$(ProjectPath)user"  
IncludeAPath           :=$(IncludeSwitch)"$(CDKPath)CSKY/csi/csi_core/csi_cdk/" -Wa,$(IncludeSwitch)"$(CDKPath)CSKY/csi/csi_core/csi_cdk/" $(IncludeSwitch)"$(CDKPath)CSKY/csi/csi_core/include/" -Wa,$(IncludeSwitch)"$(CDKPath)CSKY/csi/csi_core/include/" $(IncludeSwitch)"$(CDKPath)CSKY/csi/csi_driver/include/" -Wa,$(IncludeSwitch)"$(CDKPath)CSKY/csi/csi_driver/include/" $(IncludeSwitch)"$(ProjectPath)" -Wa,$(IncludeSwitch)"$(ProjectPath)" $(IncludeSwitch)"$(ProjectPath)atom/kernel" -Wa,$(IncludeSwitch)"$(ProjectPath)atom/kernel" $(IncludeSwitch)"$(ProjectPath)atom/ports/ck801" -Wa,$(IncludeSwitch)"$(ProjectPath)atom/ports/ck801" $(IncludeSwitch)"$(ProjectPath)atom/tests" -Wa,$(IncludeSwitch)"$(ProjectPath)atom/tests"  
Libs                   := -Wl,--whole-archive  -Wl,--no-whole-archive  
ArLibs                 := 
PackagesLibPath        :=
LibPath                := $(PackagesLibPath) 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       :=csky-elfabiv2-ar rcu
CXX      :=csky-elfabiv2-g++
CC       :=csky-elfabiv2-gcc
AS       :=csky-elfabiv2-gcc
OBJDUMP  :=csky-elfabiv2-objdump
OBJCOPY  :=csky-elfabiv2-objcopy
CXXFLAGS := -mcpu=ck801   $(PreprocessorSwitch)CONFIG_CSKY_MMU=0   $(UnPreprocessorSwitch)__CSKY_ABIV2__  -Os  -g  -Wall  -ffunction-sections -mistack 
CFLAGS   := -mcpu=ck801   $(PreprocessorSwitch)CONFIG_CSKY_MMU=0   $(UnPreprocessorSwitch)__CSKY_ABIV2__  -Os  -g  -Wall  -ffunction-sections -mistack 
ASFLAGS  := -mcpu=ck801   $(PreprocessorSwitch)CONFIG_CKCPU_MMU=0   $(UnPreprocessorSwitch)__CSKY_ABIV2__  -Wa,--gdwarf2    


Objects0=$(IntermediateDirectory)/arch_crt0$(ObjectSuffix) $(IntermediateDirectory)/arch_mem_init$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_syscon$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_coret$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_gpio$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_lpt$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_crc$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_wwdt$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_countera$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_et$(ObjectSuffix) \
	$(IntermediateDirectory)/FWlib_apt32f102_bt$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_gpt$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_sio$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_spi$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_uart$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_i2c$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_ept$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_rtc$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_adc$(ObjectSuffix) $(IntermediateDirectory)/FWlib_apt32f102_ifc$(ObjectSuffix) \
	$(IntermediateDirectory)/apt32f102_initial$(ObjectSuffix) $(IntermediateDirectory)/apt32f102_interrupt$(ObjectSuffix) $(IntermediateDirectory)/main$(ObjectSuffix) $(IntermediateDirectory)/drivers_apt32f102$(ObjectSuffix) $(IntermediateDirectory)/drivers_apt32f102_ck801$(ObjectSuffix) $(IntermediateDirectory)/user_usart$(ObjectSuffix) $(IntermediateDirectory)/kernel_atomkernel$(ObjectSuffix) $(IntermediateDirectory)/kernel_atommutex$(ObjectSuffix) $(IntermediateDirectory)/kernel_atomqueue$(ObjectSuffix) $(IntermediateDirectory)/kernel_atomsem$(ObjectSuffix) \
	$(IntermediateDirectory)/kernel_atomtimer$(ObjectSuffix) $(IntermediateDirectory)/ck801_atomport-asm$(ObjectSuffix) $(IntermediateDirectory)/ck801_atomport$(ObjectSuffix) $(IntermediateDirectory)/ck801_atomport-private$(ObjectSuffix) $(IntermediateDirectory)/__rt_entry$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean MakeIntermediateDirs
all: $(IntermediateDirectory)/$(OutputFile)

$(IntermediateDirectory)/$(OutputFile):  $(IntermediateDirectory)/.d $(Objects) 
	@echo "" > $(IntermediateDirectory)/.d
	@touch  $(ObjectsFileList)
	@echo $(Objects0)  > $(ObjectsFileList)
	@echo linking...
	@$(LinkerName) $(OutputSwitch)"$(IntermediateDirectory)/$(OutputFile)$(ExeSuffix)" $(LinkerNameoption) $(LinkOtherFlagsOption)  -Wl,--ckmap="$(ProjectPath)/Lst/$(OutputFile).map"  @$(ObjectsFileList)  $(LinkOptions) $(LibPath) $(Libs)
	@mv "$(ProjectPath)/Lst/$(OutputFile).map" "$(ProjectPath)/Lst/$(OutputFile).temp" && $(READELF) $(ElfInfoSwitch) "$(ProjectPath)/Obj/$(OutputFile)$(ExeSuffix)" > "$(ProjectPath)/Lst/$(OutputFile).map" && echo ====================================================================== >> "$(ProjectPath)/Lst/$(OutputFile).map" && cat "$(ProjectPath)/Lst/$(OutputFile).temp" >> "$(ProjectPath)/Lst/$(OutputFile).map" && rm -rf "$(ProjectPath)/Lst/$(OutputFile).temp"
	@echo generating hex file...
	@$(OBJCOPY) $(ObjcopySwitch) "$(ProjectPath)/$(IntermediateDirectory)/$(OutputFile)$(ExeSuffix)"  "$(ProjectPath)/Obj/$(OutputFile)$(IHexSuffix)" 
	@echo generating bin file...
	@	@echo generating asm file...
	@$(OBJDUMP) $(ObjdumpSwitch) "$(ProjectPath)/$(IntermediateDirectory)/$(OutputFile)$(ExeSuffix)"  > "$(ProjectPath)/Lst/$(OutputFile)$(DisassemSuffix)" 
	@echo size of target:
	@$(SIZE) "$(ProjectPath)$(IntermediateDirectory)/$(OutputFile)$(ExeSuffix)" 
	@echo -n "checksum value of target:  "
	@$(CHECKSUM) "$(ProjectPath)/$(IntermediateDirectory)/$(OutputFile)$(ExeSuffix)" 
	
MakeIntermediateDirs:
	@test -d Obj || $(MakeDirCommand) Obj
	@test -d Lst || $(MakeDirCommand) Lst

$(IntermediateDirectory)/.d:
	@test -d Obj || $(MakeDirCommand) Obj
	@test -d Lst || $(MakeDirCommand) Lst



##
## Objects
##
$(IntermediateDirectory)/arch_crt0$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/arch/crt0.S  
	@echo assembling crt0.S...
	@$(AS) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/arch/crt0.S" $(ASFLAGS) -MMD -MP -MT$(IntermediateDirectory)/arch_crt0$(ObjectSuffix) -MF$(IntermediateDirectory)/arch_crt0$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/arch_crt0$(ObjectSuffix) $(IncludeAPath) $(IncludePackagePath)
Lst/arch_crt0$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/arch/crt0.S
	@echo generating preprocess file of crt0.S...
	@$(CC) $(CFLAGS)$(IncludeAPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/arch_crt0$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/arch/crt0.S"

$(IntermediateDirectory)/arch_mem_init$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/arch/mem_init.c  
	@echo compiling mem_init.c...
	@$(CC) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/arch/mem_init.c" $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/arch_mem_init$(ObjectSuffix) -MF$(IntermediateDirectory)/arch_mem_init$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/arch_mem_init$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/arch_mem_init$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/arch/mem_init.c
	@echo generating preprocess file of mem_init.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/arch_mem_init$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/arch/mem_init.c"

$(IntermediateDirectory)/FWlib_apt32f102_syscon$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_syscon.c  
	@echo compiling apt32f102_syscon.c...
	@$(CC) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_syscon.c" $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_syscon$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_syscon$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_syscon$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_syscon$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_syscon.c
	@echo generating preprocess file of apt32f102_syscon.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_syscon$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_syscon.c"

$(IntermediateDirectory)/FWlib_apt32f102_coret$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_coret.c  
	@echo compiling apt32f102_coret.c...
	@$(CC) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_coret.c" $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_coret$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_coret$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_coret$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_coret$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_coret.c
	@echo generating preprocess file of apt32f102_coret.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_coret$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_coret.c"

$(IntermediateDirectory)/FWlib_apt32f102_gpio$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_gpio.c  
	@echo compiling apt32f102_gpio.c...
	@$(CC) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_gpio.c" $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_gpio$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_gpio$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_gpio$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_gpio$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_gpio.c
	@echo generating preprocess file of apt32f102_gpio.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_gpio$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_gpio.c"

$(IntermediateDirectory)/FWlib_apt32f102_lpt$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_lpt.c  
	@echo compiling apt32f102_lpt.c...
	@$(CC) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_lpt.c" $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_lpt$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_lpt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_lpt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_lpt$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_lpt.c
	@echo generating preprocess file of apt32f102_lpt.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_lpt$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_lpt.c"

$(IntermediateDirectory)/FWlib_apt32f102_crc$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_crc.c  
	@echo compiling apt32f102_crc.c...
	@$(CC) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_crc.c" $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_crc$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_crc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_crc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_crc$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_crc.c
	@echo generating preprocess file of apt32f102_crc.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_crc$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_crc.c"

$(IntermediateDirectory)/FWlib_apt32f102_wwdt$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_wwdt.c  
	@echo compiling apt32f102_wwdt.c...
	@$(CC) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_wwdt.c" $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_wwdt$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_wwdt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_wwdt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_wwdt$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_wwdt.c
	@echo generating preprocess file of apt32f102_wwdt.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_wwdt$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_wwdt.c"

$(IntermediateDirectory)/FWlib_apt32f102_countera$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_countera.c  
	@echo compiling apt32f102_countera.c...
	@$(CC) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_countera.c" $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_countera$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_countera$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_countera$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_countera$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_countera.c
	@echo generating preprocess file of apt32f102_countera.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_countera$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_countera.c"

$(IntermediateDirectory)/FWlib_apt32f102_et$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_et.c  
	@echo compiling apt32f102_et.c...
	@$(CC) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_et.c" $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_et$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_et$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_et$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_et$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_et.c
	@echo generating preprocess file of apt32f102_et.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_et$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_et.c"

$(IntermediateDirectory)/FWlib_apt32f102_bt$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_bt.c  
	@echo compiling apt32f102_bt.c...
	@$(CC) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_bt.c" $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_bt$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_bt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_bt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_bt$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_bt.c
	@echo generating preprocess file of apt32f102_bt.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_bt$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_bt.c"

$(IntermediateDirectory)/FWlib_apt32f102_gpt$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_gpt.c  
	@echo compiling apt32f102_gpt.c...
	@$(CC) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_gpt.c" $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_gpt$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_gpt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_gpt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_gpt$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_gpt.c
	@echo generating preprocess file of apt32f102_gpt.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_gpt$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_gpt.c"

$(IntermediateDirectory)/FWlib_apt32f102_sio$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_sio.c  
	@echo compiling apt32f102_sio.c...
	@$(CC) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_sio.c" $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_sio$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_sio$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_sio$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_sio$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_sio.c
	@echo generating preprocess file of apt32f102_sio.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_sio$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_sio.c"

$(IntermediateDirectory)/FWlib_apt32f102_spi$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_spi.c  
	@echo compiling apt32f102_spi.c...
	@$(CC) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_spi.c" $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_spi$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_spi$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_spi$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_spi$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_spi.c
	@echo generating preprocess file of apt32f102_spi.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_spi$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_spi.c"

$(IntermediateDirectory)/FWlib_apt32f102_uart$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_uart.c  
	@echo compiling apt32f102_uart.c...
	@$(CC) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_uart.c" $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_uart$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_uart$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_uart$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_uart$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_uart.c
	@echo generating preprocess file of apt32f102_uart.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_uart$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_uart.c"

$(IntermediateDirectory)/FWlib_apt32f102_i2c$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_i2c.c  
	@echo compiling apt32f102_i2c.c...
	@$(CC) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_i2c.c" $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_i2c$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_i2c$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_i2c$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_i2c$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_i2c.c
	@echo generating preprocess file of apt32f102_i2c.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_i2c$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_i2c.c"

$(IntermediateDirectory)/FWlib_apt32f102_ept$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_ept.c  
	@echo compiling apt32f102_ept.c...
	@$(CC) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_ept.c" $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_ept$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_ept$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_ept$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_ept$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_ept.c
	@echo generating preprocess file of apt32f102_ept.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_ept$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_ept.c"

$(IntermediateDirectory)/FWlib_apt32f102_rtc$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_rtc.c  
	@echo compiling apt32f102_rtc.c...
	@$(CC) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_rtc.c" $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_rtc$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_rtc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_rtc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_rtc$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_rtc.c
	@echo generating preprocess file of apt32f102_rtc.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_rtc$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_rtc.c"

$(IntermediateDirectory)/FWlib_apt32f102_adc$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_adc.c  
	@echo compiling apt32f102_adc.c...
	@$(CC) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_adc.c" $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_adc$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_adc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_adc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_adc$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_adc.c
	@echo generating preprocess file of apt32f102_adc.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_adc$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_adc.c"

$(IntermediateDirectory)/FWlib_apt32f102_ifc$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_ifc.c  
	@echo compiling apt32f102_ifc.c...
	@$(CC) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_ifc.c" $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/FWlib_apt32f102_ifc$(ObjectSuffix) -MF$(IntermediateDirectory)/FWlib_apt32f102_ifc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/FWlib_apt32f102_ifc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/FWlib_apt32f102_ifc$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_ifc.c
	@echo generating preprocess file of apt32f102_ifc.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/FWlib_apt32f102_ifc$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/FWlib/apt32f102_ifc.c"

$(IntermediateDirectory)/apt32f102_initial$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/apt32f102_initial.c  
	@echo compiling apt32f102_initial.c...
	@$(CC) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/apt32f102_initial.c" $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/apt32f102_initial$(ObjectSuffix) -MF$(IntermediateDirectory)/apt32f102_initial$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/apt32f102_initial$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/apt32f102_initial$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/apt32f102_initial.c
	@echo generating preprocess file of apt32f102_initial.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/apt32f102_initial$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/apt32f102_initial.c"

$(IntermediateDirectory)/apt32f102_interrupt$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/apt32f102_interrupt.c  
	@echo compiling apt32f102_interrupt.c...
	@$(CC) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/apt32f102_interrupt.c" $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/apt32f102_interrupt$(ObjectSuffix) -MF$(IntermediateDirectory)/apt32f102_interrupt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/apt32f102_interrupt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/apt32f102_interrupt$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/apt32f102_interrupt.c
	@echo generating preprocess file of apt32f102_interrupt.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/apt32f102_interrupt$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/apt32f102_interrupt.c"

$(IntermediateDirectory)/main$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/main.c  
	@echo compiling main.c...
	@$(CC) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/main.c" $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/main$(ObjectSuffix) -MF$(IntermediateDirectory)/main$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/main$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/main$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/main.c
	@echo generating preprocess file of main.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/main$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/main.c"

$(IntermediateDirectory)/drivers_apt32f102$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/drivers/apt32f102.c  
	@echo compiling apt32f102.c...
	@$(CC) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/drivers/apt32f102.c" $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/drivers_apt32f102$(ObjectSuffix) -MF$(IntermediateDirectory)/drivers_apt32f102$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/drivers_apt32f102$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/drivers_apt32f102$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/drivers/apt32f102.c
	@echo generating preprocess file of apt32f102.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/drivers_apt32f102$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/drivers/apt32f102.c"

$(IntermediateDirectory)/drivers_apt32f102_ck801$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/drivers/apt32f102_ck801.c  
	@echo compiling apt32f102_ck801.c...
	@$(CC) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/drivers/apt32f102_ck801.c" $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/drivers_apt32f102_ck801$(ObjectSuffix) -MF$(IntermediateDirectory)/drivers_apt32f102_ck801$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/drivers_apt32f102_ck801$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/drivers_apt32f102_ck801$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/drivers/apt32f102_ck801.c
	@echo generating preprocess file of apt32f102_ck801.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/drivers_apt32f102_ck801$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/drivers/apt32f102_ck801.c"

$(IntermediateDirectory)/user_usart$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/user/usart.c  
	@echo compiling usart.c...
	@$(CC) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/user/usart.c" $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/user_usart$(ObjectSuffix) -MF$(IntermediateDirectory)/user_usart$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/user_usart$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/user_usart$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/user/usart.c
	@echo generating preprocess file of usart.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/user_usart$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/user/usart.c"

$(IntermediateDirectory)/kernel_atomkernel$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/atom/kernel/atomkernel.c  
	@echo compiling atomkernel.c...
	@$(CC) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/atom/kernel/atomkernel.c" $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/kernel_atomkernel$(ObjectSuffix) -MF$(IntermediateDirectory)/kernel_atomkernel$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/kernel_atomkernel$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/kernel_atomkernel$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/atom/kernel/atomkernel.c
	@echo generating preprocess file of atomkernel.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/kernel_atomkernel$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/atom/kernel/atomkernel.c"

$(IntermediateDirectory)/kernel_atommutex$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/atom/kernel/atommutex.c  
	@echo compiling atommutex.c...
	@$(CC) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/atom/kernel/atommutex.c" $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/kernel_atommutex$(ObjectSuffix) -MF$(IntermediateDirectory)/kernel_atommutex$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/kernel_atommutex$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/kernel_atommutex$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/atom/kernel/atommutex.c
	@echo generating preprocess file of atommutex.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/kernel_atommutex$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/atom/kernel/atommutex.c"

$(IntermediateDirectory)/kernel_atomqueue$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/atom/kernel/atomqueue.c  
	@echo compiling atomqueue.c...
	@$(CC) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/atom/kernel/atomqueue.c" $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/kernel_atomqueue$(ObjectSuffix) -MF$(IntermediateDirectory)/kernel_atomqueue$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/kernel_atomqueue$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/kernel_atomqueue$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/atom/kernel/atomqueue.c
	@echo generating preprocess file of atomqueue.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/kernel_atomqueue$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/atom/kernel/atomqueue.c"

$(IntermediateDirectory)/kernel_atomsem$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/atom/kernel/atomsem.c  
	@echo compiling atomsem.c...
	@$(CC) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/atom/kernel/atomsem.c" $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/kernel_atomsem$(ObjectSuffix) -MF$(IntermediateDirectory)/kernel_atomsem$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/kernel_atomsem$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/kernel_atomsem$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/atom/kernel/atomsem.c
	@echo generating preprocess file of atomsem.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/kernel_atomsem$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/atom/kernel/atomsem.c"

$(IntermediateDirectory)/kernel_atomtimer$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/atom/kernel/atomtimer.c  
	@echo compiling atomtimer.c...
	@$(CC) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/atom/kernel/atomtimer.c" $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/kernel_atomtimer$(ObjectSuffix) -MF$(IntermediateDirectory)/kernel_atomtimer$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/kernel_atomtimer$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/kernel_atomtimer$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/atom/kernel/atomtimer.c
	@echo generating preprocess file of atomtimer.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/kernel_atomtimer$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/atom/kernel/atomtimer.c"

$(IntermediateDirectory)/ck801_atomport-asm$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/atom/ports/ck801/atomport-asm.s  
	@echo assembling atomport-asm.s...
	@$(AS) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/atom/ports/ck801/atomport-asm.s" $(ASFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ck801_atomport-asm$(ObjectSuffix) -MF$(IntermediateDirectory)/ck801_atomport-asm$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ck801_atomport-asm$(ObjectSuffix) $(IncludeAPath) $(IncludePackagePath)
Lst/ck801_atomport-asm$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/atom/ports/ck801/atomport-asm.s
	@echo generating preprocess file of atomport-asm.s...
	@$(CC) $(CFLAGS)$(IncludeAPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ck801_atomport-asm$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/atom/ports/ck801/atomport-asm.s"

$(IntermediateDirectory)/ck801_atomport$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/atom/ports/ck801/atomport.c  
	@echo compiling atomport.c...
	@$(CC) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/atom/ports/ck801/atomport.c" $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ck801_atomport$(ObjectSuffix) -MF$(IntermediateDirectory)/ck801_atomport$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ck801_atomport$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ck801_atomport$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/atom/ports/ck801/atomport.c
	@echo generating preprocess file of atomport.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ck801_atomport$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/atom/ports/ck801/atomport.c"

$(IntermediateDirectory)/ck801_atomport-private$(ObjectSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/atom/ports/ck801/atomport-private.c  
	@echo compiling atomport-private.c...
	@$(CC) $(SourceSwitch) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/atom/ports/ck801/atomport-private.c" $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ck801_atomport-private$(ObjectSuffix) -MF$(IntermediateDirectory)/ck801_atomport-private$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ck801_atomport-private$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ck801_atomport-private$(PreprocessSuffix): E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/atom/ports/ck801/atomport-private.c
	@echo generating preprocess file of atomport-private.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ck801_atomport-private$(PreprocessSuffix) "E:/rtos_atomthreads/ck8xx_atomthreads/atomthreadsCK8xx/Source/atom/ports/ck801/atomport-private.c"


$(IntermediateDirectory)/__rt_entry$(ObjectSuffix): $(IntermediateDirectory)/__rt_entry$(DependSuffix)
	@$(AS) $(SourceSwitch) "$(ProjectPath)/$(IntermediateDirectory)/__rt_entry.S" $(ASFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/__rt_entry$(ObjectSuffix) $(IncludeAPath)
$(IntermediateDirectory)/__rt_entry$(DependSuffix):
	@$(CC) $(CFLAGS) $(IncludeAPath) -MG -MP -MT$(IntermediateDirectory)/__rt_entry$(ObjectSuffix) -MF$(IntermediateDirectory)/__rt_entry$(DependSuffix) -MM "$(ProjectPath)/$(IntermediateDirectory)/__rt_entry.S"

-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	@echo Cleaning target...
	@rm -rf $(IntermediateDirectory)/ $(ObjectsFileList) apt32f102.mk Lst/

clean_internal:
	@rm -rf $(IntermediateDirectory)/*.o $(IntermediateDirectory)/.d $(IntermediateDirectory)/*.d $(IntermediateDirectory)/*.a $(IntermediateDirectory)/*.elf $(IntermediateDirectory)/*.ihex

