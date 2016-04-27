# Inherit 64-bit configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit some common DU stuff.
$(call inherit-product, vendor/du/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/du/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/motorola/clark/aosp_clark.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/clark/overlay

## Device identifier. This must come after all inclusions
PRODUCT_NAME := du_clark
PRODUCT_BRAND := Android
PRODUCT_MODEL := XT1575
PRODUCT_GMS_CLIENTID_BASE := android-motorola
