USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/huawei/u9200/BoardConfigVendor.mk

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := omap4
TARGET_BOOTLOADER_BOARD_NAME := blaze

BOARD_EGL_CFG := device/huawei/u9200/egl.cfg

# Define kernel config for inline building
TARGET_KERNEL_CONFIG := cyanogenmod_u9200_defconfig
TARGET_KERNEL_SOURCE := kernel/huawei/u9200

BOARD_KERNEL_CMDLINE := console=ttyO0,115200n8 mem=1G vmalloc=768M omap_wdt.timer_margin=30 mmcparts=mmcblk0:p15(splash) androidboot.hardware=u9200
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
TARGET_USERIMAGES_USE_EXT4 := true
#BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2738880512
BOARD_FLASH_BLOCK_SIZE := 4096

BOARD_HAS_NO_SELECT_BUTTON := true
