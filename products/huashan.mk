# Inherit hexagon common bits
$(call inherit-product, vendor/hexagon/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/hexagon/configs/telephony.mk)

# Enhanced NFC
$(call inherit-product, vendor/hexagon/configs/nfc_enhanced.mk)

# Inherit device configurations
$(call inherit-product, device/sony/huashan/device.mk)

# Device display
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Device identification
PRODUCT_DEVICE := huashan
PRODUCT_NAME := hexagon_huashan
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := Xperia SP

# Build fingerprints
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C5303 BUILD_FINGERPRINT=Sony/C5303/C5303:4.3/12.1.A.1.207/Nvt_nw:user/release-keys PRIVATE_BUILD_DESC="C5303-user 4.3 JB-MR2-VISKAN-140318-1014 227 test-keys"


# Boot animation
-include vendor/hexagon/configs/bootanimation.mk
