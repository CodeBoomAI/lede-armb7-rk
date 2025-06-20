#
# Copyright (C) 2023 OpenWrt.org
#

define Image/BuildKernel
    $(call Image/Build/CpImage,$(KDIR)/Image, kernel)
    $(call Image/Build/CpImage,$(KDIR)/$(DEVICE_DTS).dtb, dtb)
endef

define Image/BuildDeviceTree
    $(call Image/Build/CpDTB,$(DEVICE_DTS))
endef

define Image/Build/squashfs
    $(call Build/append-metadata)
    $(call Image/Build/squashfs-ube)
    $(call Image/Build/join-rootfs)
endef

define Image/Build
    $(call Image/Build/$(1),$(device_name))
endef

$(eval $(call BuildImage))
