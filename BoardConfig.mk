USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/htc/golfu/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := golfu

BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=null
BOARD_KERNEL_BASE := 0x13000000
BOARD_PAGE_SIZE := 0x00000800

# fix this up by examining /proc/mtd on a running device
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 4194304
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8909824
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 836763136
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1023409664
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/htc/golfu/kernel

#TARGET_KERNEL_SOURCE := kernel/htc/golfu
#TARGET_KERNEL_CONFIG := golfu_defconfig

# This is needed so CWM will function properly

BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USES_MMCUTILS := false
BOARD_HAS_NO_MISC_PARTITION := false


# Actual UMS different from TWRP for some reason

BOARD_UMS_LUNFILE := /sys/class/android_usb/f_mass_storage/lun0/file
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

#Lun File testing

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_otg/msm_hsusb/gadget/lun0/file

# Script

TARGET_RECOVERY_INITRC := device/htc/golfu/recovery/init-twrp.rc

#TWRP
DEVICE_RESOLUTION := 320x480
TW_INTERNAL_STORAGE_PATH := "/emmc"
TW_INTERNAL_STORAGE_MOUNT_POINT := "emmc"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_DEFAULT_EXTERNAL_STORAGE := true 
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
# TW_NO_REBOOT_BOOTLOADER := true
TW_BRIGHTNESS_PATH := /sys/devices/platform/msm_fb.590849/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_USE_CUSTOM_RECOVERY_FONT:= \"font_7x16.h\"
