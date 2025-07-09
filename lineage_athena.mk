#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from athena device
$(call inherit-product, device/blackberry/athena/device.mk)

PRODUCT_DEVICE := athena
PRODUCT_NAME := lineage_athena
PRODUCT_BRAND := blackberry
PRODUCT_MANUFACTURER := blackberry

PRODUCT_GMS_CLIENTID_BASE := android-blackberry

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="athena-user 8.1.0 OPM1.171019.026 ACW142 release-keys"

BUILD_FINGERPRINT := blackberry/athena/athena:8.1.0/OPM1.171019.026/ACW142:user/release-keys
