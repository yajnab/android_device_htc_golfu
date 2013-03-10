## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := golfu

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/golfu/device_golfu.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := golfu
PRODUCT_NAME := cm_golfu
PRODUCT_BRAND := htc
PRODUCT_MODEL := golfu
PRODUCT_MANUFACTURER := htc
