# Release name
PRODUCT_RELEASE_NAME := imnj

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/imnj/device_imnj.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := imnj
PRODUCT_NAME := cm_imnj
PRODUCT_BRAND := htc
PRODUCT_MODEL := imnj
PRODUCT_MANUFACTURER := htc
