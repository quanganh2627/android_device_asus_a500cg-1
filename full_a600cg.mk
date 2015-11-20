#
# Copyright 2013 The Android Open Source Project
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

# Get the long list of APNs
#PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)
$(call inherit-product, device/asus/a500cg/full_a501cg.mk)
#$(call inherit-product, vendor/asus/a500cg/a500cg-vendor.mk)
#$(call inherit-product-if-exists, vendor/google/gapps/gapps.mk)
# Inherit common CM stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)


#PRODUCT_NAME := full_a600cg
PRODUCT_DEVICE := a600cg
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_T00G
PRODUCT_MANUFACTURER := asus
TARGET_VENDOR_PRODUCT_NAME := cm_a600cg
TARGET_VENDOR_DEVICE_NAME := ASUS_T00G

