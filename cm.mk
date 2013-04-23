## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := Ascend-P1

# Boot animation
TARGET_SCREEN_HEIGHT := 950
TARGET_SCREEN_WIDTH := 540


# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/u9200/full_u9200.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := u9200
PRODUCT_NAME := cm_u9200
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := Ascend P1
PRODUCT_MANUFACTURER := Huawei
