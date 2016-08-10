# Inherit some common hexagon stuff.
$(call inherit-product, vendor/hexagon/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/hexagon/configs/telephony.mk)

$(call inherit-product, device/motorola/thea/full_thea.mk)

PRODUCT_RELEASE_NAME := thea
PRODUCT_NAME := hexagon_thea

PRODUCT_GMS_CLIENTID_BASE := android-motorola


# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
-include vendor/hexagon/configs/bootanimation.mk
