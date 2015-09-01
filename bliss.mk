# Release name
PRODUCT_RELEASE_NAME := SM-T530

# Inherit some common Bliss stuff.
$(call inherit-product, vendor/bliss/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/matissewifi/device_matissewifi.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := matissewifi
PRODUCT_NAME := bliss_matissewifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T530
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
##PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=matissewifixx TARGET_DEVICE=matissewifi BUILD_FINGERPRINT="samsung/matissewifixx/matissewifi:5.0.2/LRX22G/T530XXU1BOD8:user/release-keys" PRIVATE_BUILD_DESC="m0xx-user 4.1.1 JRO03C I9300XXDLIB release-keys"


