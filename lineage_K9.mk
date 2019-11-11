# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from K9 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := lenovo
PRODUCT_DEVICE := K9
PRODUCT_MANUFACTURER := lenovo
PRODUCT_NAME := lineage_K9
PRODUCT_MODEL := Lenovo L38043

PRODUCT_GMS_CLIENTID_BASE := android-lenovo
TARGET_VENDOR := lenovo
TARGET_VENDOR_PRODUCT_NAME := K9
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="full_lava6762_l01-user 8.1.0 O11019 1551702904 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Lenovo/L38043/K9:8.1.0/O11019/1551702904:user/release-keys
