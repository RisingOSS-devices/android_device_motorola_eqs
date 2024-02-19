#
# Copyright (C) 2022 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from eqs device
$(call inherit-product, device/motorola/eqs/device.mk)

# Inherit some common RisingOS stuff.
$(call inherit-product, vendor/rising/config/rising.mk)

PRODUCT_NAME := rising_eqs
PRODUCT_DEVICE := eqs
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 30 ultra

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=eqs_ge \
    PRIVATE_BUILD_DESC="eqs_ge-user 13 T1SQS33.15-11-137-10-2 71a49-f5e7b6 release-keys"

BUILD_FINGERPRINT := motorola/eqs_ge/msi:13/T1SQS33.15-11-137-10-2/71a49-f5e7b6:user/release-keys

# RisingOS Flags
WITH_GMS := true
# TARGET_CORE_GMS := true
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_HAS_UDFPS := true
TARGET_USE_GOOGLE_TELEPHONY := true
TARGET_PREBUILT_PIXEL_LAUNCHER := false