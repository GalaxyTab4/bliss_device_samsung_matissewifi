# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from matissewifi device
$(call inherit-product, device/samsung/matissewifi/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := matissewifi
PRODUCT_NAME := full_matissewifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T530
PRODUCT_MANUFACTURER := samsung

