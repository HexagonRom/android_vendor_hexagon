$(call inherit-product, vendor/hexagon/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/hexagon/configs/telephony.mk)

$(call inherit-product, vendor/hexagon/configs/nfc_enhanced.mk)

$(call inherit-product, device/samsung/d2spr/full_d2spr.mk)


PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=d2spr \
    TARGET_DEVICE=d2spr \
    BUILD_FINGERPRINT="samsung/d2spr/d2spr:4.4.2/KOT49H/L710VPUDNJ2:user/release-keys" \
    PRIVATE_BUILD_DESC="d2spr-user 4.4.2 KOT49H L710VPUDNJ2 release-keys"

# hexagon Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
	DEVICE_MAINTAINERS="doc HD (semdoc)"

PRODUCT_NAME := hexagon_d2spr
PRODUCT_DEVICE := d2spr
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
-include vendor/hexagon/configs/bootanimation.mk
