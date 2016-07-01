$(call inherit-product, vendor/hexagon/configs/common.mk)

# Enhanced NFC
$(call inherit-product, vendor/hexagon/configs/nfc_enhanced.mk)


$(call inherit-product, device/oppo/find7u/full_find7u.mk)


PRODUCT_NAME := hexagon_find7u
PRODUCT_DEVICE := find7u
PRODUCT_BRAND := Oppo
PRODUCT_MODEL := Find7
PRODUCT_MANUFACTURER := Oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=4.4.2/KVT49L/1390465867:user/release-keys \
    PRIVATE_BUILD_DESC="msm8974-user 4.4.2 KVT49L eng.root.20141017.144947 release-keys"

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
-include vendor/hexagon/configs/bootanimation.mk
