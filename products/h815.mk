# Inherit hexagon common bits
$(call inherit-product, vendor/hexagon/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/hexagon/configs/telephony.mk)

# Enhanced NFC
$(call inherit-product, vendor/hexagon/configs/nfc_enhanced.mk)

# Inherit AOSP device configuration for H815
$(call inherit-product, device/lge/h815/full_h815.mk)

# Setup device specific product configuration
PRODUCT_NAME := hexagon_h815

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g4" \
    PRODUCT_NAME="g4_global_com" \
    BUILD_FINGERPRINT="lge/p1_global_com/p1:6.0/MRA58K/152940055675e:user/release-keys" \
    PRIVATE_BUILD_DESC="p1_global_com-user 6.0 MRA58K 152940055675e release-keys"


# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

-include vendor/hexagon/configs/bootanimation.mk
