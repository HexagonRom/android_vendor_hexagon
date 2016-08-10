# Inherit some common hexagonstuff.
$(call inherit-product, vendor/hexagon/configs/common_tablet.mk)

$(call inherit-product, device/samsung/klimtwifi/full_klimtwifi.mk)

PRODUCT_NAME := hexagon_klimtwifi
PRODUCT_DEVICE := klimtwifi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-T700 \
    PRODUCT_NAME=klimtwifi \
    PRODUCT_DEVICE=klimtwifi \
    TARGET_DEVICE=klimtwifi \


# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1600
-include vendor/hexagon/configs/bootanimation.mk
