#
# Copyright 2019 The Android Open Source Project
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
#

PRODUCT_HARDWARE := sargo

include device/google/bonito/device-common.mk

DEVICE_PACKAGE_OVERLAYS += device/google/bonito/sargo/overlay

PRODUCT_PRODUCT_PROPERTIES += ro.com.google.ime.height_ratio=1.2

# Vibrator HAL
PRODUCT_PRODUCT_PROPERTIES +=\
    ro.vibrator.hal.click.duration=8 \
    ro.vibrator.hal.tick.duration=5 \
    ro.vibrator.hal.heavyclick.duration=12 \
    ro.vibrator.hal.short.voltage=110 \
    ro.vibrator.hal.long.voltage=80 \
    ro.vibrator.hal.long.frequency.shift=10

# camera front flashColor
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.front.flashColor=0xffe1c1

# Add white point compensated coefficient
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.display.adaptive_white_coefficient=0.0031,0.5535,-87.498,0.0031,0.5535,-87.498,0.0031,0.5535,-87.498

BOARD_PREBUILT_VENDORIMAGE := vendor/images/sargo/vendor.img
