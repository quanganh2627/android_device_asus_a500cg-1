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


#$(call inherit-product-if-exists, vendor/asus/a500cg/a500cg-vendor.mk)

$(call inherit-product, device/asus/a500cg/intel-boot-tools/Android.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
# Inherit common CM stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)


LOCAL_PATH := device/asus/a500cg

PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_T00F
PRODUCT_DEVICE := a500cg

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/asus/a500cg/blobs/bzImage-boot-newDTW
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
    
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
    device/asus/a500cg/audio_policy.conf:system/etc/audio_policy.conf

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
  device/asus/a500cg/configs/platform.xml:system/etc/permissions/platform.xml \
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

PRODUCT_COPY_FILES += \
  $(call find-copy-subdir-files,*,device/asus/a500cg/include,obj/include)

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
include vendor/intel/houdini/houdini.mk
# usb
PRODUCT_PACKAGES += \
  com.android.future.usb.accessory

PRODUCT_PACKAGES += \
  gps_bcm_4752

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
  libhealthd.intel \

PRODUCT_PACKAGES += \
  sensors.a500cg
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
  AsusBackup \
  PCLinkManager \
  AsusCalculator \
  AsusCamera \
  SMMI_TEST \
  AsusFMRadio \
  AsusFMService \
  AsusKeyboard \
  3CToolbox \
  PCLinkBinary \
  ASUSBrowser \
  AsusDrawRes \
  ASUSGallery \
  ASUSGalleryBurst \
  AsusKeyboard \
  OemTelephonyApp \
  SARManager

#ituxd for intel thermal management
ENABLE_ITUXD := true
PRODUCT_PACKAGES += \
  ituxd
  
# sbin/thermald
PRODUCT_PACKAGES += \
  thermald

PRODUCT_PACKAGES += \
  libproperty
  
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
	CWS_SERVICE_MANAGER \
  
# OemTelephony for OEM HOOK API
PRODUCT_PACKAGES += \
    OemTelephonyApp

DEVICE_PACKAGE_OVERLAYS := \
  device/asus/a500cg/overlay
  


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
  persist.sys.root_access=3

PRODUCT_PROPERTY_OVERRIDES += \
  ro.dalvik.vm.isa.arm=x86 \
  ro.enable.native.bridge.exec=1
  
DEX2OAT_TARGET_INSTRUCTION_SET_FEATURES := ssse3 movbe
ADDITIONAL_DEFAULT_PROPERTIES += dalvik.vm.isa.x86.features=ssse3,movbe 
  
# set USB OTG enabled to add support for USB storage type
PRODUCT_PROPERTY_OVERRIDES += persist.sys.isUsbOtgEnabled=1

# Set default network type to LTE/GSM/WCDMA (9)
PRODUCT_PROPERTY_OVERRIDES += ro.telephony.default_network=0
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
#PRODUCT_COPY_FILES += \
#    vendor/cm/prebuilt/PitchBlack/com.resurrectionremix.pitchblack.apk:system/priv-app/PitchBlack/com.resurrectionremix.pitchblack.apk

# KernelAdiutor
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/KernelAdiutor/KernelAdiutor.apk:system/priv-app/KernelAdiutor/KernelAdiutor.apk

# CM-specific init file
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/etc/init.local.rc:root/init.cm.rc

# Bring in camera effects
PRODUCT_COPY_FILES +=  \
    vendor/cm/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/cm/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Copy over added mimetype supported in libcore.net.MimeUtils
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/lib/content-types.properties:system/lib/content-types.properties

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
    OTACenter \
    OmniSwitch \
    CMSettingsProvider

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

#PRODUCT_PROPERTY_OVERRIDES += \
#    media.sf.omx-plugin=libffmpeg_omx.so \
#    media.sf.extractor-plugin=libffmpeg_extractor.so

# These packages are excluded from user builds
ifneq ($(TARGET_BUILD_VARIANT),user)
PRODUCT_PACKAGES += \
    procmem \
    procrank \
    Superuser \
    su
endif

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.root_access=3

PRODUCT_PACKAGE_OVERLAYS += vendor/cm/overlay/common

PRODUCT_VERSION_MAJOR = 12
PRODUCT_VERSION_MINOR = 1
PRODUCT_VERSION_MAINTENANCE = 0-RC0

# Set CM_BUILDTYPE from the env RELEASE_TYPE, for jenkins compat

ifndef CM_BUILDTYPE
    ifdef RELEASE_TYPE
        # Starting with "CM_" is optional
        RELEASE_TYPE := $(shell echo $(RELEASE_TYPE) | sed -e 's|^RR_||g')
        CM_BUILDTYPE := $(RELEASE_TYPE)
    endif
endif

# Filter out random types, so it'll reset to UNOFFICIAL
ifeq ($(filter RELEASE NIGHTLY SNAPSHOT EXPERIMENTAL,$(CM_BUILDTYPE)),)
    CM_BUILDTYPE :=
endif

ifdef CM_BUILDTYPE
    ifneq ($(CM_BUILDTYPE), SNAPSHOT)
        ifdef CM_EXTRAVERSION
            # Force build type to EXPERIMENTAL
            CM_BUILDTYPE := EXPERIMENTAL
            # Remove leading dash from CM_EXTRAVERSION
            CM_EXTRAVERSION := $(shell echo $(CM_EXTRAVERSION) | sed 's/-//')
            # Add leading dash to CM_EXTRAVERSION
            CM_EXTRAVERSION := -$(CM_EXTRAVERSION)
        endif
    else
        ifndef CM_EXTRAVERSION
            # Force build type to EXPERIMENTAL, SNAPSHOT mandates a tag
            CM_BUILDTYPE := EXPERIMENTAL
        else
            # Remove leading dash from CM_EXTRAVERSION
            CM_EXTRAVERSION := $(shell echo $(CM_EXTRAVERSION) | sed 's/-//')
            # Add leading dash to CM_EXTRAVERSION
            CM_EXTRAVERSION := -$(CM_EXTRAVERSION)
        endif
    endif
else
    # OFFICIAL Version Release of RR
    CM_BUILDTYPE := Resurrection-Remix-LP-v5.5.6
    CM_EXTRAVERSION :=
endif

ifeq ($(CM_BUILDTYPE), UNOFFICIAL)
    ifneq ($(TARGET_UNOFFICIAL_BUILD_ID),)
        CM_EXTRAVERSION := -$(TARGET_UNOFFICIAL_BUILD_ID)
    endif
endif


PRODUCT_PROPERTY_OVERRIDES += \
  ro.rr.version=$(CM_BUILD) \
  ro.rr_modversion=$(CM_BUILDTYPE) \
  ro.resurrection.version=Resurrection-Remix-LP-5.0-$(shell date -u +%Y%m%d) \
  ro.cmlegal.url=https://cyngn.com/legal/privacy-policy \
  rr.ota.version= $(shell date -u +%Y%m%d)

# by default, do not update the recovery with system updates
PRODUCT_PROPERTY_OVERRIDES += persist.sys.recovery_update=false

ifndef CM_PLATFORM_SDK_VERSION
  # This is the canonical definition of the SDK version, which defines
  # the set of APIs and functionality available in the platform.  It
  # is a single integer that increases monotonically as updates to
  # the SDK are released.  It should only be incremented when the APIs for
  # the new release are frozen (so that developers don't write apps against
  # intermediate builds).
  CM_PLATFORM_SDK_VERSION := 3
endif

ifndef CM_PLATFORM_REV
  # For internal SDK revisions that are hotfixed/patched
  # Reset after each CM_PLATFORM_SDK_VERSION release
  # If you are doing a release and this is NOT 0, you are almost certainly doing it wrong
  CM_PLATFORM_REV := 0
endif

PRODUCT_PROPERTY_OVERRIDES += \
  ro.cm.display.version=$(CM_DISPLAY_VERSION)

# CyanogenMod Platform SDK Version
PRODUCT_PROPERTY_OVERRIDES += \
  ro.cm.build.version.plat.sdk=$(CM_PLATFORM_SDK_VERSION)

# CyanogenMod Platform Internal
PRODUCT_PROPERTY_OVERRIDES += \
  ro.cm.build.version.plat.rev=$(CM_PLATFORM_REV)

PRODUCT_PACKAGE_OVERLAYS += vendor/cm/overlay/common


# setup dalvik vm configs.
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)
$(call inherit-product-if-exists, vendor/asus/a500cg/a500cg-vendor-blobs.mk)
#$(call inherit-product-if-exists, vendor/google/gapps/gapps.mk)

