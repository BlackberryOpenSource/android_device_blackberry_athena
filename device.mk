DEVICE_PATH := device/blackberry/athena

# Set Shipping API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Kernel
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/prebuilts/kernel:kernel \
    $(DEVICE_PATH)/rootdir/etc/init.recovery.qcom.rc:root/init.recovery.qcom.rc

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.ambient_temperature.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.ambient_temperature.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.hifi_sensors.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.hifi_sensors.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.relative_humidity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.relative_humidity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level-0.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version-1_0_3.xml \
    frameworks/native/data/etc/android.hardware.vulkan.compute-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.compute-0.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.ipsec_tunnels.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.ipsec_tunnels.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml

# AID/fs configs
PRODUCT_PACKAGES += \
    fs_config_files

# Android EGL implementation
PRODUCT_PACKAGES += libGLES_android

# ANT+
PRODUCT_PACKAGES += \
    AntHalService \
    antradio_app \
    com.dsi.ant.antradio_library

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio@2.0-service \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.audio.effect@2.0-service \
    android.hardware.soundtrigger@2.0-impl \
    android.hardware.soundtrigger@2.0-service \
    android.hardware.soundtrigger@2.2-impl \
    android.hardware.soundtrigger@2.2-service \
    sound_trigger.primary.sdm660 \
    audiod \
    audio.a2dp.default \
    audio.primary.sdm660 \
    audio.r_submix.default \
    audio.usb.default \
    libaacwrapper \
    libalsautils \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libvolumelistener \
    libtinyxml \
    tinymix

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(DEVICE_PATH)/audio/audio_output_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_output_policy.conf \
    $(DEVICE_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(DEVICE_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/audio_policy_configuration.xml \
    $(DEVICE_PATH)/audio/audio_tuning_mixer.txt:$(TARGET_COPY_OUT_VENDOR)/etc/audio_tuning_mixer.txt \
    $(DEVICE_PATH)/audio/listen_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/listen_platform_info.xml \
    $(DEVICE_PATH)/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml \
    $(DEVICE_PATH)/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0 \
    audio.bluetooth.default \
    android.hardware.bluetooth.audio@2.0-impl \
    vendor.qti.hardware.btconfigstore@1.0.vendor

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.device@3.2-impl \
    android.hardware.camera.device@3.2 \
    android.hardware.camera.device@3.3-impl \
    android.hardware.camera.device@3.3 \
    android.hardware.camera.provider@2.4-impl \
    android.hardware.camera.provider@2.4-service \
    android.hardware.camera.provider@2.4 \
    camera.sdm660 \
    libstdc++.vendor \
    Snap \
    vendor.qti.hardware.camera.device@1.0 \
    vendor.qti.hardware.camera.device@1.0_vendor

# CAS
PRODUCT_PACKAGES += \
    android.hardware.cas@1.0-service

# Security
PRODUCT_PACKAGES += \
    activity_recognition.sdm660 \
    gatekeeper.sdm660 \
    keystore.sdm660

# Display
PRODUCT_PACKAGES += \
    android.hardware.configstore@1.0-service \
    android.hardware.graphics.allocator@2.0-impl:64 \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl:64 \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \
    copybit.sdm660 \
    gralloc.sdm660 \
    hwcomposer.sdm660 \
    memtrack.sdm660 \
    vulkan.sdm660 \
    libdisplayconfig \
    liboverlay \
    libqdMetaData.system \
    libtinyxml

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service \
    libshim_logmsg

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service

# FM
PRODUCT_PACKAGES += \
    FM2 \
    libqcomfm_jni

# Framework Detect
PRODUCT_PACKAGES += \
    libqti_vndfwk_detect \
    libqti_vndfwk_detect.vendor

# GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0 \
    android.hardware.gnss@1.0.vendor \
    libwifi-hal-ctrl \
    libshim_gnss

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/gps/apdr.conf:$(TARGET_COPY_OUT_VENDOR)/etc/apdr.conf \
    $(DEVICE_PATH)/configs/gps/flp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/flp.conf \
    $(DEVICE_PATH)/configs/gps/gps.conf:$(TARGET_COPY_OUT_VENDOR)/etc/gps.conf \
    $(DEVICE_PATH)/configs/gps/izat.conf:$(TARGET_COPY_OUT_VENDOR)/etc/izat.conf \
    $(DEVICE_PATH)/configs/gps/sap.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sap.conf

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@1.0-impl \
    android.hardware.health@1.0-service \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.base@1.0_system \
    android.hidl.manager@1.0 \
    android.hidl.manager@1.0_system \
    libkeystore-wifi-hidl

# ICU
PRODUCT_PACKAGES += \
    libicuuc.vendor

# IPACM
PRODUCT_PACKAGES += \
    ipacm \
    IPACM_cfg.xml \
    libipanat \
    liboffloadhal

# IRSC
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/sec_config:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config

# IRQ
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/msm_irqbalance.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance.conf \
    $(DEVICE_PATH)/configs/msm_irqbalance_sdm630.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance_sdm630.conf

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl \
    android.hardware.light@2.0-service \
    lights.sdm660

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Media
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/media/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles.xml \
    $(DEVICE_PATH)/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml \
    $(DEVICE_PATH)/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(DEVICE_PATH)/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(DEVICE_PATH)/media/audio/notifications/BBRY_Concise.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/notifications/BBRY_Concise.ogg \
    $(DEVICE_PATH)/media/audio/notifications/BBRY_Essential.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/notifications/BBRY_Essential.ogg \
    $(DEVICE_PATH)/media/audio/notifications/BBRY_Expansion.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/notifications/BBRY_Expansion.ogg \
    $(DEVICE_PATH)/media/audio/notifications/BBRY_Nudge.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/notifications/BBRY_Nudge.ogg \
    $(DEVICE_PATH)/media/audio/notifications/BBRY_Present.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/notifications/BBRY_Present.ogg \
    $(DEVICE_PATH)/media/audio/notifications/BBRY_Progress.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/notifications/BBRY_Progress.ogg \
    $(DEVICE_PATH)/media/audio/notifications/BBRY_Pure.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/notifications/BBRY_Pure.ogg \
    $(DEVICE_PATH)/media/audio/notifications/BBRY_Reflection.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/notifications/BBRY_Reflection.ogg \
    $(DEVICE_PATH)/media/audio/notifications/BBRY_Solid.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/notifications/BBRY_Solid.ogg \
    $(DEVICE_PATH)/media/audio/notifications/BBRY_Traverse.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/notifications/BBRY_Traverse.ogg \
    $(DEVICE_PATH)/media/audio/notifications/BBRY_Vertex.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/notifications/BBRY_Vertex.ogg \
    $(DEVICE_PATH)/media/audio/ringtones/BBRY_LittleBear.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/ringtones/BBRY_LittleBear.ogg \
    $(DEVICE_PATH)/media/audio/ui/BBRY_Battery_Low.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/ui/BBRY_Battery_Low.ogg

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_tv.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_tv.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml

PRODUCT_PACKAGES += \
    libmedia.vendor \
    libclearkeycasplugin \
    libdrmclearkeyplugin

# Net
PRODUCT_PACKAGES += \
    android.system.net.netd@1.0 \
    libandroid_net \
    libnetfilter_conntrack \
    libnfnetlink \
    netutils-wrapper-1.0

# NFS
PRODUCT_PACKAGES += \
    NfcNci \
    Tag \
    com.android.nfc_extras \
    android.hardware.nfc@1.0-impl \
    android.hardware.nfc@1.0-service \

# OMX
PRODUCT_PACKAGES += \
    android.hardware.media.omx@1.0-service \
    libc2dcolorconvert \
    libextmedia_jni \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-impl \
    android.hardware.power@1.0-service-qti

# QMI
PRODUCT_PACKAGES += \
    libjson

# QTI
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt \
    $(DEVICE_PATH)/configs/privapp-permissions-qti.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-qti.xml \
    $(DEVICE_PATH)/configs/qti_whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/qti_whitelist.xml \

# RCS
PRODUCT_PACKAGES += \
    com.android.ims.rcsmanager \
    PresencePolling \
    RcsService

# Radio
PRODUCT_PACKAGES += \
    android.hardware.radio@1.0 \
    android.hardware.radio@1.1 \
    rild \
    librmnetctl \
    libprotobuf-cpp-full \
    libxml2

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.msm.usb.configfs.rc \
    init.qcom.factory.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.target.rc \
    init.recovery.qcom.rc \
    ueventd.qcom.rc

PRODUCT_PACKAGES += \
    init.class_main.sh \
    init.crda.sh \
    init.mdm.sh \
    init.qcom.class_core.sh \
    init.qcom.coex.sh \
    init.qcom.crashdata.sh \
    init.qcom.early_boot.sh \
    init.qcom.efs.sync.sh \
    init.qcom.post_boot.sh \
    init.qcom.sdio.sh \
    init.qcom.sensors.sh \
    init.qcom.sh \
    init.qcom.syspart_fixup.sh \
    init.qcom.usb.sh \
    init.qcom.wifi.sh \
    init.qti.fm.sh \
    init.qti.ims.sh \
    init.qti.qseecomd.sh \
    init.target.usb.sh \
    qca6234-service.sh \

# RenderScript
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# Seccomp
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/seccomp/configstore@1.0.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/configstore@1.0.policy \
    $(DEVICE_PATH)/seccomp/mediacodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(DEVICE_PATH)/seccomp/mediaextractor.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy \

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    android.hardware.sensors@1.0-service

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/sensors/sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensor_def_qcomdev.conf \
    $(DEVICE_PATH)/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# Telephony-ext
PRODUCT_PACKAGES += \
    ims-ext-common \
    ims_ext_common.xml \
    qti-telephony-hidl-wrapper \
    qti_telephony_hidl_wrapper.xml \
    qti-telephony-utils \
    qti_telephony_utils.xml

# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0-impl \
    android.hardware.thermal@1.0-service \
    thermal.sdm660

# Update engine
PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

PRODUCT_PACKAGES_DEBUG += \
    update_engine_client

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service

# Verity
PRODUCT_SYSTEM_VERITY_PARTITION := /dev/block/platform/soc/c0c4000.sdhci/by-name/system
PRODUCT_VENDOR_VERITY_PARTITION := /dev/block/platform/soc/c0c4000.sdhci/by-name/vendor
$(call inherit-product, build/target/product/verity.mk)

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service

# VNDK
PRODUCT_PACKAGES += \
    vndk_package \
    vndk-sp

# Wallpapers
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/media/bbpic/Animal/aaron-barnaby-454278-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/aaron-barnaby-454278-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Animal/alan-emery-121147-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/alan-emery-121147-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Animal/alecu-gabriel-331261-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/alecu-gabriel-331261-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Animal/baptist-standaert-346832-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/baptist-standaert-346832-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Animal/christine-donaldson-309031-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/christine-donaldson-309031-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Animal/freddie-marriage-156915-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/freddie-marriage-156915-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Animal/freestocks-org-119823-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/freestocks-org-119823-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Animal/guillermo-sanchez-547092-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/guillermo-sanchez-547092-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Animal/hollie-harmsworth-373134-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/hollie-harmsworth-373134-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Animal/james-hammond-347179-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/james-hammond-347179-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Animal/jesse-callahan-411729-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/jesse-callahan-411729-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Animal/kaiwen-sun-352786-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/kaiwen-sun-352786-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Animal/ken-wu-156530-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/ken-wu-156530-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Architecture/andre-benz-475077-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/andre-benz-475077-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Architecture/andre-benz-501827-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/andre-benz-501827-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Architecture/annie-spratt-434973-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/annie-spratt-434973-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Architecture/annie-spratt-542975-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/annie-spratt-542975-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Architecture/benjamin-dickerhof-499931-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/benjamin-dickerhof-499931-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Architecture/daniel-burka-104041-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/daniel-burka-104041-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Architecture/dawson-lovell-498973-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/dawson-lovell-498973-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Architecture/derek-liang-308130-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/derek-liang-308130-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Architecture/derek-liang-503982-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/derek-liang-503982-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Architecture/eddie-garcia-503671-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/eddie-garcia-503671-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Architecture/john-towner-133303-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/john-towner-133303-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Architecture/karsten-wurth-inf1783-169610-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/karsten-wurth-inf1783-169610-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Architecture/mwangi-gatheca-548638-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/mwangi-gatheca-548638-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Architecture/nicholas-loo-372788-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/nicholas-loo-372788-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Architecture/osman-rana-193635-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/osman-rana-193635-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Architecture/redd-angelo-236775-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/redd-angelo-236775-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Architecture/roman-kraft-51047-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/roman-kraft-51047-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Architecture/roya-ann-miller-463707-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/roya-ann-miller-463707-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/blackandwhite/david-marcu-751-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/david-marcu-751-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/blackandwhite/erico-marcelino-235177-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/erico-marcelino-235177-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/blackandwhite/hoach-le-dinh-96823-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/hoach-le-dinh-96823-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/blackandwhite/isabella-juskova-470923-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/isabella-juskova-470923-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/blackandwhite/ornella-binni-102187-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/ornella-binni-102187-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/blackandwhite/tj-holowaychuk-295674-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/tj-holowaychuk-295674-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/foodanddrink/brenda-godinez-227281-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/brenda-godinez-227281-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/foodanddrink/brooke-lark-158019-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/brooke-lark-158019-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/foodanddrink/brooke-lark-194252-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/brooke-lark-194252-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/foodanddrink/brooke-lark-200708-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/brooke-lark-200708-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/foodanddrink/jennifer-pallian-146562-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/jennifer-pallian-146562-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/foodanddrink/jennifer-pallian-200439-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/jennifer-pallian-200439-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/foodanddrink/jessica-castro-350570-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/jessica-castro-350570-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/foodanddrink/joseph-gonzalez-192345-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/joseph-gonzalez-192345-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/foodanddrink/joseph-gonzalez-228027-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/joseph-gonzalez-228027-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/foodanddrink/whitney-wright-282068-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/whitney-wright-282068-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Landscape/adam-krowitz-386792-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/adam-krowitz-386792-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Landscape/alexander-andrews-394970-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/alexander-andrews-394970-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Landscape/ashim-d-silva-162286-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/ashim-d-silva-162286-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Landscape/chris-arock-420349-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/chris-arock-420349-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Landscape/grant-ritchie-338423-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/grant-ritchie-338423-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Landscape/ian-keefe-452136-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/ian-keefe-452136-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Landscape/jake-blucker-316192-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/jake-blucker-316192-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Landscape/jaromir-kavan-296728-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/jaromir-kavan-296728-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Landscape/jean-philippe-delberghe-461641-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/jean-philippe-delberghe-461641-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Landscape/katie-moum-394599-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/katie-moum-394599-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Landscape/marcus-wallis-473525-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/marcus-wallis-473525-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Landscape/mario-taferner-339576-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/mario-taferner-339576-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Landscape/matthew-larkin-398651-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/matthew-larkin-398651-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Landscape/milkovi-414159-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/milkovi-414159-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Landscape/mohammad-alizade-368770-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/mohammad-alizade-368770-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Landscape/nate-rayfield-336417-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/nate-rayfield-336417-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Landscape/rob-musson-458944-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/rob-musson-458944-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Landscape/robert-richarz-498684-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/robert-richarz-498684-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Landscape/sean-pierce-342043-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/sean-pierce-342043-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Landscape/sherman-yang-503440-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/sherman-yang-503440-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Landscape/shifaaz-shamoon-302646-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/shifaaz-shamoon-302646-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Landscape/stephen-leonardi-369720-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/stephen-leonardi-369720-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Minimalism/billy-lam-303-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/billy-lam-303-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Minimalism/fabian-moller-401628-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/fabian-moller-401628-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Minimalism/igor-son-320878-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/igor-son-320878-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Minimalism/pineapple-supply-co-262624-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/pineapple-supply-co-262624-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Minimalism/simone-hutsch-384766-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/simone-hutsch-384766-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Minimalism/simone-hutsch-384853-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/simone-hutsch-384853-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Minimalism/simone-hutsch-384859-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/simone-hutsch-384859-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Minimalism/simone-hutsch-478127-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/simone-hutsch-478127-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Minimalism/simone-hutsch-538312-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/simone-hutsch-538312-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Nature/aaron-burden-261110-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/aaron-burden-261110-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Nature/annie-spratt-199471-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/annie-spratt-199471-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Nature/dakota-corbin-207925-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/dakota-corbin-207925-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Nature/flo-dahm-463416-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/flo-dahm-463416-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Nature/paul-larkin-524582-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/paul-larkin-524582-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Nature/peng-chen-407915-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/peng-chen-407915-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Travel/annie-spratt-441579-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/annie-spratt-441579-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Travel/charlie-costello-301722-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/charlie-costello-301722-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Travel/clarisse-meyer-304307-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/clarisse-meyer-304307-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Travel/dorian-mongel-340528-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/dorian-mongel-340528-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Travel/henri-picot-542943-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/henri-picot-542943-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Travel/ian-keefe-218453-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/ian-keefe-218453-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Travel/ian-parker-546257-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/ian-parker-546257-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Travel/igor-ovsyannykov-219668-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/igor-ovsyannykov-219668-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Travel/jaime-arrieta-237601-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/jaime-arrieta-237601-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Travel/james-connolly-391460-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/james-connolly-391460-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Travel/linh-nguyen-145766-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/linh-nguyen-145766-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Travel/luca-bravo-453157-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/luca-bravo-453157-unsplash.jpg \
    $(DEVICE_PATH)/media/bbpic/Travel/samuel-zeller-171871-unsplash.jpg:$(TARGET_COPY_OUT_SYSTEM)/etc/wallpaper/samuel-zeller-171871-unsplash.jpg

# Weaver
PRODUCT_PACKAGES += \
    android.hardware.weaver@1.0

# Wi-Fi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    libwpa_client \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/wifi/fstman.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/fstman.ini \
    $(DEVICE_PATH)/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(DEVICE_PATH)/wifi/wifi_concurrency_cfg.txt:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wifi_concurrency_cfg.txt \
    $(DEVICE_PATH)/wifi/wigig_p2p_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wigig_p2p_supplicant.conf \
    $(DEVICE_PATH)/wifi/wigig_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wigig_supplicant.conf \
    $(DEVICE_PATH)/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
    $(DEVICE_PATH)/wifi/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/WCNSS_qcom_cfg.ini

# Wi-Fi Display
PRODUCT_PACKAGES += \
    libmediaextractorservice

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/blackberry/athena/athena-vendor.mk)