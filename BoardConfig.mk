#
# Copyright (C) 2017 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/motorola/lake

# Inherit from motorola sdm660-common
-include device/motorola/sdm660-common/BoardConfigCommon.mk

# A/B updater
AB_OTA_UPDATER := true

AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    system \
    vendor

# Assertions
TARGET_BOARD_INFO_FILE := device/motorola/lake/board-info.txt
TARGET_OTA_ASSERT_DEVICE := lake,lake_n

# This flag needs to be set first
BOARD_USES_KEYMASTER_4 := true

# Display
TARGET_SCREEN_DENSITY := 420

# Init
SOONG_CONFIG_NAMESPACES += MOTOROLA_SDM660_INIT
SOONG_CONFIG_MOTOROLA_SDM660_INIT := DEVICE_LIB
SOONG_CONFIG_MOTOROLA_SDM660_INIT_DEVICE_LIB := //$(DEVICE_PATH):libinit_lake

# Kernel
BOARD_BOOT_HEADER_VERSION := 1
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
TARGET_KERNEL_CONFIG := lake_defconfig

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_DTBOIMG_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2969567232
BOARD_VENDORIMAGE_PARTITION_SIZE := 939524096

# Power
TARGET_HAS_NO_WLAN_STATS := true

# Properties
TARGET_SYSTEM_EXT_PROP += $(DEVICE_PATH)/system_ext.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_UI_BLANK_UNBLANK_ON_INIT := true

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# inherit from the proprietary version
include vendor/motorola/lake/BoardConfigVendor.mk
