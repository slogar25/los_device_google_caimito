#
# SPDX-FileCopyrightText: 2021-2024 The LineageOS Project
# SPDX-FileCopyrightText: 2021-2024 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
DEVICE_CODENAME := tokay
DEVICE_PATH := device/google/caimito
VENDOR_PATH := vendor/google/tokay
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)
$(call inherit-product, device/google/zumapro/lineage_common.mk)
$(call inherit-product, $(DEVICE_PATH)/$(DEVICE_CODENAME)/device-lineage.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 9
PRODUCT_NAME := lineage_$(DEVICE_CODENAME)

# Banner
RISING_MAINTAINER=Slogar25

# Rising Stuff
TARGET_ENABLE_BLUR := true
PRODUCT_NO_CAMERA := true

# GMS
WITH_GMS := true
TARGET_SUPPORTS_QUICK_TAP := true
RELEASE_PIXEL_2025_ENABLED := true

# Boot animation
TARGET_SCREEN_HEIGHT := 2424
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="tokay-user 16 BP2A.250705.008 13578956 release-keys" \
    BuildFingerprint=google/tokay/tokay:16/BP2A.250705.008/13578956:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME) \
	RisingChipset="Google Tensor 4" \
	RisingMaintainer="Slogar25"

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)
