$(call inherit-product, vendor/hexagon/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/hexagon/configs/telephony.mk)

$(call inherit-product, vendor/hexagon/configs/nfc_enhanced.mk)

$(call inherit-product, device/samsung/jfltevzw/full_jfltevzw.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
  PRODUCT_NAME=jfltevzw \
  TARGET_DEVICE=jfltevzw \
  BUILD_FINGERPRINT="Verizon/jfltevzw/jfltevzw:5.0.1/LRX22C/I545VRUGOC1:user/release-keys" \
  PRIVATE_BUILD_DESC="jfltevzw-user 5.0.1 LRX22C I545VRUGOC1 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-verizon

PRODUCT_NAME := hexagon_jfltevzw
PRODUCT_DEVICE := jfltevzw

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
-include vendor/hexagon/configs/bootanimation.mk
