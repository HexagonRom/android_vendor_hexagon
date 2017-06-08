#
# Copyright (C) 2017 The HexagonOS Project
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

## Specify phone tech before including full_phone
$(call inherit-product, vendor/hexagon/configs/telephony.mk)

# Release name
PRODUCT_RELEASE_NAME="Galaxy Grand Prime"

# Inherit some common Hexagon stuff.
$(call inherit-product, vendor/hexagon/configs/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/fortuna3g/full_fortuna3g.mk)

# Hexagon Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="Hassan Sardar (Has.007)"

# Setup device configuration
PRODUCT_DEVICE := fortuna3g
PRODUCT_NAME := hexagon_fortuna3g

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540
-include vendor/hexagon/configs/bootanimation.mk

