@echo off

title MounRiver Console

set CYGWIN=nodosfilewarning

set i=%1

if defined i (
	cd /D %1
	goto End1
) 

:End1

set INSTALLDIR=

rem ==================
rem for Base
rem ==================
set PATH=%INSTALLDIR%\ExTool;%INSTALLDIR%\toolchain\Build Tools\bin;%INSTALLDIR%\toolchain\OpenOCD\openocd-gd\bin;%INSTALLDIR%\toolchain\OpenOCD\openocd-wch\bin;%INSTALLDIR%\toolchain\RISC-V Embedded GCC\bin;%INSTALLDIR%\toolchain\RISC-V Embedded GCC\riscv-none-embed\bin;%INSTALLDIR%\toolchain\arm-none-eabi-gcc\bin;%INSTALLDIR%\toolchain\arm-none-eabi-gcc\arm-none-eabi\bin;%PATH%

cmd.exe
