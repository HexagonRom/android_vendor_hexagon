# Inherit some common stuff.
$(call inherit-product, vendor/hexagon/configs/common_tablet.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/hexagon/configs/telephony.mk)

$(call inherit-product, device/samsung/klimtlte/full_klimtlte.mk)

PRODUCT_NAME := hexagon_klimtlte
PRODUCT_DEVICE := klimtlte

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-T705 \
    PRODUCT_NAME=klimtlte \
    PRODUCT_DEVICE=klimtlte \
    TARGET_DEVICE=klimtlte \


# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1600
-include vendor/hexagon/configs/bootanimation.mk
