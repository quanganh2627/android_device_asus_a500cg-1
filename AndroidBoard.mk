## If the kernel source is present, AndroidBoard.mk will perform a kernel build.
## otherwise, AndroidBoard.mk will find the kernel binaries in a tarball.
ifneq ($(wildcard $(KERNEL_SRC_DIR)/Makefile),)
TARGET_KERNEL_SOURCE_IS_PRESENT ?= true
endif

.PHONY: build_kernel
ifeq ($(TARGET_KERNEL_SOURCE_IS_PRESENT),true)
#Kernel rules (build from source, or from tarball
#$(call inherit-product, device/asus/a500cg/openssl-prebuilt/Android.mk)
include device/asus/a500cg/AndroidKernel.mk
build_kernel: get_kernel_from_source
else
build_kernel: get_kernel_from_tarball
endif

.PHONY: get_kernel_from_tarball
get_kernel_from_tarball:
	tar -xv -C $(PRODUCT_OUT) -f $(TARGET_KERNEL_TARBALL)
#
bootimage: $(INSTALLED_KERNEL_TARGET) $(INSTALLED_RAMDISK_TARGET)

$(INSTALLED_KERNEL_TARGET): build_kernel
$(INSTALLED_RAMDISK_TARGET): build_kernel
#for Intel icc
export ANDROID_SYSROOT :=
export ANDROID_GNU_X86_TOOLCHAIN :=
export T := $(gettop)
export ANDROID_SYSROOT := $(T)/prebuilts/ndk/current/platforms/android-21/arch-x86
export ANDROID_GNU_X86_TOOLCHAIN := $(T)/prebuilts/gcc/linux-x86/x86/x86_64-linux-android-4.9

