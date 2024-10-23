#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit some common TWRP/OFox stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from genevn device
$(call inherit-product, device/motorola/eqe/device.mk)

PRODUCT_DEVICE := eqe
PRODUCT_NAME := fox_eqe
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 50 pro
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=eqe \
    PRIVATE_BUILD_DESC="user-14-U3UMS34.69-8-3-1-7ee820-release-keys"

BUILD_FINGERPRINT := motorola/eqe_g/eqe:13/U3UMS34.69-8-3-1/7ee820:user/release-keys

