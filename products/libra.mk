# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
-include vendor/hexagon/configs/bootanimation.mk

# Inherit some common hexagon stuff
$(call inherit-product, vendor/hexagon/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/hexagon/configs/telephony.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/libra/full_libra.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := hexagon_libra
PRODUCT_DEVICE := libra
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi-4c
TARGET_MANUFACTURER := Xiaomi
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=libra PRODUCT_NAME=libra

# Assert
TARGET_OTA_ASSERT_DEVICE := libra,aqua
TARGET_CONTINUOUS_SPLASH_ENABLED := true

# hexagon Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
	DEVICE_MAINTAINERS="Nguyen Quang Duc"

