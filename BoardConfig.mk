# This variable is set first, so it can be overridden by BoardConfigVendor.mk
USE_CAMERA_STUB := true

# Inherit from msm8226-common
#-include device/samsung/qcom-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := matissewifi

BOARD_VENDOR := samsung

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := MSM8226

# Platform
TARGET_BOARD_PLATFORM := msm8226

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := krait
ARCH_ARM_HAVE_TLS_REGISTER := true

# Architecture
TARGET_CPU_MEMCPY_BASE_OPT_DISABLE := true
TARGET_CPU_VARIANT := krait

# Board
TARGET_BOARD_INFO_FILE := device/samsung/matissewifi/board-info.txt

LOCAL_PATH := device/samsung/matissewifi

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Graphics
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true

# Healthd
BOARD_HAL_STATIC_LIBRARIES := libhealthd.qcom

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true

# Init
#TARGET_INIT_VENDOR_LIB := libinit_msm
#TARGET_LIBINIT_DEFINES_FILE := $(LOCAL_PATH)/init/init_matissewifi.c
#TARGET_UNIFIED_DEVICE := true

#TARGET_PROVIDES_INIT := true
#TARGET_PROVIDES_INIT_TARGET_RC := true
#TARGET_RECOVERY_INITRC := device/samsung/matissewifi/recovery/recovery.rc

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=null androidboot.console=null androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x37 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x1e00000
BOARD_KERNEL_SEPARATED_DT := true
TARGET_KERNEL_SOURCE := kernel/samsung/s3ve3g
TARGET_KERNEL_CONFIG := twrp-matissewifi_defconfig
#TARGET_KERNEL_CONFIG := msm8226-sec_defconfig
#TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig
#TARGET_KERNEL_VARIANT_CONFIG := msm8226-sec_matissewifi_defconfig

#TARGET_PREBUILT_KERNEL := device/samsung/matissewifi/kernel
#BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg-pb.mk

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A7DEA0
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2097152000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12562627584
TARGET_USERIMAGES_USE_F2FS := true
BOARD_USES_MMCUTILS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true

# Charging mode
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_BATTERY_DEVICE_NAME := "battery"
BOARD_CHARGING_CMDLINE_NAME := "androidboot.mode"
BOARD_CHARGING_CMDLINE_VALUE := "charger"
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Vold 
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
BOARD_UMS_LUNFILE 				:= /sys/devices/platform/msm_hsusb/gadget/lun0/file

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/recovery.fstab

#TWRP
RECOVERY_VARIANT := twrp

TW_CUSTOM_THEME := $(LOCAL_PATH)/recovery/rework

TWRP_NEW_THEME := true
#TW_THEME := 1080x1920hq
#DEVICE_RESOLUTION := 1280x800
#TW_THEME := portrait_hdpi
#TW_THEME_LANDSCAPE := landscape_hdpi
BOARD_SUPPRESS_SECURE_ERASE := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TW_HAS_DOWNLOAD_MODE := true
TW_NO_REBOOT_BOOTLOADER := true
#TW_NO_REBOOT_RECOVERY := true
TW_NEW_ION_HEAP := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#TW_TARGET_USES_QCOM_BSP := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
TARGET_RECOVERY_DEVICE_DIRS += device/samsung/matissewifi

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/matissewifi

MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := device/samsung/matissewifi/multirom/mr_init_devices.c
MR_DPI := hdpi
MR_DPI_MUL := 1
MR_DPI_FONT := 160
MR_FSTAB := device/samsung/matissewifi/recovery.fstab
MR_KEXEC_MEM_MIN := 0x06200000
MR_DEVICE_VARIANTS := matissewifi matissewifiue matisse3g 
MR_KEXEC_DTB := true
MR_PIXEL_FORMAT := "RGBX_8888"
MR_USE_QCOM_OVERLAY := true
MR_QCOM_OVERLAY_HEADER := device/samsung/matissewifi/multirom/mr_qcom_overlay.h
MR_QCOM_OVERLAY_CUSTOM_PIXEL_FORMAT := MDP_RGBX_8888
MR_CONTINUOUS_FB_UPDATE := true
MR_DEVICE_HOOKS := device/samsung/matissewifi/multirom/mr_hooks.c
MR_DEVICE_HOOKS_VER := 3

# Block_Build
Bliss_Build_Block := 1

# BlissPop Configs
BLISS_WIPE_CACHES := 0
BLISSIFY := true
BLISS_O3 := true
BLISS_GRAPHITE := true
BLISS_STRICT := true
BLISS_KRAIT := true
BLISS_PIPE := true
TARGET_TC_ROM := 5.1-linaro
TARGET_TC_KERNEL := 5.1-sm
TARGET_GCC_VERSION_EXP := $(TARGET_TC_ROM)
TARGET_KERNEL_CUSTOM_TOOLCHAIN := $(TARGET_TC_KERNEL)
WITH_LZMA_OTA := true

#SaberMod
-include vendor/bliss/config/sm.mk
