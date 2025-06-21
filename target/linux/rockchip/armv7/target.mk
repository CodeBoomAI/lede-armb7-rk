ARCH:=arm
SUBTARGET:=armv7
BOARDNAME:=Rockchip RK3229 boards

CPU_TYPE:=cortex-a7
CPU_SUBTYPE:=vfpv4

define Target/Description
    Build firmware images for Rockchip RK3229 (ARMv7) devices.
    This firmware features a 32-bit ARM kernel.
endef
