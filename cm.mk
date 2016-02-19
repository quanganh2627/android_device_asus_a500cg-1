## Specify phone tech before including full_phone
#$(call inherit-product, vendor/aicp/configs/gsm.mk)
DEVICE_RESOLUTION := 720x1280
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Release name
PRODUCT_RELEASE_NAME := a500cg
MAKE_CHANGELOG := true

# Inherit some common CM stuff.
#$(call inherit-product, vendor/aicp/configs/common_mini_phone.mk)
$(call inherit-product, vendor/aicp/configs/common.mk)

# telephony
#$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)
# Get the long list of APNs
#PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml
#PRODUCT_COPY_FILES := device/asus/a500cg/configs/apns-conf.xml:system/etc/apns-conf.xml

# Inherit device configsuration change remove aosp full
$(call inherit-product, device/asus/a500cg/full_a500cg.mk)
# Vendor blob files
#$(call inherit-product-if-exists, vendor/asus/a500cg/a500cg-vendor.mk)
# Gapps
#$(call inherit-product-if-exists, vendor/google/gapps/gapps.mk)


# Inherit device
#$(call inherit-product, device/asus/a500cg/device.mk)

## Device identifier. This must come after all inclusions
#PRODUCT_DEVICE := a500cg
#PRODUCT_NAME := aicp_a500cg
#PRODUCT_BRAND := asus
#PRODUCT_MODEL := a500cg
#PRODUCT_MANUFACTURER := asus


#PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BRAND := asus
TARGET_VENDOR := asus
TARGET_VENDOR_PRODUCT_NAME := aicp_a500cg
TARGET_VENDOR_DEVICE_NAME := ASUS_T00F
# update things
PRODUCT_NAME := aicp_a500cg
PRODUCT_DEVICE := a500cg
PRODUCT_MANUFACTURER := asus
PRODUCT_MODEL := ASUS_T00F

