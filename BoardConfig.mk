#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# config.mk
#
# Product-specific compile-time definitions.
#

ALLOW_MISSING_DEPENDENCIES=true

LOCAL_PATH := device/lenovo/YT3850M
DEVICE_PATH := device/lenovo/YT3850M

TARGET_BOARD_KERNEL_HEADERS := $(LOCAL_PATH)/kernel-headers
TARGET_DEVICE_KERNEL_HEADERS := $(LOCAL_PATH)/kernel-headers

# Platform
TARGET_BOARD_PLATFORM := msm8909
TARGET_BOARD_PLATFORM_GPU := qcom-adreno304
#add suffix variable to uniquely identify the board
TARGET_BOARD_SUFFIX := _32

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := MSM8909

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Audio
AUDIO_FEATURE_DEEP_BUFFER_RINGTONE := true
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_LOW_LATENCY_PRIMARY := true
AUDIO_FEATURE_ENABLED_FLAC_OFFLOAD := false
BOARD_USES_ALSA_AUDIO := true
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true
AUDIO_FEATURE_ENABLED_ACDB_LICENSE := true
BOARD_SUPPORTS_SOUND_TRIGGER := true
AUDIO_FEATURE_ENABLED_ANC_HEADSET := true
AUDIO_FEATURE_ENABLED_COMPRESS_CAPTURE := true
AUDIO_FEATURE_ENABLED_SSR := true
BOARD_USES_SRS_TRUEMEDIA := true
AUDIO_FEATURE_ENABLED_PM_SUPPORT := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := false
BLUETOOTH_HCI_USE_MCT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Camera
TARGET_BOARD_CAMERA_HAL_VERSION := HAL1.0
TARGET_USES_QTI_CAMERA_DEVICE := false
TARGET_USES_NON_TREBLE_CAMERA := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Enables CSVT
TARGET_USES_CSVT := true

#Enable HW based full disk encryption
TARGET_HW_DISK_ENCRYPTION := true

# FM
AUDIO_FEATURE_ENABLED_FM := true
TARGET_QCOM_NO_FM_FIRMWARE := true

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# GPS
TARGET_NO_RPC := true
TARGET_GPS_HAL_PATH := $(LOCAL_PATH)/gps

# Graphics
BOARD_EGL_CFG := $(LOCAL_PATH)/egl.cfg
TARGET_USES_OVERLAY := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_HARDWARE_3D := false
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
TARGET_USES_ION := true
TARGET_USES_NEW_ION_API :=true
TARGET_CONTINUOUS_SPLASH_ENABLED := true
TARGET_USES_C2D_COMPOSITION := true
USE_OPENGL_RENDERER := true

# Init
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

#Kernel
BOARD_KERNEL_IMAGE_NAME := zImage
BOARD_KERNEL_CMDLINE := androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk
BOARD_MKBOOTIMG_ARGS := --base 0x80000000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100

TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-linux-androideabi-

HAS_PREBUILT_KERNEL := true
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/zImage


# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Logging
TARGET_USES_LOGD := false

# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_BOOTIMAGE_PARTITION_SIZE := 320000000 # (32M)
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 320000000 # (32M)
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12311837696
BOARD_CACHEIMAGE_PARTITION_SIZE := 33554432
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := f2fs

ifeq ($(HOST_OS),linux)
TARGET_USERIMAGES_USE_F2FS := true
endif


# Power
TARGET_POWERHAL_VARIANT := qcom

# Properties
TARGET_SYSTEM_PROP += device/lenovo/YT3850M/system.prop

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
TARGET_RECOVERY_INITRC := $(LOCAL_PATH)/rootdir/etc/init.rc
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
BOARD_HAS_REMOVABLE_STORAGE := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_QCOM_RTC_FIX := true

BOARD_ROOT_EXTRA_FOLDERS := dsp firmware fsg lenovocust oem persist

# Ril
TARGET_RIL_VARIANT := caf

# Added to indicate that protobuf-c is supported in this build
PROTOBUF_SUPPORTED := true

# SELinux
include device/qcom/sepolicy/sepolicy.mk
 
# Time services
BOARD_USES_QC_TIME_SERVICES := true

#Use dlmalloc instead of jemalloc for mallocs
MALLOC_SVELTE := true

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_VOLD_MAX_PARTITIONS := 65

# Wifi
WIFI_DRIVER_MODULE_PATH := /system/lib/modules/wlan.ko
WIFI_DRIVER_MODULE_NAME:= wlan
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
TARGET_USES_WCNSS_CTRL := true
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X

PRIMA_ROOT := vendor/qcom/opensource/wlan/prima
PRIMA_MODULE:
	$(hide) mkdir -p $(KERNEL_OUT)/$(PRIMA_ROOT)
	$(hide) cp -f $(PRIMA_ROOT)/Kbuild $(KERNEL_OUT)/$(PRIMA_ROOT)/Makefile
	$(hide) cp -rf $(PRIMA_ROOT)/CORE $(KERNEL_OUT)/$(PRIMA_ROOT)/CORE
	$(hide) cp -rf $(PRIMA_ROOT)/riva $(KERNEL_OUT)/$(PRIMA_ROOT)/riva
	$(hide) $(MAKE) $(MAKE_FLAGS) -C $(KERNEL_OUT) M=$(KERNEL_OUT)/$(PRIMA_ROOT) ARCH=$(TARGET_ARCH) $(KERNEL_CROSS_COMPILE) MODNAME=wlan CONFIG_PRONTO_WLAN=m WLAN_ROOT=$(PRIMA_ROOT) modules
	$(hide) arm-eabi-strip --strip-debug $(KERNEL_OUT)/$(PRIMA_ROOT)/wlan.ko
	$(hide) mkdir -p $(KERNEL_MODULES_OUT)/pronto
	$(hide) cp -f $(KERNEL_OUT)/$(PRIMA_ROOT)/wlan.ko $(KERNEL_MODULES_OUT)/pronto/pronto_wlan.ko
	$(hide) if [ -L $(KERNEL_MODULES_OUT)/wlan.ko ]; then rm $(KERNEL_MODULES_OUT)/wlan.ko; fi
	$(hide) ln -s /system/lib/modules/pronto/pronto_wlan.ko  $(KERNEL_MODULES_OUT)/wlan.ko
TARGET_KERNEL_MODULES += PRIMA_MODULE



# Hardware flags

BOARD_HAVE_QCOM_FM := true

# Hack for building without kernel sources
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)
