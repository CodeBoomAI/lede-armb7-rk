include $(TOPDIR)/rules.mk

PKG_NAME:=ssv6x5x-firmware
PKG_RELEASE:=1

define Package/ssv6x5x-firmware
  SECTION:=firmware
  CATEGORY:=Firmware
  TITLE:=Firmware for SSV6158 WiFi chip
  DEPENDS:=@PCI_SUPPORT||USB_SUPPORT
endef

define Package/ssv6x5x-firmware/install
    $(INSTALL_DIR) $(1)/lib/firmware/ssv6xxx
    $(INSTALL_DATA) ./ssv6158.bin $(1)/lib/firmware/ssv6xxx/
endef

$(eval $(call BuildPackage,ssv6x5x-firmware))
