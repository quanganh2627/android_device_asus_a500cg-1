LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_IS_HOST_MODULE := true
LOCAL_SRC_FILES := $(LOCAL_PATH)/pack.c
LOCAL_CFLAGS += -I/usr/include/
LOCAL_MODULE := pack_intel
LOCAL_MODULE_TAGS := optional
include $(call include-if-build-from-source,Makefile,$(LOCAL_MODULE),$(LOCAL_PATH))
include $(BUILD_HOST_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_IS_HOST_MODULE := true
LOCAL_SRC_FILES := $(LOCAL_PATH)/unpack.c
LOCAL_CFLAGS += -I/usr/include/
LOCAL_MODULE := unpack_intel
LOCAL_MODULE_TAGS := optional
include $(call include-if-build-from-source,Makefile,$(LOCAL_MODULE),$(LOCAL_PATH))

include $(BUILD_HOST_EXECUTABLE)
$(call dist-for-goals,dist_files,$(LOCAL_BUILT_MODULE))
include $(call-all-makefiles-under,$(LOCAL_PATH))
