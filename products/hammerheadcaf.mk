# Inherit hexagon common bits
$(call inherit-product, vendor/hexagon/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/hexagon/configs/telephony.mk)

# Enhanced NFC
$(call inherit-product, vendor/hexagon/configs/nfc_enhanced.mk)

# Inherit AOSP device configuration for hammerhead
$(call inherit-product, device/lge/hammerheadcaf/full_hammerhead.mk)


# Setup device specific product configuration
PRODUCT_DEVICE := hammerheadcaf
PRODUCT_NAME := hexagon_hammerheadcaf
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5 CAF
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    BUILD_FINGERPRINT=google/hammerhead/hammerhead:6.0.1/MOB30Y/3067468:user/release-keys \
    PRIVATE_BUILD_DESC="hammerhead-user 6.0.1 MOB30Y 3067468 release-keys"


# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
-include vendor/hexagon/configs/bootanimation.mk
