# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ef63s device
$(call inherit-product, device/pantech/ef63s/ef63s.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/hexagon/configs/telephony.mk)

# Enhanced NFC
$(call inherit-product, vendor/hexagon/configs/nfc_enhanced.mk)

# Inherit some common hexagon stuff.
$(call inherit-product, vendor/hexagon/configs/common.mk)

PRODUCT_NAME := hexagon_ef63s
PRODUCT_DEVICE := ef63s
PRODUCT_MANUFACTURER := PANTECH
PRODUCT_MODEL := IM-A910S

PRODUCT_GMS_CLIENTID_BASE := android-ef63s

PRODUCT_BRAND := PANTECH
TARGET_VENDOR := PANTECH
TARGET_VENDOR_PRODUCT_NAME := ef63s
TARGET_VENDOR_DEVICE_NAME := ef63s

## Use the latest approved GMS identifiers unless running a signed build
# ifneq ($(SIGN_BUILD),true)
# PRODUCT_BUILD_PROP_OVERRIDES += \
#    BUILD_FINGERPRINT=pantech/ef63s:5.1.1/LMY48B/YOG4PAS1N0:user/release-keys \
#    PRIVATE_BUILD_DESC="ef63s-user 5.1.1 LMY48B YOG4PAS1N0 release-keys"
# endif

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
-include vendor/hexagon/configs/bootanimation.mk
