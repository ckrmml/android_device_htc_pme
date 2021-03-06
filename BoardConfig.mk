# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8996
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8996
TARGET_BOARD_PLATFORM_GPU := qcom-adreno530

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 user_debug=31 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 cma=16M@0-0xffffffff androidboot.hardware=htc_pme androidkey.dummy=1 androidboot.selinux=permissive

BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --board recovery:0
TARGET_PREBUILT_KERNEL := device/htc/$(TARGET_DEVICE)/prebuilt/kernel

BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3791650816
BOARD_USERDATAIMAGE_PARTITION_SIZE := 469762048
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_SECURE_ERASE := true

# Keymaster
TARGET_HW_DISK_ENCRYPTION := true

# TWRP Build Flags
TW_THEME := portrait_hdpi
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_CRYPTO := true
TW_CRYPTO_USE_SYSTEM_VOLD := qseecomd hwservicemanager keymaster-3-0
TW_INCLUDE_NTFS_3G := true
#TW_INPUT_BLACKLIST := "hbtp_vm"
TW_NO_EXFAT_FUSE := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_DEVICE_MODULES := chargeled liblog_htc_sbin tzdata # strace twrpdec
TW_RECOVERY_ADDITIONAL_RELINK_FILES := $(OUT)/system/usr/share/zoneinfo/tzdata
#TW_RECOVERY_ADDITIONAL_RELINK_FILES += $(OUT)/system/xbin/strace $(OUT)/recovery/root/sbin/twrpdec

# TWRP Debug Flags
#TARGET_USES_LOGD := true
#TWRP_EVENT_LOGGING := true
#TWRP_INCLUDE_LOGCAT := true

# Vendor Init
BOARD_VENDOR := htc
TARGET_INIT_VENDOR_LIB := libinit_$(TARGET_DEVICE)
TARGET_UNIFIED_DEVICE := true

# Additional sepolicy for hwservicemanager
BOARD_SEPOLICY_DIRS += device/htc/$(TARGET_DEVICE)/sepolicy
