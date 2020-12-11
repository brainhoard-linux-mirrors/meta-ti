PV_k3 = "2.4"
LIC_FILES_CHKSUM_k3 = "file://license.rst;md5=1dd070c98a281d18d9eefd938729b031"
BRANCH_k3 = "ti-atf"
SRC_URI_k3 = "git://git.ti.com/atf/arm-trusted-firmware.git;branch=${BRANCH};name=tfa"
SRCREV_tfa_k3 = "f0a310d000fd6e8a1ed0ccc365b5931390393db1"
COMPATIBLE_MACHINE_k3 = "k3"
TFA_BUILD_TARGET_k3 = "all"
TFA_INSTALL_TARGET_k3 = "bl31"
TFA_SPD_k3 = "opteed"

do_compile_append_am65xx-hs-evm() {
	export TI_SECURE_DEV_PKG=${TI_SECURE_DEV_PKG}
	( cd ${BUILD_DIR}; \
		mv bl31.bin bl31.bin.unsigned; \
		${TI_SECURE_DEV_PKG}/scripts/secure-binary-image.sh bl31.bin.unsigned bl31.bin; \
	)
}

do_compile_append_j7-hs-evm() {
	export TI_SECURE_DEV_PKG=${TI_SECURE_DEV_PKG}
	( cd ${BUILD_DIR}; \
		mv bl31.bin bl31.bin.unsigned; \
		${TI_SECURE_DEV_PKG}/scripts/secure-binary-image.sh bl31.bin.unsigned bl31.bin; \
	)
}
