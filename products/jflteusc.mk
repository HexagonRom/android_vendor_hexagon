# Inherit some common hexagon stuff.
$(call inherit-product, vendor/hexagon/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/hexagon/configs/telephony.mk)

# Enhanced NFC
$(call inherit-product, vendor/hexagon/configs/nfc_enhanced.mk)

$(call inherit-product, device/samsung/jflteusc/full_jflteusc.mk)


PRODUCT_BUILD_PROP_OVERRIDES += \
  PRODUCT_NAME=jflteusc \
  TARGET_DEVICE=jflteusc \
  BUILD_FINGERPRINT="samsung/jflteusc/jflteusc:4.4.2/KOT49H/R970TYUFNK1:user/release-keys" \
  PRIVATE_BUILD_DESC="jflteusc-user 4.4.2 KOT49H R970TYUFNK1 release-keys"

PRODUCT_NAME := hexagon_jflteusc
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := jflteusc
PRODUCT_MODEL := SCH-R970
PRODUCT_MANUFACTURER := Samsung

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
-include vendor/hexagon/configs/bootanimation.mk
