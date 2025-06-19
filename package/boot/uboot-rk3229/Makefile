include $(TOPDIR)/rules.mk

PKG_NAME:=u-boot
UBOOT_REPO:=https://source.denx.de/u-boot/u-boot.git 
UBOOT_COMMIT:=v2023.02
UBOOT_RELEASE:=1

define Package/u-boot-rk3229
  SECTION:=boot
  CATEGORY:=Boot loaders
  TITLE:=U-Boot for Rockchip RK3229
  URL:=https://www.denx.de/wiki/U-Boot 
endef

define Package/u-boot-rk3229/description
  This package contains U-Boot bootloader for Rockchip RK3229 based boards.
endef

define Build/Prepare
  git clone --depth=1 --branch=master $(UBOOT_REPO) $(PKG_BUILD_DIR)
  cd $(PKG_BUILD_DIR) && git checkout $(UBOOT_COMMIT)
endef

define Build/Configure
  $(call Build/Execute,cd $(PKG_BUILD_DIR) && make rk3229-evb_defconfig CROSS_COMPILE=$(TARGET_CROSS) CC="$(TARGET_CC)")
endef

define Build/Compile
  $(call Build/Execute,cd $(PKG_BUILD_DIR) && make all CROSS_COMPILE=$(TARGET_CROSS) CC="$(TARGET_CC)")
endef

define Package/u-boot-rk3229/install
  $(INSTALL_DIR) $(BIN_DIR)/firmware/
  $(INSTALL_BIN) $(PKG_BUILD_DIR)/u-boot.bin $(BIN_DIR)/firmware/
endef

$(eval $(call BuildPackage,u-boot-rk3229))
