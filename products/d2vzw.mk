$(call inherit-product, vendor/hexagon/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/hexagon/configs/telephony.mk)

$(call inherit-product, vendor/hexagon/configs/nfc_enhanced.mk)

$(call inherit-product, device/samsung/d2vzw/full_d2vzw.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=d2vzw \
    TARGET_DEVICE=d2vzw \
    BUILD_FINGERPRINT="Verizon/d2vzw/d2vzw:4.4.2/KOT49H/I535VRUDNE1:user/release-keys" \
    PRIVATE_BUILD_DESC="d2vzw-user 4.4.2 KOT49H I535VRUDNE1 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-verizon


PRODUCT_NAME := hexagon_d2vzw
PRODUCT_DEVICE := d2vzw
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
-include vendor/hexagon/configs/bootanimation.mk
