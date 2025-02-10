# Copyright 2025 CredenceID
#

inherit bin_package allarch
FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

#SRC_URI += " \
#    file://fw_bcm43752a2_ag.bin \
#    file://clm_bcm43752a2_ag.blob \
#    file://nvram_ap6275s.txt \
#    file://BCM4362A2_001.003.006.1132.1255.hcd \
#"
#
#
#do_install:append () {
#    install -d ${D}${nonarch_base_libdir}/firmware/brcm
#    install -m 0644 ${WORKDIR}/BCM4362A2_001.003.006.1132.1255.hcd ${D}${nonarch_base_libdir}/firmware/brcm
#
#    install -d ${D}${nonarch_base_libdir}/firmware
#    install -m 0644 ${WORKDIR}/clm_bcm43752a2_ag.blob ${D}${nonarch_base_libdir}/firmware/clm_bcm43752a2_ag.blob
#    install -m 0644 ${WORKDIR}/nvram_ap6275s.txt ${D}${nonarch_base_libdir}/firmware/nvram_ap6275s.txt
#    install -m 0644 ${WORKDIR}/nvram_ap6275s.txt ${D}${nonarch_base_libdir}/firmware/fw_bcm43752a2_ag.bin
#}
#
#FILES:${PN}-static += " \
#    ${nonarch_base_libdir}/firmware/fw_bcm43752a2_ag.bin \
#    ${nonarch_base_libdir}/firmware/nvram_ap6275s.txt \
#    ${nonarch_base_libdir}/firmware/clm_bcm43752a2_ag.blob \
#"

#FILES:${PN}-bcm4362 = "${nonarch_base_libdir}/firmware/brcm/BCM4362A2_001.003.006.1132.1255.hcd"
#IMAGE_INSTALL += "${nonarch_base_libdir}/firmware/brcm/BCM4362A2_001.003.006.1132.1255.hcd"
