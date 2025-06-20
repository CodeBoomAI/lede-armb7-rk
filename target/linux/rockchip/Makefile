# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

BOARD:=rockchip
BOARDNAME:=Rockchip
FEATURES:=ext4 audio usb usbgadget display gpio fpu pci pcie rootfs-part boot-part squashfs
SUBTARGETS:=armv8 armv7

KERNEL_PATCHVER:=6.12
KERNEL_TESTING_PATCHVER:=6.6

define Target/Description
	Build firmware image for Rockchip SoC devices.
endef

# Subtarget khusus ARMv7 (umum)
define Target/armv7
  NAME:=Generic ARMv7 (Cortex-A7)
  BOARDNAME:=Generic ARMv7
  CPU_TYPE:=cortex-a7
  CPU_SUBTYPE:=vfpv4
  FEATURES:=fpu
  KERNEL_PATCHVER:=5.10
endef

include $(INCLUDE_DIR)/target.mk

DEFAULT_PACKAGES += uboot-envtools partx-utils e2fsprogs mkf2fs kmod-button-hotplug \
		    automount autocore-arm e2fsprogs ethtool haveged htop usb-modeswitch

KERNELNAME:=Image dtbs

$(eval $(call BuildTarget))
