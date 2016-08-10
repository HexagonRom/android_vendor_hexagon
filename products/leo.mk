# Release name
PRODUCT_RELEASE_NAME := leo

# Inherit some common hexagon stuff.
$(call inherit-product, vendor/hexagon/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/hexagon/configs/telephony.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/leo/device_leo.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := leo
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi Note Pro
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := hexagon_leo


# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440
-include vendor/hexagon/configs/bootanimation.mk
