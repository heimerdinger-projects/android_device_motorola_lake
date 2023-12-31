#
# Copyright (C) 2017 The LineageOS Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from device
$(call inherit-product, device/motorola/lake/device.mk)

# Device identifiers
PRODUCT_DEVICE := lake
PRODUCT_NAME := lineage_lake
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := Moto G7 Plus
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=lake_retail \
    PRIVATE_BUILD_DESC="lake-user 10 QPWS30.61-21-18-7-12 b1002 release-keys"

BUILD_FINGERPRINT := motorola/lake_retail/lake:10/QPWS30.61-21-18-7-12/b1002:user/release-keys
