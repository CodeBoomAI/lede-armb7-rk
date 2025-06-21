define Device/hk1mini
  DEVICE_VENDOR := HK1
  DEVICE_MODEL := Mini
  SOC := rk3229
  DEVICE_DTS := rk3229-hk1mini
  IMAGE/sysupgrade.img.gz := boot-common | gzip | append-metadata
endef
TARGET_DEVICES += hk1mini