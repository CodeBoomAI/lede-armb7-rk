define Device/generic-rk3229
  DEVICE_TITLE := Generic RK3229 Board
  SOC := rk3229
  DEVICE_DTS := rk3229-evb
  DEVICE_PACKAGES := kmod-usb-core kmod-usb-dwc2 kmod-usb-storage
  IMAGE_SIZE := 16064k
endef
TARGET_DEVICES += generic-rk3229
