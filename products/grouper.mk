# Release name
PRODUCT_RELEASE_NAME := Nexus7


# Inherit some common hexagon stuff.
$(call inherit-product, vendor/hexagon/configs/common_tablet.mk)

# Enhanced NFC
$(call inherit-product, vendor/hexagon/configs/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/asus/grouper/full_grouper.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := grouper
PRODUCT_NAME := hexagon_grouper
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus
PRODUCT_RESTRICT_VENDOR_FILES := false

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasi BUILD_FINGERPRINT="google/nakasi/grouper:6.0/MRA58K/10120636:user/release-keys" PRIVATE_BUILD_DESC="nakasi-user 6.0 MRA58K 10120636 release-keys"


# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800
-include vendor/hexagon/configs/bootanimation.mk
