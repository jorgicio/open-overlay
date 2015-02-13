# Copyright open-overlay 2015 by Alex

EAPI=5

inherit eutils

MY_PN=VBoxGuestAdditions
MY_P=${MY_PN}_${PV}

DESCRIPTION="CD image containing guest additions for VirtualBox"
HOMEPAGE="http://www.virtualbox.org/"
SRC_URI="http://download.virtualbox.org/virtualbox/${PV}/${MY_P}.iso"

LICENSE="GPL-2+ LGPL-2.1+ MIT SGI-B-2.0 CDDL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT="mirror"

RDEPEND="!app-emulation/virtualbox-bin
	!=app-emulation/virtualbox-9999"

S="${WORKDIR}"

src_unpack() {
	return 0
}

src_install() {
	insinto /usr/share/${PN/-additions}
	newins "${DISTDIR}"/${MY_P}.iso ${MY_PN}.iso
}