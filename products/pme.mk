# Inherit some common  stuff.
$(call inherit-product, vendor/hexagon/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/hexagon/configs/telephony.mk)

$(call inherit-product, device/htc/pme/full_pme.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := pme
PRODUCT_NAME := hexagon_pme
PRODUCT_BRAND := HTC
PRODUCT_MODEL := HTC 10
PRODUCT_MANUFACTURER := HTC

TARGET_VENDOR := htc

# Device fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=pme \
    PRODUCT_DEVICE="htc_pmeuhl" \
    PRODUCT_NAME="pmeuhl_00617" \
    BUILD_FINGERPRINT="htc/pmeuhl_00617/htc_pmeuhl:7.0/NRD90M/831921.8:user/release-keys" \
    PRIVATE_BUILD_DESC="2.28.401.8 8.0_g CL831921 release-keys"


# Device was launched with M
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.first_api_level=23

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440
-include vendor/aicp/configs/bootanimation.mk
