# Copyright (C) 2013 ParanoidAndroid Project
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

# Check for target product

ifeq (pa_togari,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_xhdpi

PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/pa/configs/telephony.mk)

# Include AOSPA common configuration
include vendor/pa/main.mk

# Inherit device configuration
$(call inherit-product, device/sony/togari/full_togari.mk)

# Override AOSP build properties
PRODUCT_NAME := pa_togari
PRODUCT_DEVICE := togari
PRODUCT_BRAND := sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := Xperia Z Ultra
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=C6833 \
    BUILD_FINGERPRINT=Sony/C6833_1274-8613/C6833:4.2.2/14.1.B.1.526/8bl_jw:user/release-keys \
    PRIVATE_BUILD_DESC="C6833-user 4.2.2 14.1.B.1.526 8bl_jw test-keys"

endif
