FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

KERNEL_DEVICETREE = "freescale/imx8mm-c2.dtb"
UBOOT_CONFIG = "c2_2g"
UBOOT_CONFIG[c2_2g] = "c2-imx8mm_2g_defconfig,sdcard"

IMAGE_BOOT_FILES:append: = " flash.bin-${MACHINE}-c2_2g;u-boot.${MACHINE}_c2_2g"


SRC_URI += " \
    file://0001-cidreader-uboot-single-commit.patch \
"

PATCHTOOL="git"
SRC_URI += "file://0002-update-Tap2ID-Logo.patch"

