$(call inherit-product, vendor/hexagon/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/hexagon/configs/telephony.mk)

$(call inherit-product, vendor/hexagon/configs/nfc_enhanced.mk)

$(call inherit-product, device/samsung/jfltetmo/full_jfltetmo.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
  PRODUCT_NAME=jfltetmo \
  TARGET_DEVICE=jfltetmo \
  BUILD_FINGERPRINT="samsung/jfltetmo/jfltetmo:4.4.4/KTU84P/M919UVUFNK2:user/release-keys" \
  PRIVATE_BUILD_DESC="jfltetmo-user 4.4.4 KTU84P M919UVUFNK2 release-keys"

PRODUCT_NAME := hexagon_jfltetmo
PRODUCT_DEVICE := jfltetmo

# hexagon Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
	DEVICE_MAINTAINERS="doc HD (semdoc)"

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
-include vendor/hexagon/configs/bootanimation.mk
