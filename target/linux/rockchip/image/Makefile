include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/image.mk

ifeq ($(SUBTARGET),armv7)
  include armv7.mk
endif
ifeq ($(SUBTARGET),armv8)
  include armv8.mk
endif

define Device/Default
  PROFILES := Default
  KERNEL_NAME := zImage
  KERNEL := kernel-bin | uImage none
  IMAGES := sysupgrade.img.gz
endef

$(eval $(call BuildImage))
