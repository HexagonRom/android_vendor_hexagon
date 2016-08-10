# Inherit some common hexagon stuff.
$(call inherit-product, vendor/hexagon/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/hexagon/configs/telephony.mk)

$(call inherit-product, device/motorola/otus/full_otus.mk)

PRODUCT_RELEASE_NAME := otus
PRODUCT_NAME := hexagon_otus

PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540
-include vendor/hexagon/configs/bootanimation.mk
