# Inherit some common Tablet stuff.
$(call inherit-product, vendor/hexagon/configs/common.mk)

# Inherit device configuration for wx_na_wf.
$(call inherit-product, device/nvidia/shieldtablet/full_shieldtablet.mk)

PRODUCT_NAME := hexagon_shieldtablet
PRODUCT_DEVICE := shieldtablet


# Bootanimation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1200
-include vendor/hexagon/configs/bootanimation.mk
