# Inherit some common hexagon stuff.
$(call inherit-product, vendor/hexagon/configs/common_tablet.mk)

$(call inherit-product, device/samsung/chagallwifi/full_chagallwifi.mk)

PRODUCT_NAME := hexagon_chagallwifi
PRODUCT_DEVICE := chagallwifi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-T800 \
    PRODUCT_NAME=chagallwifi \
    PRODUCT_DEVICE=chagallwifi \
    TARGET_DEVICE=chagallwifi \

# hexagon Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
	DEVICE_MAINTAINERS="Sean H (deadman96385)"

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1600
-include vendor/hexagon/configs/bootanimation.mk
