# Release name
PRODUCT_RELEASE_NAME := debcaf

# Inherit some common stuff.
$(call inherit-product, vendor/hexagon/configs/common_tablet.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/hexagon/configs/telephony.mk)

# Enhanced NFC
$(call inherit-product, vendor/hexagon/configs/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/asus/debcaf/full_deb.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := debcaf
PRODUCT_NAME := hexagon_debcaf
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7 2013 CAF
PRODUCT_MANUFACTURER := Asus

PRODUCT_RESTRICT_VENDOR_FILES := false

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=razorg \
    BUILD_FINGERPRINT=google/razorg/deb:6.0.1/MMB29Q/2480792:user/release-keys \
    PRIVATE_BUILD_DESC="razorg-user 6.0.1 MMB29Q 2480792 release-keys"


# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
-include vendor/hexagon/configs/bootanimation.mk
