
COMMON_PATH := device/intel/common
SUPPORT_PATH := vendor/intel/support
#include $(COMMON_PATH)/BoardConfig.mk

LOCAL_PATH := device/asus/a500cg

BOARD_CREATE_MODPROBE_SYMLINK := true
TARGET_DEVICE_KERNEL_HEADERS := device/asus/a500cg/kernel-headers
TARGET_BOARD_KERNEL_HEADERS := $(COMMON_PATH)/kernel-headers
TARGET_SPECIFIC_HEADER_PATH := device/asus/a500cg/include
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_ARCH := x86
TARGET_ARCH_VARIANT := x86-atom
TARGET_CPU_ABI := x86
TARGET_CPU_ABI2 := armeabi-v7a
TARGET_CPU_ABI_LIST := x86,armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_32_BIT := x86,armeabi-v7a,armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := x86

INTEL_INGREDIENTS_VERSIONS := true
LOCAL_CFLAGS += -DARCH_IA32
TARGET_PRELINK_MODULE := false

#add some intel BOOTCLASSPATH
#PRODUCT_BOOT_JARS += com.intel.multidisplay 
#com.intel.config 

# skip some proccess to speed up build
BOARD_SKIP_ANDROID_DOC_BUILD := true
BUILD_EMULATOR := false

# enable ARM codegen for x86 with Houdini
BUILD_ARM_FOR_X86 := true

# Atom optimizations to improve memory benchmarks.
-include device/asus/a500cg/OptAtom.mk

TARGET_RECOVERY_FSTAB := device/asus/a500cg/recovery.fstab

TARGET_BOARD_PLATFORM := clovertrail
TARGET_BOOTLOADER_BOARD_NAME := clovertrail
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1363148800
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"

# Use dlmalloc
MALLOC_IMPL := dlmalloc

# Malloc Alignment
BOARD_MALLOC_ALIGNMENT := 16

# Appends path to ARM libs for Houdini
PRODUCT_LIBRARY_PATH := $(PRODUCT_LIBRARY_PATH):/system/lib/arm

# Inline kernel building
TARGET_KERNEL_BUILT_FROM_SOURCE := true
TARGET_KERNEL_SOURCE := linux/kernel
TARGET_KERNEL_CONFIG := cm_a500cg_defconfig
TARGET_KERNEL_ARCH := x86
KERNEL_ARCH := i386
BOARD_KERNEL_IMAGE_NAME := bzImage
TARGET_KERNEL_CROSS_COMPILE_PREFIX := x86_64-linux-android-
KERNEL_EXTRA_FLAGS := ANDROID_TOOLCHAIN_FLAGS=-mno-android
KERNEL_SOC := ctp
KERNEL_BLD_FLAGS := \
    ARCH=$(KERNEL_ARCH) \
    INSTALL_MOD_PATH=../modules_install \
    INSTALL_MOD_STRIP=1 \
    LOCALVERSION=-$(KERNEL_ARCH)_$(KERNEL_SOC) \
    $(KERNEL_EXTRA_FLAGS)
    
# PRODUCT_OUT and HOST_OUT are now defined after BoardConfig is included.
# Add early definition here
PRODUCT_OUT ?= out/target/product/$(TARGET_DEVICE)
HOST_OUT ?= out/host/$(HOST_OS)-$(HOST_PREBUILT_ARCH)



# Kernel Build from source inline
# TARGET_KERNEL_CONFIG := a500cg_defconfig
# TARGET_KERNEL_SOURCE := kernel/asus/a500cg
# TARGET_KERNEL_ARCH := x86_64
# BOARD_CUSTOM_BOOTIMG_MK := device/asus/a500cg/intel-boot-tools/boot.mk
# DEVICE_BASE_BOOT_IMAGE := device/asus/a500cg/blobs/boot.img
# BOARD_KERNEL_IMAGE_NAME := bzImage
# TARGET_PREBUILT_KERNEL := out/target/product/a500cg/obj/KERNEL_OBJ/arch/x86/boot/bzImage
# DEVICE_BASE_RECOVERY_IMAGE := device/asus/a500cg/blobs/recovery-WW-3.23.40.52.img

# prebuild source kernel
BOARD_CUSTOM_BOOTIMG_MK := device/asus/a500cg/intel-boot-tools/boot.mk
BOARD_CUSTOM_MKBOOTIMG := device/asus/a500cg/intel-boot-tools/boot.mk
TARGET_PREBUILT_KERNEL := device/asus/a500cg/blobs/bzImage-boot-newDTW
DEVICE_BASE_BOOT_IMAGE := device/asus/a500cg/blobs/boot_60.img
DEVICE_BASE_RECOVERY_IMAGE := device/asus/a500cg/blobs/recovery_60.img

# Kernel config (reference only)
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
cmdline_extra := watchdog.watchdog_thresh=60 androidboot.spid=xxxx:xxxx:xxxx:xxxx:xxxx:xxxx androidboot.serialno=01234567890123456789012345678901
cmdline_extra1 := ip=50.0.0.2:50.0.0.1::255.255.255.0::usb0:on vmalloc=172M androidboot.wakesrc=05 androidboot.mode=main loglevel=8 slub_max_order=2
cmdline_extra2 := loglevel=8 kmemleak=off androidboot.bootmedia=sdcard androidboot.hardware=redhookbay androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE := init=/init pci=noearly console=logk0 earlyprintk=nologger  $(cmdline_extra)  $(cmdline_extra1)  $(cmdline_extra2) 

# Enable dex-preoptimization to speed up first boot sequence
ifeq ($(TARGET_BUILD_VARIANT),user)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
    endif
endif

# Wifi
BOARD_HAVE_WIFI := true
BOARD_WLAN_DEVICE := bcmdhd
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcm43362/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_AP    := "/system/etc/firmware/fw_bcmdhd_43362_apsta.bin"
WIFI_DRIVER_FW_PATH_STA   := "/system/etc/firmware/fw_bcmdhd_43362.bin"
WIFI_DRIVER_MODULE_ARG := "iface_name=wlan0 firmware_path=/system/etc/firmware/fw_bcmdhd_43362.bin"

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BLUEDROID_ENABLE_V4L2 := true

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.zygote=zygote32

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.config.low_ram=false \
    ro.ril.status.polling.enable=0 \
    ro.product.cpu.abi2=armeabi-v7a \
    ro.config.personality=compat_layout

# NFC
BOARD_HAVE_NFC := false

#BINDER
TARGET_USES_64_BIT_BINDER := true

# Audio
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true
BOARD_USES_TINY_ALSA_AUDIO := true
BOARD_USES_AUDIO_HAL_XML := true
BOARD_USES_AUDIO_HAL_CONFIGURABLE := true

# DRM Protected Video
BOARD_WIDEVINE_OEMCRYPTO_LEVEL := 1
USE_INTEL_SECURE_AVC := true


# enable ARM codegen for x86 with Houdini
BUILD_ARM_FOR_X86 := true

# HW_Renderer
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/asus/a500cg/configs/egl.cfg
BOARD_ALLOW_EGL_HIBERNATION := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
COMMON_GLOBAL_CFLAGS += -DFORCE_SCREENSHOT_CPU_PATH
BOARD_EGL_WORKAROUND_BUG_10194508 := true
# DPST
INTEL_DPST := true

# HWComposer
BOARD_USES_HWCOMPOSER := true

# RILD
RIL_SUPPORTS_SEEK := true

# GPS
BOARD_HAVE_GPS := true
GPS_CHIP_VENDOR := bcm
GPS_CHIP := 4752
include device/intel/common/gps/GpsBoardConfig.mk

# RMT_STORAGE
BOARD_USES_LEGACY_MMAP := true

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.sf.lcd_density=320 \
    ro.opengles.version = 131072 \
    gsm.net.interface=rmnet0 \
    persist.system.at-proxy.mode=0 \
    ro.dalvik.vm.native.bridge=libhoudini.so \
    dalvik.vm.dex2oat-Xms=64m \
    dalvik.vm.dex2oat-Xmx=512m \
    dalvik.vm.image-dex2oat-Xms=64m \
    dalvik.vm.image-dex2oat-Xmx=64m


# File system
# Storage information
BOARD_HAS_LARGE_FILESYSTEM := true

# Recovery global
#TARGET_RECOVERY_INITRC := device/asus/a500cg/ramdisk/recovery.init.redhookbay.rc
BOARD_RECOVERY_SWIPE := true
BOARD_UMS_LUNFILE := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun/file"
#TARGET_RECOVERY_PREBUILT_KERNEL := $(PRODUCT_OUT)/kernel
# TWR
# Recovery options TWRP
DEVICE_RESOLUTION := 720x1280
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_L_CRYPTO := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
TARGET_RECOVERY_SCREEN_WIDTH := 720
TARGET_RECOVERY_SCREEN_HEIGHT := 1280
BOARD_HAS_NO_SELECT_BUTTON := true
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "/emmc"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "/external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_EXCLUDE_SUPERSU := false
BOARD_UMS_LUNFILE := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun/file"
BOARD_SUPPRESS_EMMC_WIPE := true



# SELinux
HAVE_SELINUX := true
BOARD_SEPOLICY_DIRS += device/asus/a500cg/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts \
    seapp_contexts \
    property_contexts \
    service_contexts \
    file.te \
    device.te \
    ecryptfs.te \
    genfs_contexts \
    vold.te \
    surfaceflinger.te \
    zygote.te \
    pvrsrvctl.te \
    bluetooth.te \
    surfaceflinger.te \
    system_app.te \
    file.te \
    shell.te \
    mediaserver.te \
    nvm_server.te \
    su.te   \
    system_server.te \
    service.te \
    mmgr.te \
    init.te \
    kernel.te \
    sysfs_uart_power_ctrl.te \
    ueventd.te \
    logcat.te \
    netd.te \
    wpa.te \
    rild.te \
    akmd.te \
    gauge.te \
    customize.te \
    untrusted_app.te \
    intel_prop.te \
    gpsd.te \
    dpst.te \
    pclink.te \
    sensors.te

# Build From source
ENABLE_IMG_GRAPHICS := true
#ENABLE_GEN_GRAPHICS := true
USE_INTEL_MDP := true
BUILD_WITH_FULL_STAGEFRIGHT := true
BOARD_USES_WRS_OMXIL_CORE := true
BOARD_USE_LIBVA_INTEL_DRIVER := true
BOARD_USE_LIBVA := true
BOARD_USE_LIBMIX := true
USE_INTEL_VA := true
INTEL_VA := true
TARGET_HAS_ISV := true
USE_HW_VP8 := true
#TARGET_HAS_MULTIPLE_DISPLAY := true
#USE_AVC_SHORT_FORMAT := true
USE_SLICE_HEADER_PARSING := true
USE_SW_MPEG4 := true

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

BLOCK_BASED_OTA := false
BOARD_CUSTOM_MAKE_RECOVERY_PATCH := vendor/intel/hardware/libintelprov/make_recovery_patch
TARGET_RELEASETOOLS_EXTENSIONS := device/asus/a500cg/releasetools
TARGET_RELEASETOOL_MAKE_RECOVERY_PATCH_SCRIPT := device/asus/a500cg/releasetools/make_recovery_patch
#TARGET_RELEASETOOLS_EXTENSIONS := vendor/intel/hardware/libintelprov
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/asus/a500cg/releasetools/ota_from_target_files
TARGET_RECOVERY_UPDATER_LIBS := libintel_updater
TARGET_OTA_ASSERT_DEVICE := a500cg,a501cg,cm_a500cg,cm_a501cg,ASUS_T00F,ASUS_T00J,a600cg,cm_a600cg,ASUS_T00G

TARGET_RECOVERY_UPDATER_EXTRA_LIBS += \
#    libcgpt_static \
    liboempartitioning_static \
PRODUCT_LIBRARY_PATH := $(PRODUCT_LIBRARY_PATH):/system/lib/egl:/system/vendor/lib/egl
#RECOVERY_VARIANT := twrp
#TARGET_PROVIDES_INIT_RC := true
USE_OSIP := true
REF_DEVICE_NAME := redhookbay

# Init
TARGET_IGNORE_RO_BOOT_SERIALNO := true
# Hardware
BOARD_HARDWARE_CLASS := device/asus/a500cg/cmhw
#BOARD_PROVIDES_INIT := true
ENABLE_SENSOR_HUB := true
#ENABLE_SCALABLE_SENSOR_HAL := false
ENABLE_SCALABLE_SENSOR_HAL := true
BOARD_FUNCTIONFS_HAS_SS_COUNT := true
# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true


# Define platform battery healthd library
BOARD_HAL_STATIC_LIBRARIES += libhealthd.intel

# Rild
# Radio
BOARD_RIL_SUPPORTS_MULTIPLE_CLIENTS := true
BOARD_RIL_CLASS := ../../../device/asus/T00F/ril
SIM_COUNT := 2
# Use Intel camera extras (HDR, face detection, panorama, etc.) by default
USE_INTEL_CAMERA_EXTRAS := true

# select libcamera2 as the camera HAL
USE_CAMERA_HAL2 := true
USE_CSS_1_5 := true
USE_CSS_2_0 := true
USE_CSS_2_1 := true
USE_INTEL_METABUFFER := true
USE_INTEL_JPEG := true
USE_CAMERA_IO_BREAKDOWN := true


# disable the new V3 HAL by default so it can be added to the tree without conflicts
# it will be enabled in selected platforms
USE_CAMERA_HAL_3 := false

# Set USE_VIDEO_EFFECT to 'false' to unsupport live face effect. And Set OMX Component Input Buffer Count to 2.
USE_VIDEO_EFFECT := true

# Do not use shared object of ia_face by default
USE_SHARED_IA_FACE := false

# Use multi-thread for acceleration
USE_INTEL_MULT_THREAD := true

# Use Async OMX for http streaming
USE_ASYNC_OMX_CLIENT := true

# Use panorama v1.0 by default
IA_PANORAMA_VERSION := 1.0

# Turn on GR_STATIC_RECT_VB flag in skia to boost performance
TARGET_USE_GR_STATIC_RECT_VB := true

ifeq ($(TARGET_RIL_DISABLE_STATUS_POLLING),true)
ADDITIONAL_BUILD_PROPERTIES += ro.ril.status.polling.enable=0
endif

# Libm
#TARGET_USE_PRIVATE_LIBM := true

#TARGET_HAS_MULTIPLE_DISPLAY := true
USE_MDS_LEGACY := true
BOARD_CAMERA_PLUGIN := vendor/intel/hardware/camera_extension
#include $(COMMON_PATH)/BoardConfig.mk
#BOARD_USES_CYANOGEN_HARDWARE := true

# HWcomposer
INTEL_HWC := true
INTEL_WIDI := false
TARGET_SUPPORT_HWC_SYS_LAYER := true
TARGET_HAS_MULTIPLE_DISPLAY := true

INTEL_FEATURE_AWARESERVICE := true
#PRODUCT_BOOT_JARS += com.intel.aware.awareservice

# System's VSYNC phase offsets in nanoseconds
VSYNC_EVENT_PHASE_OFFSET_NS := 7500000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000

# Allow HWC to perform a final CSC on virtual displays
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
INTEL_WIDI := true
HWUI_IMG_FBO_CACHE_OPTIM := true
TARGET_INTEL_HWCOMPOSER_FORCE_ONLY_ONE_RGB_LAYER := true
BOARD_USE_VIBRATOR := true
#BOARD_USES_VIBRATOR_HAL_XML := true

#USE_GENERAL_SENSOR_DRIVER := true
# Lights
TARGET_PROVIDES_LIBLIGHT := true

BOARD_HAVE_AUDIENCE := true

#Rapid-ril
M2_VT_FEATURE_ENABLED := true
M2_CALL_FAILED_CAUSE_FEATURE_ENABLED := true
#M2_PIN_RETRIES_FEATURE_ENABLED := true
BOARD_HAVE_IFX6265 := true
M2_GET_SIM_SMS_STORAGE_ENABLED := true



