$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/htc/imnj/dlx-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/imnj/overlay

LOCAL_PATH := device/htc/imnj
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/boot.img-kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    device/htc/imnj/recovery/sbin/choice_fn:recovery/root/sbin/choice_fn \
    device/htc/imnj/recovery/sbin/detect_key:recovery/root/sbin/detect_key \
    device/htc/imnj/recovery/sbin/offmode_charging:recovery/root/sbin/offmode_charging

PRODUCT_COPY_FILES += \
    device/htc/imnj/ramdisk/ueventd.target.rc:recovery/root/ueventd.target.rc \
    device/htc/imnj/ramdisk/ueventd.rc:recovery/root/ueventd.rc

#$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := HTX21
PRODUCT_BRAND := HTC
