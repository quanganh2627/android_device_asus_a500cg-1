# autogenerated Android.mk
ifeq ($(TARGET_ARCH),x86)
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_IS_HOST_MODULE:=
LOCAL_MODULE_CLASS:=STATIC_LIBRARIES
LOCAL_MODULE_TAGS:=optional
OVERRIDE_BUILT_MODULE_PATH:=
LOCAL_UNINSTALLABLE_MODULE:=true
LOCAL_SRC_FILES:=target/libmorpho_image_stabilizer3.a
LOCAL_BUILT_MODULE_STEM:=libmorpho_image_stabilizer3.a
LOCAL_STRIP_MODULE:=
LOCAL_MODULE := libmorpho_image_stabilizer3
LOCAL_MODULE_STEM:=libmorpho_image_stabilizer3.a
LOCAL_CERTIFICATE:=
LOCAL_MODULE_PATH:=
LOCAL_REQUIRED_MODULES:=
LOCAL_SHARED_LIBRARIES:=
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_COPY_HEADERS:=include/morpho_api.h include/morpho_error.h include/morpho_image_data.h include/morpho_image_stabilizer3.h include/morpho_motion_data.h include/morpho_rect_int.h
LOCAL_COPY_HEADERS_TO:=cameralibs
include $(BUILD_COPY_HEADERS)
endif
