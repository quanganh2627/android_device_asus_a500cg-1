# autogenerated Android.mk
ifeq ($(TARGET_ARCH),x86)
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_IS_HOST_MODULE:=
LOCAL_MODULE_CLASS:=SHARED_LIBRARIES
LOCAL_MODULE_TAGS:=optional
OVERRIDE_BUILT_MODULE_PATH:=$(PRODUCT_OUT)/obj/lib
LOCAL_UNINSTALLABLE_MODULE:=
LOCAL_SRC_FILES:=target/libActivityInstant.so
LOCAL_BUILT_MODULE_STEM:=libActivityInstant.so
LOCAL_STRIP_MODULE:=
LOCAL_MODULE := libActivityInstant
LOCAL_MODULE_STEM:=libActivityInstant.so
LOCAL_CERTIFICATE:=
LOCAL_MODULE_PATH:=$(PRODUCT_OUT)/system/lib
LOCAL_REQUIRED_MODULES:=
LOCAL_SHARED_LIBRARIES:=
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_COPY_HEADERS:=include/activity.h include/_common.h include/fixpoint.h
LOCAL_COPY_HEADERS_TO:=awarelibs
include $(BUILD_COPY_HEADERS)
endif
