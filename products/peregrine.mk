# Inherit some common hexagon stuff.
$(call inherit-product, vendor/hexagon/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/hexagon/configs/telephony.mk)

$(call inherit-product, device/motorola/peregrine/full_peregrine.mk)

PRODUCT_RELEASE_NAME := peregrine
PRODUCT_NAME := hexagon_peregrine

PRODUCT_GMS_CLIENTID_BASE := android-motorola


# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
-include vendor/hexagon/configs/bootanimation.mk
