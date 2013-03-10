$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/htc/golfu/golfu-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/golfu/overlay

LOCAL_PATH := device/htc/golfu
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    device/htc/golfu/recovery/sbin/choice_fn:recovery/root/sbin/choice_fn \
    device/htc/golfu/recovery/sbin/detect_key:recovery/root/sbin/detect_key \
    device/htc/golfu/recovery/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    device/htc/golfu/recovery/sbin/power_test:recovery/root/sbin/power_test

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_golfu
PRODUCT_DEVICE := golfu
