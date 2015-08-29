# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from msm8226-common
-include device/samsung/msm8226-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := matissewifi

# Board
TARGET_BOARD_INFO_FILE := device/samsung/matissewifi/board-info.txt

LOCAL_PATH := device/samsung/matissewifi

# Enable dex-preoptimization to speed up first boot sequence
ifeq ($(HOST_OS),linux)
  ifeq ($(WITH_DEXPREOPT),)
    WITH_DEXPREOPT := true
  endif
endif

# ART
ART_USE_HSPACE_COMPACT := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Init
TARGET_LIBINIT_DEFINES_FILE := $(LOCAL_PATH)/init/init_matissewifi.c
TARGET_UNIFIED_DEVICE := true

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=null androidboot.console=null androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x37 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --dt recovery/dt.img --ramdisk_offset 0x02000000 --tags_offset 0x1e00000
BOARD_KERNEL_SEPARATED_DT := true
TARGET_KERNEL_SOURCE := kernel/samsung/s3ve3g
TARGET_KERNEL_CONFIG := linux_matissewifi_defconfig
#TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/recovery/kernel

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A7DEA0
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2097152000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12562627584
TARGET_USERIMAGES_USE_F2FS := true

# Ant
# or qualcomm-uart ?
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-smd"

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/recovery.fstab

#TWRP
#RECOVERY_VARIANT := twrp

TW_CUSTOM_THEME := $(LOCAL_PATH)/recovery/rework

TW_THEME := portrait_hdpi
TW_THEME_LANDSCAPE := landscape_hdpi
BOARD_SUPPRESS_SECURE_ERASE := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TW_HAS_DOWNLOAD_MODE := true
TW_NEW_ION_HEAP := true
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/matissewifi

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
TARGET_TC_KERNEL := 4.9-sm
TARGET_GCC_VERSION_EXP := $(TARGET_TC_ROM)
TARGET_KERNEL_CUSTOM_TOOLCHAIN := $(TARGET_TC_KERNEL)
WITH_LZMA_OTA := true

#SaberMod
-include vendor/bliss/config/sm.mk
