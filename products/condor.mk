# Inherit some common hexagon stuff.
$(call inherit-product, vendor/hexagon/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/hexagon/configs/telephony.mk)

$(call inherit-product, device/motorola/condor/full_condor.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := hexagon_condor
PRODUCT_RELEASE_NAME := MOTO E

PRODUCT_GMS_CLIENTID_BASE := android-motorola

# hexagon Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
	DEVICE_MAINTAINERS="Vatsal K (Vatsal)"

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540
-include vendor/hexagon/configs/bootanimation.mk
