#
# Copyright (C) 2013 The Android Open-Source Project
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


$(call inherit-product-if-exists, vendor/asus/a500cg/a500cg-vendor.mk)

$(call inherit-product, device/asus/a500cg/intel-boot-tools/Android.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
LOCAL_PATH := device/asus/a500cg

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/asus/a500cg/blobs/bzImage-boot-newDTW
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi


DEVICE_BASE_BOOT_IMAGE := device/asus/a500cg/blobs/boot.img
DEVICE_BASE_RECOVERY_IMAGE := device/asus/a500cg/blobs/recovery-ww-2.20.40.13.img
BOARD_CUSTOM_BOOTIMG_MK := device/asus/a500cg/intel-boot-tools/boot.mk
CUSTOM_SUPERUSER = Superuser

# specific management of audio_policy.conf
PRODUCT_COPY_FILES += \
    device/asus/a500cg/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/asus/a500cg/audio_policy.conf:system/etc/audio_policy.conf

# Intel Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Modules (currently from ASUS)
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/asus/a500cg/ramdisk,root)
#    device/asus/a500cg/ramdisk/lib/modules/apwr3_1.ko:root/lib/modules/apwr3_1.ko \
#    device/asus/a500cg/ramdisk/lib/modules/atomisp-css2300.ko:root/lib/modules/atomisp-css2300.ko \
#    device/asus/a500cg/ramdisk/lib/modules/atomisp-css2400b0_v21.ko:root/lib/modules/atomisp-css2400b0_v21.ko \
#    device/asus/a500cg/ramdisk/lib/modules/atomisp-css2401a0_legacy_v21.ko:root/lib/modules/atomisp-css2401a0_legacy_v21.ko \
#    device/asus/a500cg/ramdisk/lib/modules/atomisp-css2401a0_v21.ko:root/lib/modules/atomisp-css2401a0_v21.ko \
#    device/asus/a500cg/ramdisk/lib/modules/bcm43362.ko:root/lib/modules/bcm43362.ko \
#    device/asus/a500cg/ramdisk/lib/modules/bcm_bt_lpm.ko:root/lib/modules/bcm_bt_lpm.ko \
#    device/asus/a500cg/ramdisk/lib/modules/gc2155.ko:root/lib/modules/gc2155.ko \
#    device/asus/a500cg/ramdisk/lib/modules/hm2056.ko:root/lib/modules/hm2056.ko \
#    device/asus/a500cg/ramdisk/lib/modules/hm2056_raw.ko:root/lib/modules/hm2056_raw.ko \
#    device/asus/a500cg/ramdisk/lib/modules/imx111.ko:root/lib/modules/imx111.ko \
#    device/asus/a500cg/ramdisk/lib/modules/imx219.ko:root/lib/modules/imx219.ko \
#    device/asus/a500cg/ramdisk/lib/modules/lm3554.ko:root/lib/modules/lm3554.ko \
#    device/asus/a500cg/ramdisk/lib/modules/mac80211.ko:root/lib/modules/mac80211.ko \
#    device/asus/a500cg/ramdisk/lib/modules/mn34130.ko:root/lib/modules/mn34130.ko \
#    device/asus/a500cg/ramdisk/lib/modules/modules.alias:root/lib/modules/modules.alias \
#    device/asus/a500cg/ramdisk/lib/modules/modules.alias.bin:root/lib/modules/modules.alias.bin \
#    device/asus/a500cg/ramdisk/lib/modules/modules.builtin.bin:root/lib/modules/modules.builtin.bin \
#    device/asus/a500cg/ramdisk/lib/modules/modules.dep:root/lib/modules/modules.dep \
#    device/asus/a500cg/ramdisk/lib/modules/modules.dep.bin:root/lib/modules/modules.dep.bin \
#    device/asus/a500cg/ramdisk/lib/modules/modules.devname:root/lib/modules/modules.devname \
#    device/asus/a500cg/ramdisk/lib/modules/modules.softdep:root/lib/modules/modules.softdep \
#    device/asus/a500cg/ramdisk/lib/modules/modules.symbols:root/lib/modules/modules.symbols \
#    device/asus/a500cg/ramdisk/lib/modules/modules.symbols.bin:root/lib/modules/modules.symbols.bin \
#    device/asus/a500cg/ramdisk/lib/modules/mt9m114.ko:root/lib/modules/mt9m114.ko \
#    device/asus/a500cg/ramdisk/lib/modules/ov8830.ko:root/lib/modules/ov8830.ko \
#    device/asus/a500cg/ramdisk/lib/modules/pax.ko:root/lib/modules/pax.ko \
#    device/asus/a500cg/ramdisk/lib/modules/pnwdisp.ko:root/lib/modules/pnwdisp.ko \
#    device/asus/a500cg/ramdisk/lib/modules/pvrsgx.ko:root/lib/modules/pvrsgx.ko \
#    device/asus/a500cg/ramdisk/lib/modules/rmi4.ko:root/lib/modules/rmi4.ko \
#    device/asus/a500cg/ramdisk/lib/modules/rt8515.ko:root/lib/modules/rt8515.ko \
#    device/asus/a500cg/ramdisk/lib/modules/sep3_15.ko:root/lib/modules/sep3_15.ko \
#    device/asus/a500cg/ramdisk/lib/modules/st_drv.ko:root/lib/modules/st_drv.ko \
#    device/asus/a500cg/ramdisk/lib/modules/t4k35_180.ko:root/lib/modules/t4k35_180.ko \
#    device/asus/a500cg/ramdisk/lib/modules/t4k35.ko:root/lib/modules/t4k35.ko \
#    device/asus/a500cg/ramdisk/lib/modules/t4k37.ko:root/lib/modules/t4k37.ko \
#    device/asus/a500cg/ramdisk/lib/modules/test_nx.ko:root/lib/modules/test_nx.ko \
#    device/asus/a500cg/ramdisk/lib/modules/texfat.ko:root/lib/modules/texfat.ko \
#    device/asus/a500cg/ramdisk/lib/modules/tntfs.ko:root/lib/modules/tntfs.ko \
#    device/asus/a500cg/ramdisk/lib/modules/videobuf-core.ko:root/lib/modules/videobuf-core.ko \
#    device/asus/a500cg/ramdisk/lib/modules/videobuf-vmalloc.ko:root/lib/modules/videobuf-vmalloc.ko \
#    device/asus/a500cg/ramdisk/lib/modules/vtsspp.ko:root/lib/modules/vtsspp.ko \
#    device/asus/a500cg/ramdisk/lib/prebuild_modules/texfat.ko:root/lib/prebuild_modules/texfat.ko \
#    device/asus/a500cg/ramdisk/lib/prebuild_modules/tntfs.ko:root/lib/prebuild_modules/tntfs.ko


#PRODUCT_COPY_FILES += \
#  device/asus/a500cg/ramdisk/sbin/pclinkd:root/sbin/pclinkd \
#  device/asus/a500cg/ramdisk/sbin/killservices.sh:recovery/root/sbin/killservices.sh \
#  device/asus/a500cg/ramdisk/sbin/intel_prop:root/sbin/intel_prop \
#  device/asus/a500cg/ramdisk/sbin/thermald:root/sbin/thermald \
#    device/asus/a500cg/ramdisk/sbin/healthd:root/sbin/healthd \
#    device/asus/a500cg/ramdisk/charger:root/charger
#    device/asus/a500cg/ramdisk/sbin/adbd:root/sbin/adbd \

#PRODUCT_COPY_FILES += \
#  device/asus/a500cg/ramdisk/local_cfg/platform/init.props:root/local_cfg/platform/init.props \
#  device/asus/a500cg/ramdisk/local_cfg/telephony_config/init.props:root/local_cfg/telephony_config/init.props

# Binary to be replaced with source code ..
PRODUCT_COPY_FILES += \
  device/asus/a500cg/twrp.fstab:recovery/root/etc/twrp.fstab \


# Ramdisk fstab / rc files
#PRODUCT_COPY_FILES += \
#  device/asus/a500cg/ramdisk/config.sh:root/config.sh \
#  device/asus/a500cg/ramdisk/config_init.sh:root/config_init.sh \
#  device/asus/a500cg/ramdisk/fstab:root/fstab \
#  device/asus/a500cg/ramdisk/fstab.charger.redhookbay:root/fstab.charger \
#  device/asus/a500cg/ramdisk/fstab.ramconsole.redhookbay:root/fstab.ramconsole.redhookbay \
#  device/asus/a500cg/ramdisk/fstab.redhookbay:root/fstab.redhookbay \
#  device/asus/a500cg/ramdisk/fstab.zram:root/fstab.zram \
#  device/asus/a500cg/ramdisk/init.a500cg.usb.rc:root/init.a500cg.usb.rc \
#  device/asus/a500cg/ramdisk/init.avc.rc:root/init.avc.rc \
#  device/asus/a500cg/ramdisk/init.bt.rc:root/init.bt.rc \
#  device/asus/a500cg/ramdisk/init.compass.rc:root/init.compass.rc \
#  device/asus/a500cg/ramdisk/init.debug.rc:root/init.debug.rc \
#  device/asus/a500cg/ramdisk/init.diag.rc:root/init.diag.rc \
#  device/asus/a500cg/ramdisk/init.logtool.rc:root/init.logtool.rc \
#  device/asus/a500cg/ramdisk/init.bt.vendor.rc:root/init.bt.vendor.rc \
#  device/asus/a500cg/ramdisk/init.modem.rc:root/init.modem.rc \
#  device/asus/a500cg/ramdisk/init.common.rc:root/init.common.rc \
#  device/asus/a500cg/ramdisk/init.gps.rc:root/init.gps.rc \
#  device/asus/a500cg/ramdisk/init.ksm.rc:root/init.ksm.rc \
#  device/asus/a500cg/ramdisk/init.config_init.rc:root/init.config_init.rc \
#  device/asus/a500cg/ramdisk/intel_prop.cfg:root/intel_prop.cfg \
#  device/asus/a500cg/ramdisk/init.redhookbay.rc:root/init.redhookbay.rc \
#  device/asus/a500cg/ramdisk/init.wifi.rc:root/init.wifi.rc \
#  device/asus/a500cg/ramdisk/init.wifi.vendor.rc:root/init.wifi.vendor.rc \
#  device/asus/a500cg/ramdisk/init.wireless.rc:root/init.wireless.rc \
#  device/asus/a500cg/ramdisk/rfkill_bt.sh:root/rfkill_bt.sh \
#  device/asus/a500cg/ramdisk/init.watchdog.rc:root/init.watchdog.rc \
#  device/asus/a500cg/ramdisk/init.zram.rc:root/init.zram.rc \
#  device/asus/a500cg/ramdisk/init.zygote32.rc:root/init.zygote32.rc \
#  device/asus/a500cg/ramdisk/ueventd.redhookbay.rc:root/ueventd.redhookbay.rc \
#  device/asus/a500cg/ramdisk/init.rc:root/init.rc \
#  device/asus/a500cg/ramdisk/init.cm.rc:root/init.cm.rc \
#  device/asus/a500cg/ramdisk/init.firmware.rc:root/init.firmware.rc \
#  device/asus/a500cg/ramdisk/init.aosp.rc:root/init.aosp.rc

# Wifi
PRODUCT_PACKAGES += \
  libwpa_client \
  hostapd \
  dhcpcd.conf \
  wpa_supplicant \
  wpa_supplicant.conf

# Audio
PRODUCT_PACKAGES += \
  libtinycompress \
  libtinyalsa \
  audio.a2dp.default \
  audio.primary.default \
  audio.r_submix.default \
  audio.usb.default \
  libaudioutils

PRODUCT_PACKAGES += \
  libstagefrighthw \
  libwrs_omxil_core_pvwrapped \
  libOMXVideoDecoderAVC \
  libOMXVideoDecoderH263 \
  libOMXVideoDecoderMPEG4 \
  libOMXVideoDecoderWMV \
  libOMXVideoEncoderAVC \
  libOMXVideoEncoderH263 \
  libOMXVideoEncoderMPEG4 \
  libmixvbp \
  libmixvbp_h264 \
  libmixvbp_mpeg4 \
  libmixvbp_vc1

PRODUCT_COPY_FILES += \
  frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
  frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
  frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
  frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
  frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
  frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.xml \
  frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.gps.xml \
  frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
  frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
  frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
  frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
  frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
  frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
  frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
  frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
  frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
  frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
  frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
  frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
  frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
  frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
  frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
  frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
  frameworks/native/data/etc/android.software.webview.xml:system/etc/permissions/android.software.webview.xml \
  frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml

PRODUCT_PROPERTY_OVERRIDES += \
  ro.sf.lcd_density=320 \
  ro.opengles.version = 131072

PRODUCT_PACKAGES += \
  audio.a2dp.default \
  audio.usb.default \
  audio.r_submix.default \
  audio.usb.default \
  audio.primary.default \


# usb
PRODUCT_PACKAGES += \
  com.android.future.usb.accessory

PRODUCT_PACKAGES += \
  gps_bcm_4752

# Filesystem management tools
PRODUCT_PACKAGES += \
  e2fsck \
  tune2fs \
  resize2fs

PRODUCT_PACKAGES += \
  Stk

# library 
PRODUCT_PACKAGES += \
  libtinyxml \
  minizip \
  openssl \
  pack_intel \
  unpack_intel

PRODUCT_PACKAGES += \
  liboempartitioning_static \
  libcgpt_static \
  libintel_updater \
  update_recovery

PRODUCT_PACKAGES += \
  link_modprobe

PRODUCT_PACKAGES += \
  libart-extension \
  libartd-extension

#Intel-sensors family
PRODUCT_PACKAGES += \
  power.$(TARGET_BOARD_PLATFORM) \
  sensors.$(REF_DEVICE_NAME) \
#  sensorhubd \
#  libsensorhub \
#  sensorhub_client \
  lights.$(REF_DEVICE_NAME) \
  SensorCal

#Touchfilter
PRODUCT_PACKAGES += \
  libeventprocessing
  
#Video Firmware
PRODUCT_PACKAGES += \
  msvdx_fw_mfld_DE2.0.bin \
  topazsc_fw.bin 

#ZenUI set
PRODUCT_PACKAGES += \
  AsusFMService \
  OemTelephonyApp \
  AsusBackup \
  MobileManager \
  PCLinkManager \
  AsusInputDevices \
  AsusCalculator \
  AsusCamera \
  SMMI_TEST \
  AsusFMRadio \
  AsusKeyboard \
  MobileManagerService \
  3CToolbox \
  PCLinkBinary \
  ASUSBrowser \
  AsusDrawRes \
  SARManager

#Libva
PRODUCT_PACKAGES += \
  libva \
  libva-android \
  libva-tpi \
  libva-egl \
  libdrm

PRODUCT_PACKAGES += \
  bcu_cpufreqrel \
  fg_conf

PRODUCT_PACKAGES += \
  thermald \
  libeventprocessing \
  pstore-clean

#ituxd for intel thermal management
ENABLE_ITUXD := true
PRODUCT_PACKAGES += \
  ituxd

DEVICE_PACKAGE_OVERLAYS := \
  device/asus/a500cg/overlay \
  device/asus/a500cg/overlays
  


############################### property ##########################


# Extended JNI checks
# The extended JNI checks will cause the system to run more slowly, but they can spot a variety of nasty bugs
# before they have a chance to cause problems.
# Default=true for development builds, set by android buildsystem.
#PRODUCT_PROPERTY_DEFAULTOVERRIDES += \
#    ro.kernel.android.checkjni=0 \
#    dalvik.vm.checkjni=false

ADDITIONAL_DEFAULT_PROPERTIES += \
  wifi.version.driver=5.90.195.89.38 \
  gps.version.driver=6.19.6.216527 \
  bt.version.driver=V10.00.01 \
  ro.debuggable=1 \
  persist.sys.usb.config=mtp \
  ro.secure=0 \
  ro.adb.secure=0 \
  persist.sys.adb.root=1

PRODUCT_PROPERTY_OVERRIDES += \
  ro.dalvik.vm.isa.arm=x86 \
  ro.enable.native.bridge.exec=1
  
# Set default network type to LTE/GSM/WCDMA (9)
PRODUCT_PROPERTY_OVERRIDES += ro.telephony.default_network=0
# Backup Tool
#ifneq ($(WITH_GMS),true)
PRODUCT_COPY_FILES += \
  vendor/cm/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
  vendor/cm/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
  vendor/cm/prebuilt/common/bin/50-cm.sh:system/addon.d/50-cm.sh \
  vendor/cm/prebuilt/common/bin/blacklist:system/addon.d/blacklist
#endif

# Signature compatibility validation
PRODUCT_COPY_FILES += \
  vendor/cm/prebuilt/common/bin/otasigcheck.sh:install/bin/otasigcheck.sh

# Copy latinime for gesture typing
PRODUCT_COPY_FILES += \
  vendor/cm/prebuilt/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so


# init.d support
PRODUCT_COPY_FILES += \
  vendor/cm/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
  vendor/cm/prebuilt/common/bin/sysinit:system/bin/sysinit

ifneq ($(TARGET_BUILD_VARIANT),user)
# userinit support
PRODUCT_COPY_FILES += \
  vendor/cm/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit
endif

# PitchBlack Theme
PRODUCT_COPY_FILES += \
  vendor/cm/prebuilt/PitchBlack/com.resurrectionremix.pitchblack.apk:system/priv-app/PitchBlack/com.resurrectionremix.pitchblack.apk

# CM-specific init file
PRODUCT_COPY_FILES += \
  vendor/cm/prebuilt/common/etc/init.local.rc:root/init.cm.rc

# Bring in camera effects
PRODUCT_COPY_FILES +=  \
  vendor/cm/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
  vendor/cm/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
  frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Enable wireless Xbox 360 controller support
PRODUCT_COPY_FILES += \
  frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl

# This is CM!
PRODUCT_COPY_FILES += \
  vendor/cm/config/permissions/com.cyanogenmod.android.xml:system/etc/permissions/com.cyanogenmod.android.xml

# T-Mobile theme engine
include vendor/cm/config/themes_common.mk

# Required CM packages
PRODUCT_PACKAGES += \
  Development \
  BluetoothExt \
  Profiles

# Optional CM packages
PRODUCT_PACKAGES += \
  VoicePlus \
  Basic \
  libemoji \
  Terminal

# Custom CM packages
PRODUCT_PACKAGES += \
  Launcher3 \
  Trebuchet \
  AudioFX \
  Eleven \
  CMFileManager \
  LockClock \
  CMAccount \
  CMHome \
  OTACenter
  
# SuperSU
PRODUCT_COPY_FILES += \
  vendor/cm/prebuilt/common/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
  vendor/cm/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

# CM Platform Library
PRODUCT_PACKAGES += \
  org.cyanogenmod.platform-res \
  org.cyanogenmod.platform \
  org.cyanogenmod.platform.xml

# CM Hardware Abstraction Framework
PRODUCT_PACKAGES += \
  org.cyanogenmod.hardware \
  org.cyanogenmod.hardware.xml

# Extra tools in CM
PRODUCT_PACKAGES += \
  libsepol \
  e2fsck \
  mke2fs \
  tune2fs \
  bash \
  nano \
  htop \
  powertop \
  lsof \
  mount.exfat \
  fsck.exfat \
  mkfs.exfat \
  mkfs.f2fs \
  fsck.f2fs \
  fibmap.f2fs \
  ntfsfix \
  ntfs-3g \
  gdbserver \
  micro_bench \
  oprofiled \
  sqlite3 \
  strace

# Openssh
PRODUCT_PACKAGES += \
  scp \
  sftp \
  ssh \
  sshd \
  sshd_config \
  ssh-keygen \
  start-ssh

# rsync
PRODUCT_PACKAGES += \
  rsync

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
  libffmpeg_extractor \
  libffmpeg_omx \
  media_codecs_ffmpeg.xml

PRODUCT_PROPERTY_OVERRIDES += \
  media.sf.omx-plugin=libffmpeg_omx.so \
  media.sf.extractor-plugin=libffmpeg_extractor.so

# These packages are excluded from user builds
ifneq ($(TARGET_BUILD_VARIANT),user)
PRODUCT_PACKAGES += \
  procmem \
  procrank \
  Superuser \
  su
endif

PRODUCT_PROPERTY_OVERRIDES += \
  persist.sys.root_access=1

PRODUCT_PACKAGE_OVERLAYS += vendor/cm/overlay/common


# setup dalvik vm configs.
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)
$(call inherit-product-if-exists, vendor/asus/a500cg/a500cg-vendor-blobs.mk)
$(call inherit-product-if-exists, vendor/google/gapps/gapps.mk)

#$(call inherit-product, device/asus/a500cg/intel-boot-tools/Android.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
