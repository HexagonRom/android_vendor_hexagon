# Inherit hexagon common bits
$(call inherit-product, vendor/hexagon/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/hexagon/configs/telephony.mk)

# Enhanced NFC
$(call inherit-product, vendor/hexagon/configs/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/geehrc/full_geehrc.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := geehrc
PRODUCT_NAME := hexagon_geehrc
PRODUCT_BRAND := LGE
PRODUCT_MODEL := Optimus G
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false


# hexagon Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=geehrc_open_eu \
        BUILD_FINGERPRINT=lge/geehrc_open_eu/geehrc:4.4.2/KOT49I.E97520a/E97520a.1403273885:user/release-keys \
        PRIVATE_BUILD_DESC="geehrc_open_eu-user 4.4.2 KOT49I.E97520a E97520a.1403273885 release-keys"

	DEVICE_MAINTAINERS="Mehmet (Proxy13)"


# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
-include vendor/hexagon/configs/bootanimation.mk
