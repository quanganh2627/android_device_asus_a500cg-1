# autogenerated Android.mk
ifeq ($(TARGET_ARCH),x86)
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_IS_HOST_MODULE:=
LOCAL_MODULE_CLASS:=STATIC_LIBRARIES
LOCAL_MODULE_TAGS:=optional
OVERRIDE_BUILT_MODULE_PATH:=
LOCAL_UNINSTALLABLE_MODULE:=true
LOCAL_SRC_FILES:=target/libmamgr-core.a
LOCAL_BUILT_MODULE_STEM:=libmamgr-core.a
LOCAL_STRIP_MODULE:=
LOCAL_MODULE := libmamgr-core
LOCAL_MODULE_STEM:=libmamgr-core.a
LOCAL_CERTIFICATE:=
LOCAL_MODULE_PATH:=
LOCAL_REQUIRED_MODULES:=
LOCAL_SHARED_LIBRARIES:=libstlport libcutils libevent-listener libproperty libinterface-provider libmmgrcli libc libstdc++ libm
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_COPY_HEADERS:=include/ATSenderInterface.h include/ModemAudioManagerInterface.h include/SyncNeederInterface.h include/ModemAudioControllerInterface.h
LOCAL_COPY_HEADERS_TO:=mamgr-interface
include $(BUILD_COPY_HEADERS)

include $(CLEAR_VARS)
LOCAL_COPY_HEADERS:=include/ModemAudioManagerObserver.h
LOCAL_COPY_HEADERS_TO:=mamgr-core
include $(BUILD_COPY_HEADERS)
endif
