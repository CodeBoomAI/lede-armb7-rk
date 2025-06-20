define Device/hk1mini
  DEVICE_VENDOR := HK1
  DEVICE_MODEL := Mini
  DEVICE_DTS := rk3229-hk1mini
  IMAGES := sysupgrade.img.gz
  IMAGE/sysupgrade.img.gz := append-kernel | pad-to 2M | append-rootfs | pad-rootfs | gzip
endef
TARGET_DEVICES += hk1mini
