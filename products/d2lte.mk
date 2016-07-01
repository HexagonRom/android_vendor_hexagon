$(call inherit-product, vendor/hexagon/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/hexagon/configs/telephony.mk)

$(call inherit-product, vendor/hexagon/configs/nfc_enhanced.mk)

$(call inherit-product, device/samsung/d2lte/full_d2lte.mk)

PRODUCT_NAME := hexagon_d2lte
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
