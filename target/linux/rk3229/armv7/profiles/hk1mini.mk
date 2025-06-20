define Profile/hk1mini
  NAME:=HK1 Mini TV Box
  PACKAGES:= \
    kmod-ssv6xxx \
    ssv6x5x-firmware \
    luci \
    luci-theme-bootstrap \
    luci-app-firewall \
    luci-proto-ipv6 \
    luci-proto-ppp \
    kmod-button-hotplug \
    kmod-leds-gpio \
    kmod-usb-core kmod-usb2 \
    opkg \
    htop coremark curl \
    vim-fulltiny dropbear \
    busybox bash \
    network network-monitor \
    dnsmasq firewall4 \
    ppp ppp-mod-pppoe \
    wpad-basic hostapd-common \
    iw iwgetid iwinfo \
    mtd-utils fwtool \
    block-mount \
    kmod-fs-ext4 kmod-fs-vfat \
    kmod-scsi-core kmod-usb-storage \
    openssh-sftp-server
endef

define Profile/hk1mini/Description
    Firmware for HK1 Mini TV Box with Rockchip RK3229, 2GB RAM, 16GB eMMC.
    Supports WiFi via SSV6xxx, Ethernet, USB, and SD card.
endef

$(eval $(call Profile,hk1mini))
