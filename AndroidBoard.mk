LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
## If the kernel source is present, AndroidBoard.mk will perform a kernel build.
## otherwise, AndroidBoard.mk will find the kernel binaries in a tarball.
ifneq ($(wildcard $(KERNEL_SRC_DIR)/Makefile),)
TARGET_KERNEL_SOURCE_IS_PRESENT ?= true
endif
# PRODUCT_OUT and HOST_OUT are now defined after BoardConfig is included.
# Add early definition here
PRODUCT_OUT ?= out/target/product/$(TARGET_DEVICE)
HOST_OUT ?= out/host/$(HOST_OS)-$(HOST_PREBUILT_ARCH)

build_kernel: $(PRODUCT_OUT)/kernel
.PHONY: build_kernel
ifeq ($(TARGET_KERNEL_SOURCE_IS_PRESENT),true)
	#Kernel rules (build from source, or from tarball
	#$(call inherit-product, device/asus/a500cg/openssl-prebuilt/Android.mk)
	build_kernel: get_kernel_from_source
else
	build_kernel: get_kernel_from_tarball
endif
include device/asus/a500cg/AndroidKernel.mk

#.PHONY: get_kernel_from_tarball
#get_kernel_from_tarball:
#	tar -xv -C $(PRODUCT_OUT) -f $(TARGET_KERNEL_TARBALL)

bootimage: $(INSTALLED_KERNEL_TARGET) $(INSTALLED_RAMDISK_TARGET)

$(INSTALLED_KERNEL_TARGET): build_kernel
$(INSTALLED_RAMDISK_TARGET): build_kernel
ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)
#-include vendor/intel/tools/PRIVATE/debug_internal_tools/sepdk/src/AndroidSEP.mk
#-include linux/modules/debug_tools/vtunedk/src/pax/AndroidPAX.mk

## Add vtunedk: sep3_xx, vtsspp drivers. PAX driver will be used from sepdk.
#-include linux/modules/debug_tools/vtunedk/src/AndroidSEP.mk
#-include linux/modules/debug_tools/vtunedk/src/vtsspp/AndroidVTSSPP.mk
#-include linux/modules/debug_tools/socwatchdk/src/AndroidSOCWatchDK.mk
#-include linux/modules/debug_tools/powerdk/src/AndroidPowerDK.mk

## Testbox - Only for engineering and userdebug
#ifneq (,$(filter $(TARGET_BUILD_VARIANT),eng userdebug))
#-include linux/modules/PRIVATE/testbox/AndroidTB.mk
#endif
