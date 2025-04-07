# Copyright CredenceID
#
DESCRIPTION = "Libunix socket JNI for DBUS communication" 
LICENSE = "CLOSED"
inherit pkgconfig 

# JNI library location on target
libdir_jni ?= "${libdir}/jni"

S = "${WORKDIR}"
FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

# Package unversioned libraries
SOLIBS = ".so"
FILES_SOLIBSDEV = ""

INSANE_SKIP:${PN} += "already-stripped"

SRC_URI = "file://libunix-java.so"

do_install() {
    install -d ${D}/usr/lib
    install -m 0755 ${WORKDIR}/libunix-java.so ${D}/usr/lib
}

# Ignore QA Issue: non -dev/-dbg/nativesdk- package
#INSANE_SKIP:${PN} = "arch"
#INSANE_SKIP:${PN}-dbg = "arch"
#INSANE_SKIP:${PN}:append = " dev-so"

#FILES_${PN} = "${D}/usr/lib/libunix-java.so"

