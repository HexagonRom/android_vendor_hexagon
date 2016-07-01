# Release name
PRODUCT_RELEASE_NAME := Nexus7

# Inherit some common hexagon stuff.
$(call inherit-product, vendor/hexagon/configs/common_tablet.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/hexagon/configs/telephony.mk)

# Enhanced NFC
$(call inherit-product, vendor/hexagon/configs/nfc_enhanced.mk)

# Inherit AOSP device configuration for tilapia
$(call inherit-product, device/asus/tilapia/full_tilapia.mk)

#MMS and Phone
PRODUCT_PACKAGES += \
    Mms

# Setup device specific product configuration.
PRODUCT_NAME := hexagon_tilapia
PRODUCT_BRAND := Google
PRODUCT_DEVICE := tilapia
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasig BUILD_FINGERPRINT="google/nakasig/tilapia:5.1/LMY47D/1743759:user/release-keys" PRIVATE_BUILD_DESC="nakasig-user 5.1 LMY47D 1743759 release-keys"

# hexagon Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
	DEVICE_MAINTAINERS="doc HD (semdoc)"

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800
-include vendor/hexagon/configs/bootanimation.mk
