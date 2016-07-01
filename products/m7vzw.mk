$(call inherit-product, vendor/hexagon/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/hexagon/configs/telephony.mk)

$(call inherit-product, vendor/hexagon/configs/nfc_enhanced.mk)

$(call inherit-product, device/htc/m7vzw/full_m7vzw.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=HTCOneVZW \
    BUILD_ID=KTU84L \
    BUILD_FINGERPRINT="VERIZON/HTCOneVZW/m7wlv:4.4.3/KTU84L/365669.2:user/release-keys" \
    PRIVATE_BUILD_DESC="5.28.605.2 CL365669 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-verizon

PRODUCT_NAME := hexagon_m7vzw
PRODUCT_DEVICE := m7vzw

# hexagon Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
	DEVICE_MAINTAINERS="Brian L (Chezbel), doc HD (semdoc)"

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
-include vendor/hexagon/configs/bootanimation.mk
