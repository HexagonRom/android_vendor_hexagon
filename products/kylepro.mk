# Release name
PRODUCT_RELEASE_NAME := kylepro

# Inherit some common HEXAGON stuff.
$(call inherit-product, vendor/hexagon/configs/common.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/kylepro/device_kylepro.mk)

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=kyleproxx TARGET_DEVICE=kylepro BUILD_FINGERPRINT="samsung/kyleproxx/kylepro:4.2.2/SME13A/S7580XXUAMK5:user/release-keys" PRIVATE_BUILD_DESC="kyleproxx-user 4.2.2 SME13A S7580XXUAMK5 release-keys"

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := kylepro
PRODUCT_NAME := hexagon_kylepro
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-S7580
