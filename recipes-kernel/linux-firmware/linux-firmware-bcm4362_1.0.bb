SUMMARY = "Broadcom BCM43622A2 Firmware"
DESCRIPTION = "Firmware file for the Broadcom BCM43622A2 WiFi/BT chipset"
LICENSE = "Proprietary"

SRCBRANCH = "mickledore"
SRC_URI = "git://github.com/CredenceID/credenceid-yocto.git;protocol=https;branch=${SRCBRANCH};name=credenceid;destsuffix=credenceid"
SRCREV = "fd8482de7265289220e1133cc5e625e34e0fa052"

S = "${WORKDIR}"

do_install() {
    install -d ${D}${nonarch_base_libdir}/firmware/brcm
    install -m 0644 ${WORKDIR}/credenceid/linux-firmware/bluetooth/BCM4362A2_001.003.006.1132.1255.hcd ${D}${nonarch_base_libdir}/firmware/brcm
}
PACKAGES = "${PN}-bcm4362"

PACKAGES += "${PN}-bcm4362"
FILES:${PN}-bcm4362 = "${nonarch_base_libdir}/firmware/brcm/BCM4362A2_001.003.006.1132.1255.hcd"
#IMAGE_INSTALL += "${nonarch_base_libdir}/firmware/brcm/BCM4362A2_001.003.006.1132.1255.hcd"
