# Inherit hexagon common bits
$(call inherit-product, vendor/hexagon/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/hexagon/configs/telephony.mk)

# Enhanced NFC
$(call inherit-product, vendor/hexagon/configs/nfc_enhanced.mk)

# Inherit AOSP device configuration for d800
$(call inherit-product, device/lge/d800/d800.mk)


# Device identifier
PRODUCT_DEVICE := d800
PRODUCT_NAME := hexagon_d800
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-D800
PRODUCT_MANUFACTURER := lge


# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
-include vendor/hexagon/configs/bootanimation.mk
