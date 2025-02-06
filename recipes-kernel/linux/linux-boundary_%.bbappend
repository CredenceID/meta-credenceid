FILESEXTRAPATHS:prepend := "${THISDIR}/files:"


SRC_URI += " \
    file://0001-Add-Tap2ID-Panel.patch \
    file://0002-Add-pn7160-nfc-driver.patch \
    file://0003-Add-bcmdhd-driver.patch \
"

do_configure:append() {
    echo "Applying patches from meta-credenceid"
}

