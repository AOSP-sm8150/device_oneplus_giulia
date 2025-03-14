#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/card-defs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/card-defs.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_ODM)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/resourcemanager.xml:$(TARGET_COPY_OUT_ODM)/etc/resourcemanager.xml \
    $(LOCAL_PATH)/audio/usecaseKvManager.xml:$(TARGET_COPY_OUT_ODM)/etc/usecaseKvManager.xml \
    $(LOCAL_PATH)/audio/usecaseKvManager.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usecaseKvManager.xml

# Boot animation
TARGET_SCREEN_HEIGHT := 2376
TARGET_SCREEN_WIDTH := 1080

# DisplayConfig
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/display_id_4630946450791512195.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4630946450791512195.xml

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-lineage

PRODUCT_PACKAGES += \
    OPlusFrameworksResTarget \
    OPlusSettingsProviderResTarget \
    OPlusSettingsResTarget \
    OPlusSystemUIResTarget

# Sensors
PRODUCT_PACKAGES += \
    vendor.lineage.oplus_als.service

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    $(LOCAL_PATH)-kernel

# Vibrator
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vibrator/effect_0.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/9999/def/effect_0.bin \
    $(LOCAL_PATH)/vibrator/effect_1.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/9999/def/effect_1.bin

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/oneplus/sm8650-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/oneplus/giulia/giulia-vendor.mk)
