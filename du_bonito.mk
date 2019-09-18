# Copyright (C) 2019 The Dirty Unicorns Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Include DU common configuration.
include vendor/du/config/common_full_phone.mk

# Inherit from the common Open Source product configuration.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/mainline.mk)

# Inherit device specific makefile.
$(call inherit-product, device/google/bonito/device-bonito.mk)

PRODUCT_NAME := du_bonito
PRODUCT_DEVICE := bonito
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel 3a XL
PRODUCT_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="bonito" \
    TARGET_DEVICE="bonito" \
    PRIVATE_BUILD_DESC="bonito-user 10 QP1A.190711.020 5800535 release-keys"

BUILD_FINGERPRINT := google/bonito/bonito:10/QP1A.190711.020/5800535:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/bonito/bonito:10/QP1A.190711.020/5800535:user/release-keys

$(call inherit-product-if-exists, vendor/google/bonito/bonito-vendor.mk)
$(call inherit-product-if-exists, vendor/pixelgapps/pixel-gapps.mk)
