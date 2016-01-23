LOCAL_PATH := $(call my-dir)

# Prebuilt com.asus.ime
include $(CLEAR_VARS)
LOCAL_MODULE_OWNER := asus
LOCAL_MODULE := AsusKeyboard
LOCAL_SRC_FILES := $(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_PATH:=$(TARGET_OUT_APPS_PRIVILEGED)
LOCAL_PRIVILEGED_MODULE := true
LOCAL_SHARED_LIBRARIES := libjni_xt9input
LOCAL_REQUIRED_MODULES := libjni_xt9input
$(shell mkdir -p $(TARGET_OUT_SHARED_LIBRARIES))
$(shell cp $(LOCAL_PATH)/AsusKeyboard/lib/x86/libjni_xt9input.so $(TARGET_OUT_SHARED_LIBRARIES))

$(shell mkdir -p $(TARGET_OUT_APPS_PRIVILEGED)/AsusKeyboard/lib/x86)
$(shell ln -sf ../../../../lib/libjni_xt9input.so $(TARGET_OUT_APPS_PRIVILEGED)/AsusKeyboard/lib/x86/libjni_xt9input.so)
ALL_DEFAULT_INSTALLED_MODULES += $(TARGET_OUT_APPS_PRIVILEGED)/AsusKeyboard/lib/x86/libjni_xt9input.so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS:=optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := AsusKeyboard/lib/x86/libjni_xt9input.so
LOCAL_MODULE := libjni_xt9input
LOCAL_MODULE_STEM := libjni_xt9input.so
include $(BUILD_PREBUILT)
#
#
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := AsusFMService
LOCAL_MODULE_OWNER := asus
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := AsusFMService/AsusFMService.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_PATH:=$(TARGET_OUT_APPS_PRIVILEGED)
LOCAL_PRIVILEGED_MODULE := true

include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := OemTelephonyApp
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := OemTelephonyApp/OemTelephonyApp.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_PATH:=$(TARGET_OUT_APPS_PRIVILEGED)
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)

include $(BUILD_PREBUILT)
###############################################################################
#include $(CLEAR_VARS)
#
#LOCAL_MODULE := AsusBackup
#LOCAL_MODULE_TAGS := optional
#LOCAL_SRC_FILES := AsusBackup/AsusBackup.apk
#LOCAL_MODULE_CLASS := APPS
#LOCAL_MODULE_PATH := $(TARGET_OUT_APPS_PRIVILEGED)
#LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
#LOCAL_CERTIFICATE := PRESIGNED
#
#include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := ASUSGalleryBurst
LOCAL_MODULE_OWNER := asus
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ASUSGalleryBurst/ASUSGalleryBurst.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_PATH:=$(TARGET_OUT_APPS_PRIVILEGED)
LOCAL_PRIVILEGED_MODULE := true
LOCAL_REQUIRED_MODULES := libjni_picbest_static libjni_piclear_static libgifencoder

include $(BUILD_PREBUILT)
#Dependencies libs
include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS:=optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := ASUSGalleryBurst/lib/x86/libjni_picbest_static.so
LOCAL_MODULE := libjni_picbest_static
LOCAL_MODULE_STEM := libjni_picbest_static.so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS:=optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := ASUSGalleryBurst/lib/x86/libjni_piclear_static.so
LOCAL_MODULE := libjni_piclear_static
LOCAL_MODULE_STEM := libjni_piclear_static.so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS:=optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := ASUSGalleryBurst/lib/x86/libgifencoder.so
LOCAL_MODULE := libgifencoder
LOCAL_MODULE_STEM := libgifencoder.so
include $(BUILD_PREBUILT)

###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := 3CToolbox
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := 3CToolbox/3CToolbox.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_PATH := $(TARGET_OUT_APPS)
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := PCLinkManager
LOCAL_MODULE_OWNER := asus
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := PCLinkManager/PCLinkManager.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_PATH:=$(TARGET_OUT_APPS_PRIVILEGED)
LOCAL_PRIVILEGED_MODULE := true

include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := AsusInputDevices
LOCAL_MODULE_OWNER := asus
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := AsusInputDevices/AsusInputDevices.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_PATH:=$(TARGET_OUT_APPS_PRIVILEGED)
LOCAL_PRIVILEGED_MODULE := true

include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := AsusCalculator
LOCAL_MODULE_OWNER := asus
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := AsusCalculator/AsusCalculator.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_PATH:=$(TARGET_OUT_APPS_PRIVILEGED)
LOCAL_PRIVILEGED_MODULE := true

include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := AsusCamera
LOCAL_MODULE_OWNER := asus
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := AsusCamera/AsusCamera.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_PATH:=$(TARGET_OUT_APPS_PRIVILEGED)
LOCAL_PRIVILEGED_MODULE := true

include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := ASUSGallery
LOCAL_MODULE_OWNER := asus
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ASUSGallery/ASUSGallery.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_PATH:=$(TARGET_OUT_APPS_PRIVILEGED)
LOCAL_PRIVILEGED_MODULE := true
LOCAL_REQUIRED_MODULES := libjni_face_effect libgif libjni_face_detection libjni_filter_show

include $(BUILD_PREBUILT)
#Dependencies libs
include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS:=optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := ASUSGallery/lib/x86/libjni_face_effect.so
LOCAL_MODULE := libjni_face_effect
LOCAL_MODULE_STEM := libjni_face_effect.so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS:=optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := ASUSGallery/lib/x86/libgif.so
LOCAL_MODULE := libgif
LOCAL_MODULE_STEM := libgif.so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS:=optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := ASUSGallery/lib/x86/libjni_face_detection.so
LOCAL_MODULE := libjni_face_detection
LOCAL_MODULE_STEM := libjni_face_detection.so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS:=optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := ASUSGallery/lib/x86/libjni_filter_show.so
LOCAL_MODULE := libjni_filter_show
LOCAL_MODULE_STEM := libjni_filter_show.so
include $(BUILD_PREBUILT)

###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := SepService
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := SepService/SepService/SepService.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_PATH := $(TARGET_OUT_APPS)
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)
###############################################################################
#include $(CLEAR_VARS)
#
#LOCAL_MODULE := ZooperWidget
#LOCAL_MODULE_TAGS := optional
#LOCAL_SRC_FILES := ZooperWidget/ZooperWidget.apk
#LOCAL_MODULE_CLASS := APPS
#LOCAL_MODULE_PATH := $(TARGET_OUT_APPS)
#LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
#LOCAL_CERTIFICATE := PRESIGNED
#
#include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := SMMI_TEST
LOCAL_MODULE_OWNER := asus
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := SMMI_TEST/SMMI_TEST.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_PATH := $(TARGET_OUT_APPS)
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := AsusFMRadio
LOCAL_MODULE_OWNER := asus
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := AsusFMRadio/AsusFMRadio.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_PATH:=$(TARGET_OUT_APPS_PRIVILEGED)
LOCAL_PRIVILEGED_MODULE := true

include $(BUILD_PREBUILT)
###############################################################################
#include $(CLEAR_VARS)
#
#LOCAL_MODULE := AsusLauncher
#LOCAL_MODULE_TAGS := optional
#LOCAL_SRC_FILES := AsusLauncher/AsusLauncher.apk
#LOCAL_MODULE_CLASS := APPS
#LOCAL_MODULE_PATH := $(TARGET_OUT_APPS)
#LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
#LOCAL_CERTIFICATE := PRESIGNED
#LOCAL_REQUIRED_MODULES := libkcmutil
#
#include $(BUILD_PREBUILT)
#Dependencies libs
#include $(CLEAR_VARS)
#LOCAL_MODULE_CLASS := SHARED_LIBRARIES
#LOCAL_MODULE_TAGS:=optional
#LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/arm
#LOCAL_SRC_FILES := AsusLauncher/lib/arm/libkcmutil.so
#LOCAL_MODULE := libkcmutil
#LOCAL_MODULE_STEM := libkcmutil.so
#include $(BUILD_PREBUILT)

###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := ICEsoundService
LOCAL_MODULE_OWNER := asus
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ICEsoundService/ICEsoundService.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_PATH := $(TARGET_OUT_APPS)
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := PCLinkBinary
LOCAL_MODULE_OWNER := asus
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := PCLinkBinary/PCLinkBinary.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_PATH:=$(TARGET_OUT_APPS_PRIVILEGED)
LOCAL_PRIVILEGED_MODULE := true

include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := ASUSBrowser
LOCAL_MODULE_OWNER := asus
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ASUSBrowser/ASUSBrowser.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_PATH:=$(TARGET_OUT_APPS_PRIVILEGED)
LOCAL_PRIVILEGED_MODULE := true

include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := SensorCal
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := SensorCal/SensorCal.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_PATH := $(TARGET_OUT_APPS)
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := AsusDrawRes
LOCAL_MODULE_OWNER := asus
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := AsusDrawRes/AsusDrawRes.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_PATH := $(TARGET_OUT_APPS)
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)
###############################################################################
#include $(CLEAR_VARS)
#
#LOCAL_MODULE := Themer
#LOCAL_MODULE_TAGS := optional
#LOCAL_SRC_FILES := Themer/Themer.apk
#LOCAL_MODULE_CLASS := APPS
#LOCAL_MODULE_PATH := $(TARGET_OUT_APPS)
#LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
#LOCAL_CERTIFICATE := PRESIGNED
#
#include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := MyASUS
LOCAL_MODULE_OWNER := asus
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := MyASUS/MyASUS.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_PATH := $(TARGET_OUT_APPS)
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_REQUIRED_MODULES := libBaiduMapSDK_v2_4_1 libbdpush_V2_2

include $(BUILD_PREBUILT)
#Dependencies libs
include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS:=optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/arm
LOCAL_SRC_FILES := MyASUS/lib/arm/libBaiduMapSDK_v2_4_1.so
LOCAL_MODULE := libBaiduMapSDK_v2_4_1
LOCAL_MODULE_STEM := libBaiduMapSDK_v2_4_1.so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS:=optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/arm
LOCAL_SRC_FILES := MyASUS/lib/arm/libbdpush_V2_2.so
LOCAL_MODULE := libbdpush_V2_2
LOCAL_MODULE_STEM := libbdpush_V2_2.so
include $(BUILD_PREBUILT)

###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := CWSClientService
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := CWSClientService/CWSClientService/CWSClientService.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_PATH := $(TARGET_OUT_APPS)
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := SARManager
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := SARManager/SARManager/SARManager.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_PATH := $(TARGET_OUT_APPS)
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := ZenUIHelp
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ZenUIHelp/ZenUIHelp.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_PATH := $(TARGET_OUT_APPS)
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := AsusZenUIServices
LOCAL_MODULE_OWNER := asus
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := AsusZenUIServices/AsusZenUIServices.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_PATH:=$(TARGET_OUT_APPS_PRIVILEGED)
LOCAL_PRIVILEGED_MODULE := true

include $(BUILD_PREBUILT)

