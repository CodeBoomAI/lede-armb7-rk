include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/target.mk

# Board Identifier
BOARD:=rockchip
BOARDNAME:=Rockchip

# Supported Architectures
FEATURES:=ext4 usb usbgadget display gpio nand rtc squashfs

# Kernel Configuration
KERNEL_PATCHVER:=6.1
KERNEL_TESTING_PATCHVER:=6.6

# Supported Subtargets (ARMv7 and ARM64)
SUBTARGETS:=armv7 arm64

# Default Packages
DEFAULT_PACKAGES += \
	uboot-envtools \
	kmod-gpio-button-hotplug \
	kmod-leds-gpio \
	# ... (paket lainnya)

# Target Description
define Target/Description
	Build firmware images for Rockchip based devices.
	Supports:
	- ARMv7 devices (RK3xxx series)
	- ARM64 devices (RK33xx and RK35xx series)
endef

# Build Targets
ifeq ($(SUBTARGET),armv7)
  CPU_TYPE:=cortex-a7
  CPU_CFLAGS:=-march=armv7ve -mfloat-abi=hard -mfpu=neon-vfpv4
endif

ifeq ($(SUBTARGET),arm64)
  CPU_TYPE:=cortex-a53
  CPU_CFLAGS:=-mcpu=cortex-a53
endif

# Kernel Image Name
KERNELNAME:=Image dtbs

$(eval $(call BuildTarget))
