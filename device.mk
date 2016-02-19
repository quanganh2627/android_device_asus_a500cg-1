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
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

LOCAL_PATH := device/asus/a500cg

PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_T00F
PRODUCT_DEVICE := a500cg

#ifeq ($(TARGET_PREBUILT_KERNEL),)
#	LOCAL_KERNEL := device/asus/a500cg/blobs/bzImage-boot-newDTW
#else
#	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#endif
#PRODUCT_COPY_FILES += \
#    $(LOCAL_KERNEL):kernel

#TARGET_RECOVERY_PREBUILT_KERNEL := $(LOCAL_KERNEL)


# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi


CUSTOM_SUPERUSER = SuperSu

# specific management of audio_policy.conf
PRODUCT_COPY_FILES += \
    device/asus/a500cg/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/asus/a500cg/audio_policy.conf:system/etc/audio_policy.conf \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# specific management of lto
PRODUCT_COPY_FILES += \
    device/asus/a500cg/config_lto.sh:system/etc/init.d/01config_lto

# Intel Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320

# Modules (currently from ASUS)
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/asus/a500cg/ramdisk,root)

# Binary to be replaced with source code ..
PRODUCT_COPY_FILES += \
  device/asus/a500cg/twrp.fstab:recovery/root/etc/twrp.fstab

# Wifi
PRODUCT_PACKAGES += \
  libwpa_client \
  hostapd \
  dhcpcd.conf \
  wpa_supplicant \
  wpa_supplicant.conf \
  libwifi-hal-bcm \
  lib_driver_cmd_bcmdhd \
  iw

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
  frameworks/native/data/etc/android.hardware.sensor.ambient_temperature.xml:system/etc/permissions/android.hardware.sensor.ambient_temperature.xml \
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
  frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
  frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml \
  frameworks/native/data/etc/android.software.backup.xml:system/etc/permissions/android.software.backup.xml \
  frameworks/native/data/etc/android.software.webview.xml:system/etc/permissions/android.software.webview.xml \
  frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml

PRODUCT_COPY_FILES += \
  $(call find-copy-subdir-files,*,device/asus/a500cg/include,obj/include)

#GPS FIX
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gpsd:system/bin/gpsd

PRODUCT_PROPERTY_OVERRIDES += \
  ro.sf.lcd_density=320 \
  ro.opengles.version = 131072

PRODUCT_PACKAGES += \
  audio.a2dp.default \
  audio.usb.default \
  audio.r_submix.default \
  audio.usb.default \
  audio.primary.default \

PRODUCT_PACKAGES += \
  libhoudini \
  houdini \
  arm_dyn \
  arm_exe
#include vendor/intel/houdini/houdini.mk
# usb
PRODUCT_PACKAGES += \
  com.android.future.usb.accessory

COMBO_CHIP_VENDOR := bcm
PRODUCT_PACKAGES += \
  gps_bcm_4752 \
  libflpso_proxy \
  libflpso \
  flp.a500cg \
  gpsd \
  wifi_bcm_4330 \
  bt_bcm4330 \
  gps.default \
  gps.$(TARGET_DEVICE)

#GPS link to this static lib
PRODUCT_PACKAGES += \
  libCpd

# Keyhandler
PRODUCT_PACKAGES += \
    com.cyanogenmod.keyhandler \
    CMActions

# Filesystem management tools
PRODUCT_PACKAGES += \
  e2fsck \
  tune2fs \
  resize2fs

PRODUCT_PACKAGES += \
  Stk

PRODUCT_PACKAGES += \
  libmultidisplay \
  libmultidisplayjni \
  com.intel.multidisplay.xml

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
#include vendor/intel/art-extension/Android.mk

#Intel-sensors family
PRODUCT_PACKAGES += \
  gps.a500cg

#Intel-sensors family
PRODUCT_PACKAGES += \
  libhealthd.intel \

PRODUCT_PACKAGES += \
  sensors.a500cg \
  libaccelerometersimplecalibration
#include vendor/intel/hardware/sensors/Android.mk

PRODUCT_PACKAGES += \
  lights.a500cg
#include vendor/intel/hardware/liblights/Android.mk

PRODUCT_PACKAGES += \
  power.clovertrail
#include hardware/intel/clovertrail/power/Android.mk


# libcamera2
PRODUCT_PACKAGES += \
  camera.$(TARGET_DEVICE)

# lib audio.codec.offload
#PRODUCT_PACKAGES += \
#  audio.codec_offload.$(TARGET_DEVICE)

#Touchfilter
PRODUCT_PACKAGES += \
  libeventprocessing

PRODUCT_PACKAGES += \
  libgesture \
  libActivityInstant

#ZenUI set
PRODUCT_PACKAGES += \
  AsusKeyboard \
  libjni_xt9input \
  AsusFMService \
  OemTelephonyApp \
  AsusBackup \
  ASUSGalleryBurst \
  libjni_picbest_static \
  libjni_piclear_static \
  libgifencoder \
  3CToolbox \
  PCLinkManager \
  AsusInputDevices \
  AsusCalculator \
  AsusCamera \
  ASUSGallery \
  libjni_face_effect \
  libgif \
  libjni_face_detection \
  libjni_filter_show \
  SepService \
  SMMI_TEST \
  AsusFMRadio \
  AsusLauncher \
  libkcmutil \
  ICEsoundService \
  PCLinkBinary \
  ASUSBrowser \
  SensorCal \
  AsusDrawRes \
  MyASUS \
  libBaiduMapSDK_v2_4_1 \
  libbdpush_V2_2 \
  CWSClientService \
  SARManager \
  ZenUIHelp \
  AsusZenUIServices \

#ituxd for intel thermal management
ENABLE_ITUXD := true
PRODUCT_PACKAGES += \
  ituxd

# sbin/thermald
PRODUCT_PACKAGES += \
  thermald

PRODUCT_PACKAGES += \
  libproperty

#Port App Screencast/ Nameless Rom
PRODUCT_PACKAGES += \
  Screencast

PRODUCT_PACKAGES += \
	libmorpho_image_stabilizer3 \
	libtbd \
	libtbd \
	drvtool \
	tbdtool \
	telephony_scalability.xml \
	libtcs \
	libtcs \
	CC6_ALL_BASIC_LIB \
	CC6_UMIP_ACCESS \
	libsepdrm \
	libsepdrm \
	libsecurity_api \
	libdiskkeyencrypt \
	libsecurity_api \
	libsecurity_sectoken \
	libsecurity_sectoken \
	libmiscutils \
	mediasdk_release_notes.pdf \
	libmfxhw32 \
	libmfx_omx_core \
	libmfx_omx_components_hw \
	libgabi++-mfx \
	libstlport-mfx \
	libmfx_mix_h264ve \
	libstagefrighthw \
	libjpegdec \
	libjpeg_hw \
	testjpegdec \
	libva_videoencoder \
	libintelmetadatabuffer \
	libva_videodecoder \
	libpvr2d \
	libasfparser \
	libmixvbp \
	libmixvbp_mpeg4 \
	libmixvbp_h264 \
	libmixvbp_h264secure \
	libmixvbp_vc1 \
	libmixvbp_vp8 \
	libia_redeye \
	libia_ipf_engines \
	libia_ipf \
	libia_ipf_pipes \
	libia_coordinate \
	libpasses_host \
	libpasses \
	libmetadata_api_host \
	libmetadata_api \
	libreflection_module_host \
	libreflection_module \
	libLLVMVectorizer_host \
	libLLVMVectorizer \
	libname_mangle_host \
	libname_mangle \
	libaudioresample_static_host \
	libaudioresample \
	libsharedbuffer \
	libhw-audience-manager \
	libaudience-manager-base \
	remote-process_host \
	remote-process \
	liblpe \
	libxmlserializer_host \
	libxmlserializer \
	libremote-processor_host \
	libremote-processor \
	libparameter_host \
	libparameter_includes_host \
	libparameter \
	libparameter_includes \
	libproperty-subsystem \
	liblpe-subsystem \
	libutility_host \
	libutility \
	test-platform_host \
	test-platform \
	libmamgr-core \
	widi.conf \
	libwidimedia \
	libwidiuibc \
	WidiInputService \
	libwidiuibcjni \
	widi \
	widisink_support \
	libwidiclient \
	libwidiservice \
	libwidirtsp \
	libwidirtspsink \
	libwidirtspsink_jni \
	libhwcwidi \
	psh.bin \
	psh_bk.bin \
	fwupdatetool \
	fwupdate_script.sh \
	libstagefright_soft_aacdec_mdp \
	libstagefright_soft_mp3dec_mdp \
	lib_stagefright_mdp_wmadec \
	lib_stagefright_mdp_amrnbdec \
	libmc_amrcommon \
	lib_stagefright_mdp_vp8dec \
	lib_stagefright_mdp_aacdec \
	lib_stagefright_mdp_mp3dec \
	lib_stagefright_mdp_amrnbenc \
	lib_stagefright_mdp_amrwbdec \
	lib_stagefright_mdp_vorbisdec \
	lib_stagefright_mdp_aacenc \
	lib_stagefright_mdp_amrwbenc \
	libmc_core \
	libmc_codec_common \
	libmc_mp3_dec \
	libmc_aac_dec \
	libmc_aac_enc \
	libmc_gsmamr \
	libmc_amrwb \
	libmc_vorbis_dec \
	libmc_wma_dec \
	libmc_vp8_dec \
	com.intel.android.meta \
	libjni_eglfence2 \
	libjni_filtershow_filters2 \
	locationengine-api \
	libBestGroupPhoto \
	libvideoeditorsharing_core \
	libvideoeditorsharing_osal \
	libvideoeditorsharing_videofilters \
	libvideoeditorsharing_jni \
	libvideoeditorsharingplayer \
	libia_face_jni \
	com.intel.android.gallery3d.common2 \
	libgesture \
	libActivityInstant \
	com.intel.aware.csp.provider \
	com.intel.aware.csp.datalooper \
	jansson \
	libpluginapi \
	libawarehubservice \
	libandroidsupport \
	libcsdk \
	cacservice-x86 \
	libclientapi \
	libcu \
	libcfcommon \
	libcac \
	libconfigurationmanager \
	libjnitypesconversion \
	libxsde \
	CsmClient \
	CWSClientService \
	CwsServiceMgr \
	CWS_SERVICE_MANAGER
$(call inherit-product-if-exists,  prebuilts/intel-prebuilt/Android.mk)
# OemTelephony for OEM HOOK API
PRODUCT_PACKAGES += \
    OemTelephonyApp \
#    com.intel.internal.telephony.MmgrClient

PRODUCT_PACKAGE_OVERLAYS := \
  device/intel/common/overlays_extensions

DEVICE_PACKAGE_OVERLAYS := \
  device/asus/a500cg/overlay

#libenc
PRODUCT_PACKAGES += \
  libenc

#Skia
PRODUCT_PACKAGES += \
  libI420colorconvert \
  libasfextractor \
  libskia_ext \

#ISV
PRODUCT_PACKAGES += \
  libisv_omx_core

#Intel mult-thread
PRODUCT_PACKAGES += \
  libthreadedsource

#Video editor
PRODUCT_PACKAGES += \
  libvavideodecoder \
  libvideoeditor_stagefrightshells_intel \
  liblvpp_intel \
  libvss_intel

#Intel Jpeg
PRODUCT_PACKAGES += \
  libjpeg-turbo \
  libjpeg-turbo-static

#Intel sensorhub
PRODUCT_PACKAGES += \
  sensorhubd \
  libsensorhub  \
  sensorhub_client \
  calibration \
  event_notification

#libstagefrighthw
PRODUCT_PACKAGES += \
  libstagefrighthw

#libaudio_hal
PRODUCT_PACKAGES += \
  libactive_value_set \
  active_value_set_host \
  libkeyvaluepairs \
  libkeyvaluepairs_host \
  libstream_static_host \
  libstream_static \
  libparametermgr_static_host \
  libparametermgr_static \
  libhalaudiodump \
  libhalaudiodump_host \
  libaudioplatformstate \
  route_criteria.conf \
  audio.routemanager \
  audio.routemanager.includes \
  libsamplespec_static_host \
  libsamplespec_static \
  audio_policy.$(TARGET_DEVICE) \
  libaudioconversion_static_host \
  libaudioconversion_static \
  liblpepreprocessing \
  liblpepreprocessinghelper \
  liblpepreprocessinghelper_host \
  audio_hal_configurable \
  audio.primary.$(TARGET_DEVICE) \
  libaudio_stream_manager_static_host \
  libaudiohw_intel \
  libaudiohw_intel_host

#libenc
#PRODUCT_PACKAGES += \
#  libfmrx \
#  fmreceiverif \
#  com.ti.fm.fmreceiverif.xml

# Turn on genarate changelog om repo
MAKE_CHANGELOG := true

############################### property ##########################


# Extended JNI checks
# The extended JNI checks will cause the system to run more slowly, but they can spot a variety of nasty bugs
# before they have a chance to cause problems.
# Default=true for development builds, set by android buildsystem.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    dalvik.vm.checkjni=false

ADDITIONAL_DEFAULT_PROPERTIES += \
  ro.debuggable=1 \
  persist.sys.usb.config=mtp \
  ro.secure=0 \
  ro.adb.secure=0 \
  persist.sys.adb.root=1 \
  persist.sys.root_access=3
  wifi.version.driver=5.90.195.89.38 \
  gps.version.driver=6.19.6.216527 \
  bt.version.driver=V10.00.01 \
  ro.epad.mount_point.microsd=/storage/MicroSD

PRODUCT_PROPERTY_OVERRIDES += \
  ro.dalvik.vm.isa.arm=x86 \
  ro.enable.native.bridge.exec=1

# set USB OTG enabled to add support for USB storage type
PRODUCT_PROPERTY_OVERRIDES += persist.sys.isUsbOtgEnabled=1

# Set default network type to LTE/GSM/WCDMA (9)
PRODUCT_PROPERTY_OVERRIDES += ro.telephony.default_network=0


# setup dalvik vm configs.
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)
#$(call inherit-product-if-exists, vendor/asus/a500cg/a500cg-vendor-blobs.mk)
#$(call inherit-product-if-exists, vendor/google/gapps/gapps.mk)

