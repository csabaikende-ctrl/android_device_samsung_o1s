#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

ifeq (aospa_o1s,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from o1s device
$(call inherit-product, device/samsung/o1s/device.mk)

# Inherit from the AOSPA configuration.
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

PRODUCT_NAME := aospa_o1s
PRODUCT_DEVICE := o1s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G991B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="o1sxxx-user 15 AP3A.240905.015.A2 G991BXXSJHZA6 release-keys" \
    BuildFingerprint=samsung/o1sxxx/o1s:11/RP1A.200720.012/G991BXXSJHZA6:user/release-keys \
    DeviceName=o1s \
    DeviceProduct=o1sxxx \
    SystemDevice=o1s \
    SystemName=o1sxxx

# Define PDA property for camera
PRODUCT_SYSTEM_PROPERTIES += \
    ro.build.PDA=G991BXXSJHZA6

# Device information
PRODUCT_SYSTEM_PROPERTIES += \
    ro.aospa.maintainer=Kakimakifenci123

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 1080

endif
