LOCAL_PATH := $(call my-dir)

# Prebuilt com.asus.ime
include $(CLEAR_VARS)
LOCAL_SRC_FILES := AsusKeyboard/AsusKeyboard.apk
LOCAL_MODULE := AsusKeyboard
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_REQUIRED_MODULES := libjni_xt9input
#$(shell mkdir -p $(TARGET_OUT_SHARED_LIBRARIES))
#$(shell cp $(LOCAL_PATH)/AsusKeyboard/lib/x86/libjni_xt9input.so $(TARGET_OUT_SHARED_LIBRARIES))
#
#$(shell mkdir -p $(TARGET_OUT_APPS)/AsusKeyboard/lib/x86)
#$(shell ln -sf ../../../../lib/libjni_xt9input.so $(TARGET_OUT_APPS)/AsusKeyboard/lib/x86/libjni_xt9input.so)
#ALL_DEFAULT_INSTALLED_MODULES += $(TARGET_OUT_APPS)/AsusKeyboard/lib/x86/libjni_xt9input.so
include $(BUILD_PREBUILT)

###############################################################################
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := AsusGallery
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_PATH:=$(PRODUCT_OUT)/system/app
LOCAL_REQUIRED_MODULES:= libgif libjni_face_detection libjni_face_effect libjni_filter_show

include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := AsusGalleryBrust
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_PATH:=$(PRODUCT_OUT)/system/app
LOCAL_REQUIRED_MODULES:= libgifencoder libjni_picbest_static libjni_picclear_static
include $(BUILD_PREBUILT)

###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := AsusFMService
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := OemTelephonyApp
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := AsusBackup
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := MobileManager
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := PCLinkManager
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := AsusInputDevices
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := AsusCalculator
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := SMMI_TEST
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := AsusFMRadio
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := AsusLauncher
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := AsusKeyboard
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := MobileManagerService
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := 3CToolbox
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := PCLinkBinary
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := ASUSBrowser
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := AsusDrawRes
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)
###############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := SARManager
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)
