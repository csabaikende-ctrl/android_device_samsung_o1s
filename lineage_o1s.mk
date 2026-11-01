#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from o1s device
$(call inherit-product, device/samsung/o1s/device.mk)

# AxionOS configuration
TARGET_DISABLE_EPPE := true
TARGET_INCLUDE_AXFX := true
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2400

# AxionOS device info (underscores become spaces in Settings)
AXION_MAINTAINER := Kakimakifenci123
AXION_PROCESSOR := Exynos_2100
AXION_CAMERA_REAR_INFO := 12,12,64
AXION_CAMERA_FRONT_INFO := 10

# device/axion/common exports AXION_PROCESSOR as persist.sys.axion_cpu_info,
# but Settings reads persist.sys.axion_processor_info.
PRODUCT_PRODUCT_PROPERTIES += \
    persist.sys.axion_processor_info=$(AXION_PROCESSOR)

# Inherit from common lineage configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_o1s
PRODUCT_DEVICE := o1s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G991B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="o1sxxx-user 15 AP3A.240905.015.A2 G991BXXSJHZA6 release-keys" \
    BuildFingerprint=samsung/o1sxxx/o1s:11/RP1A.200720.012/G991BXXSJHZA6:user/release-keys \
    DeviceProduct=o1sxxx \
    SystemName=o1sxxx

# Define PDA property for camera
PRODUCT_SYSTEM_PROPERTIES += \
    ro.build.PDA=G991BXXSJHZA6
