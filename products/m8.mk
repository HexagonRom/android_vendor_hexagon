# Inherit some common stuff.
$(call inherit-product, vendor/hexagon/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/hexagon/configs/telephony.mk)


$(call inherit-product, device/htc/m8/full_m8.mk)

$(call inherit-product-if-exists, vendor/htc/m8/m8-vendor.mk)

PRODUCT_NAME := hexagon_m8


# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
-include vendor/hexagon/configs/bootanimation.mk
