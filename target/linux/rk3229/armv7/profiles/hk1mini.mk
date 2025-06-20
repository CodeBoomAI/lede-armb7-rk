define Profile/hk1mini
  NAME:=HK1 Mini TV Box
  PACKAGES:= \
    kmod-ssv6xxx \
    ssv6x5x-firmware \
    luci \
    luci-theme-bootstrap \
    luci-app-firewall \
    kmod-button-hotplug \
    kmod-leds-gpio \
    kmod-usb-core \
    kmod-usb2 \
    opkg \
    busybox dropbear \
    htop coremark vim-fulltiny \
    dnsmasq firewall4 \
    ppp ppp-mod-pppoe \
    iw iwgetid iwinfo \
    kmod-mac80211
endef

define Profile/hk1mini/Description
    Firmware untuk HK1 Mini dengan SoC Rockchip RK3229
endef

$(eval $(call Profile,hk1mini))
