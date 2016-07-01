# Inherit common stuff
$(call inherit-product, vendor/hexagon/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/hexagon/overlay/common_tablet

