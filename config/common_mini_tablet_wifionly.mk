# Inherit mini common Hexagon stuff
$(call inherit-product, vendor/hexagon/config/common_mini.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME
