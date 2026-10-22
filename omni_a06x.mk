#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from a06x device
$(call inherit-product, device/samsung/a06x/device.mk)

PRODUCT_DEVICE := a06x
PRODUCT_NAME := omni_a06x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A066B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a06xxx-user 13 TP1A.220624.014 A066BXXS3AYG2 release-keys"

BUILD_FINGERPRINT := samsung/a06xxx/a06x:13/TP1A.220624.014/A066BXXS3AYG2:user/release-keys
