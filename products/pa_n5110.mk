# Copyright (C) 2014 ParanoidAndroid Project
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
ifeq (pa_n5110,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_tvdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Include AOSPA common configuration
include vendor/pa/main.mk

# Inherit device configuration
$(call inherit-product, device/samsung/n5110/full_n5110.mk)

# Override AOSP build properties
PRODUCT_NAME := pa_n5110
PRODUCT_DEVICE := n5110
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-N5110

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=konawifixx TARGET_DEVICE=konawifi BUILD_FINGERPRINT="samsung/konawifixx/konawifi:4.2.2/JDQ39/N5110XXCMG2:user/release-keys" PRIVATE_BUILD_DESC="konawifixx-user 4.2.2 JDQ39 N5110XXCMG2 release-keys"
    
endif
