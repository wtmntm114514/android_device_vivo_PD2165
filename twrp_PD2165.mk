#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from PD2165 device
$(call inherit-product, device/vivo/PD2165/device.mk)

PRODUCT_DEVICE := PD2165
PRODUCT_NAME := twrp_PD2165
PRODUCT_BRAND := vivo
PRODUCT_MODEL := V2165A
PRODUCT_MANUFACTURER := vivo
PRODUCT_RELEASE_NAME := PD2165

PRODUCT_GMS_CLIENTID_BASE := android-vivo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="qssi-user 12 SP1A.210812.003 compiler03232051 release-keys"

BUILD_FINGERPRINT := vivo/PD2165B/PD2165:12/SP1A.210812.003/compiler03232051:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += ro.vendor.vivo.product.model=$(PRODUCT_RELEASE_NAME)