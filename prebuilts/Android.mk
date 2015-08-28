LOCAL_PATH := $(call my-dir)

# Prebuilt com.asus.ime
include $(CLEAR_VARS)
LOCAL_SRC_FILES := AsusKeyboard/AsusKeyboard.apk
LOCAL_MODULE := AsusKeyboard
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED

$(shell mkdir -p $(TARGET_OUT_SHARED_LIBRARIES))
$(shell cp $(LOCAL_PATH)/AsusKeyboard/lib/x86/libjni_xt9input.so $(TARGET_OUT_SHARED_LIBRARIES))

$(shell mkdir -p $(TARGET_OUT_APPS)/AsusKeyboard/lib/x86)
$(shell ln -sf ../../../../lib/libjni_xt9input.so $(TARGET_OUT_APPS)/AsusKeyboard/lib/x86/libjni_xt9input.so)
ALL_DEFAULT_INSTALLED_MODULES += $(TARGET_OUT_APPS)/AsusKeyboard/lib/x86/libjni_xt9input.so
include $(BUILD_PREBUILT)
