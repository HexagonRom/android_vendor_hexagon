# Inherit full common Hexagon stuff
$(call inherit-product, vendor/hexagon/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include Hexagon LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/hexagon/overlay/dictionaries
