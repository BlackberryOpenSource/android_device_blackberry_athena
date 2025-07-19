# Board specific SELinux policy variable definitions
BOARD_SEPOLICY_DIRS += \
    $(DEVICE_PATH)/sepolicy/vendor/common \
    $(DEVICE_PATH)/sepolicy/vendor/ssg \
    $(DEVICE_PATH)/sepolicy/vendor/timeservice \
    $(DEVICE_PATH)/sepolicy/vendor/common/sysmonapp

ifeq ($(TARGET_SEPOLICY_DIR),)
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor/$(TARGET_BOARD_PLATFORM)
else
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor/$(TARGET_SEPOLICY_DIR)
endif

ifneq (,$(filter userdebug eng, $(TARGET_BUILD_VARIANT)))
BOARD_SEPOLICY_DIRS += \
    $(DEVICE_PATH)/sepolicy/vendor/test
endif

ifneq (,$(filter 24 25 26 27, $(PRODUCT_SHIPPING_API_LEVEL)))
BOARD_SEPOLICY_DIRS += \
    $(DEVICE_PATH)/sepolicy/vendor/ota/$(TARGET_BOARD_PLATFORM)
endif

BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    $(DEVICE_PATH)/sepolicy/public

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    $(DEVICE_PATH)/sepolicy/private

-include $(DEVICE_PATH)/sepolicy/qcom/sepolicy.mk
