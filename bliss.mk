#Bliss Audio Mod
BLISS_AUDIO_MOD := viper

$(call inherit-product, vendor/bliss/config/common_full_tablet_wifionly.mk)

$(call inherit-product, device/samsung/matissewifi/full_matissewifi.mk)

PRODUCT_RELEASE_NAME := SM-T530
PRODUCT_NAME := bliss_matissewifi

