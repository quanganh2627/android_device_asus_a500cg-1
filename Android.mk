#
# Copyright (C) 2012 The CyanogenMod Project
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

# WARNING: Everything listed here will be built on ALL platforms,
# including x86, the emulator, and the SDK.  Modules must be uniquely
# named (liblights.tuna), and must build everywhere, or limit themselves
# to only building on ARM if they include assembly. Individual makefiles
# are responsible for having their own logic, for fine-grained control.

ifeq ($(TARGET_DEVICE),a500cg)
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
# prebuild source kernel
#BOARD_CUSTOM_BOOTIMG_MK := device/asus/a500cg/intel-boot-tools/boot.mk
BOARD_CUSTOM_MKBOOTIMG := $(HOST_OUT_EXECUTABLES)/pack_intel$(HOST_EXECUTABLE_SUFFIX)
#TARGET_PREBUILT_KERNEL := device/asus/a500cg/kernel
DEVICE_BASE_BOOT_IMAGE := $(LOCAL_PATH)/blobs/boot_60.img
DEVICE_BASE_RECOVERY_IMAGE := $(LOCAL_PATH)/blobs/recovery_60.img

include $(call all-makefiles-under,$(LOCAL_PATH))
include $(call first-makefiles-under,$(LOCAL_PATH))

endif
