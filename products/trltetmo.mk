#
# Copyright (C) 2014 The CyanogenMod Project
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
#

# Inherit common product files.
$(call inherit-product, vendor/hexagon/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/hexagon/configs/telephony.mk)

# Enhanced NFC
$(call inherit-product, vendor/hexagon/configs/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/trltetmo/full_trltetmo.mk)


PRODUCT_NAME := trltetmo
PRODUCT_DEVICE := trltetmo
PRODUCT_NAME := hexagon_trltetmo
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung


PRODUCT_BUILD_PROP_OVERRIDES +=  PRODUCT_NAME=trltetmo TARGET_DEVICE=trltetmo BUILD_FINGERPRINT="samsung/trltetmo/trltetmo:5.0.2/LRX22G/N910TUVU1ANIH:user/release-keys" PRIVATE_BUILD_DESC="trltetmo-user 5.0.2 LRX22G N910TUVU1ANIH release-keys"

# hexagon Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
	DEVICE_MAINTAINERS="Hector C (zipsnet), doc HD (semdoc)"

#Bootanimation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440
-include vendor/hexagon/configs/bootanimation.mk

