# Ramdisk
#PRODUCT_COPY_FILES += \
#    device/samsung/matisse/init.qcom.usb.rc:root/init.qcom.usb.rc \

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0

# Charger images
PRODUCT_PACKAGES += \
    charger_res_images

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    device/samsung/matissewifi/recovery/twrp.fstab:recovery/root/etc/twrp.fstab
