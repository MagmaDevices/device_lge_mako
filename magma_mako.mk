# Inherit some common Magma stuff.
$(call inherit-product, vendor/magma/config/common_full_phone.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/lge/mako/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mako
PRODUCT_NAME := magma_mako
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=occam \
    PRIVATE_BUILD_DESC="occam-user 5.1.1 LMY48T 2237560 release-keys"
	
# Apps
PRODUCT_PACKAGES += \
    messaging

BUILD_FINGERPRINT := google/occam/mako:5.1.1/LMY48T/2237560:user/release-keys
