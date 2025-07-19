# Inherit from GSI common
$(call inherit-product, $(SRC_TARGET_DIR)/product/legacy_gsi_common.mk)

# Legacy GSI relax the compatible property checking
PRODUCT_COMPATIBLE_PROPERTY_OVERRIDE := false

# Inherit from athena device
$(call inherit-product, device/blackberry/athena/device.mk)

# Inherit from common product
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

PRODUCT_DEVICE := athena
PRODUCT_NAME := athena
PRODUCT_BRAND := blackberry
PRODUCT_MODEL := KEY2
PRODUCT_MANUFACTURER := BlackBerry

PRODUCT_GMS_CLIENTID_BASE := android-blackberry

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="bbry_sdm660_sfi-user 8.1.0 OPM1.171019.026 ACQ160 release-keys"

BUILD_FINGERPRINT := blackberry/bbf100americas/bbf100:8.1.0/OPM1.171019.026/ACQ160:user/release-keys

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)